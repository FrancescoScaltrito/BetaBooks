package com.betacom.betabooks.services.implementations;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.dto.outputs.CarrelloDTO;
import com.betacom.betabooks.dto.outputs.CarrelloItemDTO;
import com.betacom.betabooks.models.Carrello;
import com.betacom.betabooks.models.CarrelloItem;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.ICarrelloItemRepository;
import com.betacom.betabooks.repositories.ICarrelloRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;
import com.betacom.betabooks.utils.Mapper;

import org.springframework.transaction.annotation.Transactional;
import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Service
public class CarrelloImpl implements ICarrelloServices{
	
	private final ICarrelloRepository carrelloRepo;
	private final ICarrelloItemRepository carrelloItemRepo;
    private final IFormatoLibroRepository formatoRepo;  
    private final IUtenteRepository utenteRepo;  

    @Override
    @Transactional
    public void aggiungiOAggiornaProdotto(CarrelloReq req) throws Exception {							//idUtente, idFormatoLibro, quantità
    	log.debug("Aggiornamento carrello {}", req);   
    	
        // recupero il formato del libro per controllare la disponibilità
        FormatoLibro formato = formatoRepo.findById(req.getIdFormatoLibro())
                .orElseThrow(() -> new Exception("Formato libro non trovato"));
        
    	// cerco il carrello associato all'utente
    	Carrello carrello=getOrCreateCarrello(req.getIdUtente());										//id, Utente, lista items

    	// cerco se tra gli item di quel carrello esiste già il libro
        Optional<CarrelloItem> itemGiaPresente = carrello.getItems().stream()							//id, Carrello, Formatolibro, quantita, prezzounit
                .filter(item -> item.getFormatoLibro().getId().equals(req.getIdFormatoLibro()))
                .findFirst();
        
        
        int quantitaLibriRichiesta=req.getQuantita(); //numero di libri da aggiungere al carrello..non deve essere superiore a FormatoLibro.getQuantita();
        
        if (itemGiaPresente.isPresent()) {
            // Se c'è già, la nuova quantità totale sarà: attuale + richiesta
        	quantitaLibriRichiesta += itemGiaPresente.get().getQuantita();
        }
        
    	if (formato.getQuantita() < quantitaLibriRichiesta) {
            throw new Exception("Quantità non disponibile. Disponibili solo: " + formato.getQuantita()+" libri");
        }
        
        if (itemGiaPresente.isPresent()) {
        	log.debug("Aumento la quantità del libro nel carrello");   
        	
  
        	// il libro c'è già nel carrello: ne aggiorno la quantità in CarrelloItem
            CarrelloItem item = itemGiaPresente.get();
            item.setQuantita(item.getQuantita() + req.getQuantita());
            // aggiorno il prezzo all'ultimo listino disponibile
            item.setPrezzoUnitario(item.getFormatoLibro().getPrezzo());
            
            //Quando tu fai item.setQuantita(...), Hibernate segna quell'oggetto come "sporco" (modificato).
            //Alla fine del metodo, quando la transazione si chiude, Hibernate invia automaticamente l' UPDATE al database per te, anche se non scrivi .save().
            //tutto questo grazie all'annotazione @Transactional
            
        } else {
        	
        	log.debug("Aggiungo il libro nel carrello"); 
        	
            //il libro non c'è, creo un nuovo CarrelloItem
              CarrelloItem nuovoItem = new CarrelloItem();
            nuovoItem.setCarrello(carrello);
            nuovoItem.setFormatoLibro(formato);
            nuovoItem.setQuantita(req.getQuantita());
            nuovoItem.setPrezzoUnitario(formato.getPrezzo()); 

            // aggiungo il nuovo item al Set del carrello
            carrello.getItems().add(nuovoItem);
        }
        
        carrelloRepo.save(carrello); 
    }

    private Carrello getOrCreateCarrello(Long idUtente) {
    	
    	log.debug("Metodo getOrCreateCarrello id utente: {}", idUtente);
    	
        Optional<Carrello> carrelloOpt = carrelloRepo.findByUtenteId(idUtente);
        
        if (carrelloOpt.isPresent()) {
        	log.debug("carrello trovato");
            return carrelloOpt.get();
        }

        Utente u = utenteRepo.findById(idUtente)
                .orElseThrow(() -> new RuntimeException("Utente non trovato"));
        
        log.debug("Creazione carrello");
        
        Carrello nuovo = new Carrello();
        nuovo.setUtente(u);
        return carrelloRepo.save(nuovo);
    }


    @Override
    @Transactional(readOnly = true)  //Questa è un'ottimizzazione che dice a Spring: "Guarda, in questo metodo farò solo SELECT, non scriverò nulla".
    public CarrelloDTO findByUtente(Long idUtente) {
     
    	log.debug("Metodo findByUtente: visualizzazione carrello dell'utente: {}", idUtente);
    	
    	return carrelloRepo.findByUtenteId(idUtente)
                .map(Mapper::buildCarrelloDTO) // Se esiste, trasformalo
                .orElse(new CarrelloDTO());    // Se NON esiste, dammi un DTO vuoto e pulito
    	//se il carrello non esiste restituiamo un oggetto CarrelloDTO che ha una lista di articoli vuota. Il frontend vedrà items: [] e mostrerà "Carrello Vuoto".
    }

	
	@Override
	@Transactional
	public void rimuoviProdotto(Long idCarrelloItem) throws Exception {
		
		log.debug("Metodo rimuoviProdotto con id: {}", idCarrelloItem);
		
	    // Qui cancelliamo direttamente la riga (CarrelloItem)
	    // Hibernate si occuperà di aggiornare la lista nel Carrello grazie a orphanRemoval
		if (!carrelloItemRepo.existsById(idCarrelloItem)) {
	        throw new Exception("Elemento del carrello non trovato");
	    }
	    carrelloItemRepo.deleteById(idCarrelloItem);
	}

	@Override
	@Transactional
	public void svuotaCarrello(Long idUtente) throws Exception {
		
		log.debug("Metodo svuotaCarrello dell'utente: {}", idUtente);
		
	    Carrello carrello = carrelloRepo.findByUtenteId(idUtente)
	            .orElseThrow(() -> new Exception("Carrello non trovato"));

	    // orphanRemoval=true cancellerà i record CarrelloItem dal DB
	    carrello.getItems().clear();
	    carrelloRepo.save(carrello);
	}

	@Override
	@Transactional
	public void decrementaProdotto(Long idCarrelloItem) throws Exception {
	    log.debug("Decremento quantità per l'item carrello: {}", idCarrelloItem);

	    CarrelloItem item = carrelloItemRepo.findById(idCarrelloItem)
	            .orElseThrow(() -> new Exception("Elemento del carrello non trovato"));

	    // controllo la quantità attuale
	    if (item.getQuantita() > 1) {
	    	log.info("Quantità attuale: {}. Decremento di 1.", item.getQuantita());
	        log.debug("Quantità attuale {}, scalo di 1", item.getQuantita());
	        item.setQuantita(item.getQuantita() - 1);
	        
	        // aggiorno il prezzo unitario se il listino è cambiato
	        item.setPrezzoUnitario(item.getFormatoLibro().getPrezzo());
	        
	        carrelloItemRepo.save(item);
	    } else {
	        log.debug("Quantità pari a 1, procedo con la rimozione dell'item");
	        // se era l'ultima copia, invoco il metodo di rimozione 
	        carrelloItemRepo.delete(item);
	    }
	}

}
