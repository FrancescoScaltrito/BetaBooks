package com.betacom.betabooks.services.implementations;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.OrdineReq;
import com.betacom.betabooks.dto.outputs.CarrelloDTO;
import com.betacom.betabooks.dto.outputs.CarrelloItemDTO;
import com.betacom.betabooks.dto.outputs.OrdineDTO;
import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.models.Carrello;
import com.betacom.betabooks.models.CarrelloItem;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Indirizzo;
import com.betacom.betabooks.models.Ordine;
import com.betacom.betabooks.models.OrdineItem;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.ICarrelloRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.IIndirizzoRepository;
import com.betacom.betabooks.repositories.IOrdineRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;
import com.betacom.betabooks.services.interfaces.IOrdineServices;
import com.betacom.betabooks.utils.Mapper;

import org.springframework.transaction.annotation.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class OrdineImpl implements IOrdineServices {
	
	private final IOrdineRepository ordineRepo;
    private final ICarrelloServices carrelloService; 
    private final IFormatoLibroRepository formatoRepo;
    private final IUtenteRepository utenteRepo;
    private final IIndirizzoRepository indirizzoRepo;

    //da utilizzare quando il cliente clicca su "Conferma e paga", ovvero quando ha già compilato tutti i campi della pagina di checkout (pagamento e indirizzo)
    @Transactional(rollbackFor = Exception.class)
    public OrdineDTO creaOrdine(Long idUtente, MetodoPagamento metodo, Long idIndirizzo) throws Exception {
    	
    	log.debug("Metodo creaOrdine idUtente {} metodo pagamento {} idIndirizzo {}", idUtente, metodo, idIndirizzo); 
    	
        // recuperiamo il carrello da cui ricavare i dati dell'ordine (con prezzo aggiornato da findByUtente)
        CarrelloDTO carrelloDto = carrelloService.findByUtente(idUtente);
        if (carrelloDto.getItems().isEmpty()) {
        	//carrello vuoto
            throw new Exception("Impossibile creare un ordine con il carrello vuoto");
        }

        // creazione dell'ordine
        Ordine ordine = new Ordine();
        
        Utente utente = utenteRepo.findById(idUtente)
                .orElseThrow(() -> new RuntimeException("Utente non trovato"));
        Indirizzo indirizzo = indirizzoRepo.findById(idIndirizzo)
                .orElseThrow(() -> new RuntimeException("Indirizzo non trovato"));
        
        ordine.setUtente(utente); 
        ordine.setIndirizzo(indirizzo);
        ordine.setMetodoPagamento(metodo);
        ordine.setTotale(carrelloDto.getPrezzoTotaleComplessivo());
        ordine.setStato(StatoOrdine.IN_ATTESA);

        // trasformiamo gli item del carrello in item dell'ordine 
        for (CarrelloItemDTO itemDto : carrelloDto.getItems()) {
        	
        	log.debug("Creazione di un ordineItem");
            
            // controlliamo se ci sono abbastanza copie in magazzino
        	//se disponibilità=1 ci sono abbastanza copie e il db decrementa il numero di copie disponibili per il libro
            int disponibilità = formatoRepo.decrementaSeDisponibile(itemDto.getIdFormatoLibro(), itemDto.getQuantita());
            
            //grazie a @Transactional il decremento diventa definitivo e visibile a tutti gli altri utenti solo quando il metodo creaOrdine arriva all'ultima riga e termina senza errori.
            
            if (disponibilità == 0) {
                // non ci sono abbastanza copie
                throw new Exception("Spiacenti, la disponibilità per '" + itemDto.getTitoloLibro() + "' è terminata.");
            }

            
            OrdineItem ordineItem = new OrdineItem();
            ordineItem.setOrdine(ordine);
            ordineItem.setQuantita(itemDto.getQuantita());
            ordineItem.setPrezzoUnitarioAcquisto(itemDto.getPrezzoUnitario());
            
            FormatoLibro formato = formatoRepo.findById(itemDto.getIdFormatoLibro())
                    .orElseThrow(() -> new RuntimeException("Libro non trovato"));
            ordineItem.setFormatoLibro(formato); 
            ordine.getItems().add(ordineItem);
        }

        // salviamo l'ordine (a cascata salverà anche i relativi OrdineItem)
        Ordine ordineSalvato = ordineRepo.save(ordine);

        // svuotiamo il carrello
        carrelloService.svuotaCarrello(idUtente);

        log.info("Ordine {} creato con successo per l'utente {}", ordineSalvato.getId(), idUtente);
        
        return Mapper.buildOrdineDTO(ordineSalvato); 
    }
    
    @Override
    @Transactional(readOnly = true) 
    public List<OrdineDTO> getOrdiniUtente(Long idUtente) {
        log.debug("Recupero la lista degli ordini per l'utente: {}", idUtente);
        
        List<Ordine> ordini = ordineRepo.findByUtenteIdOrderByDataOrdineDesc(idUtente);
        
        return Mapper.buildOrdineDTO(ordini);
    }
    
    @Override
    @Transactional(readOnly = true) 
    public OrdineDTO getOrdine(Long idOrdine) {
        log.debug("Recupero dell'ordine: {}", idOrdine);
        
        Ordine ordine = ordineRepo.findById(idOrdine)
                .orElseThrow(() -> new RuntimeException("Ordine con ID " + idOrdine + " non trovato"));
        
        return Mapper.buildOrdineDTO(ordine);
    }
    
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void annullaOrdine(Long idOrdine) throws Exception {
        Ordine ordine = ordineRepo.findById(idOrdine)
                .orElseThrow(() -> new Exception("Ordine non trovato"));

        // possiamo annullare solo se non è già stato spedito
        if (ordine.getStato() != StatoOrdine.IN_ATTESA) {
            throw new Exception("Impossibile annullare un ordine già in lavorazione o spedito");
        }

        // restituiamo le copie al magazzino
        for (OrdineItem item : ordine.getItems()) {
            formatoRepo.incrementaDisponibilita(
                item.getFormatoLibro().getId(), 
                item.getQuantita()
            );
        }

        // cambiamo lo stato
        ordine.setStato(StatoOrdine.ANNULLATO);
        ordineRepo.save(ordine);
        
        log.info("Ordine {} annullato", idOrdine);
    }
    
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void aggiornaStatoOrdine(Long idOrdine, StatoOrdine nuovoStato) {
        log.info("Richiesta aggiornamento stato per ordine {}: nuovo stato {}", idOrdine, nuovoStato);

        Ordine ordine = ordineRepo.findById(idOrdine)
                .orElseThrow(() -> new RuntimeException("Ordine non trovato con ID: " + idOrdine));

        if (ordine.getStato() == StatoOrdine.ANNULLATO) {
            throw new RuntimeException("Impossibile modificare lo stato di un ordine già annullato.");
        }

        if (nuovoStato == StatoOrdine.ANNULLATO) {
            try {
                this.annullaOrdine(idOrdine); 
                return; 
            } catch (Exception e) {
                throw new RuntimeException("Errore durante l'annullamento: " + e.getMessage());
            }
        }

        ordine.setStato(nuovoStato);
        ordineRepo.save(ordine);
        
        log.info("Stato ordine {} aggiornato a {}", idOrdine, nuovoStato);
    }
}




