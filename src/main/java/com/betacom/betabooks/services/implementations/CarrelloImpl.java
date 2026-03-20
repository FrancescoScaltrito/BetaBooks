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
    public void aggiungiOAggiornaProdotto(CarrelloReq req) throws Exception {
    	// Cerco il carrello, se non c'è lo CREO invece di lanciare errore
        Carrello carrello = carrelloRepo.findByUtenteId(req.getIdUtente())
                .orElseGet(() -> {
                    // Logica per creare un nuovo carrello se l'utente non ne ha uno
                    Carrello nuovo = new Carrello();
                    Utente u = utenteRepo.findById(req.getIdUtente())
                            .orElseThrow(() -> new RuntimeException("Impossibile creare il carrello: Utente non trovato con ID " + req.getIdUtente()));
                    nuovo.setUtente(u);
                    return carrelloRepo.save(nuovo);
                });

        // 2. Cerco se tra gli ITEM di quel carrello esiste già il libro
        // Usiamo uno Stream per cercare nelle righe esistenti
        Optional<CarrelloItem> itemGiaPresente = carrello.getItems().stream()
                .filter(item -> item.getFormatoLibro().getId().equals(req.getIdFormatoLibro()))
                .findFirst();

        if (itemGiaPresente.isPresent()) {
        	// CASO AGGIORNA: Il libro c'è già, aumento la quantità
            CarrelloItem item = itemGiaPresente.get();
            item.setQuantita(item.getQuantita() + req.getQuantita());
            
            // Aggiorno il prezzo all'ultimo listino disponibile (scelta consigliata)
            item.setPrezzoUnitario(item.getFormatoLibro().getPrezzo());
        } else {
            // CASO AGGIUNGI: Il libro non c'è, creo una nuova riga
        	FormatoLibro formato = formatoRepo.findById(req.getIdFormatoLibro()) // Se nella Req hai ancora idLibro, rinominalo idealmente in idFormato
                    .orElseThrow(() -> new Exception("Formato libro non trovato"));

            CarrelloItem nuovoItem = new CarrelloItem();
            nuovoItem.setCarrello(carrello);
            nuovoItem.setFormatoLibro(formato);
            nuovoItem.setQuantita(req.getQuantita());
            nuovoItem.setPrezzoUnitario(formato.getPrezzo()); // Salvo il prezzo attuale

            // Aggiungo il nuovo item al Set del carrello
            carrello.getItems().add(nuovoItem);
        }
        
        carrelloRepo.save(carrello); // Salviamo la testata (che salverà le righe in cascata)
    }


/*
    //Dato che stai accedendo a carrello.getItems() (che di solito è caricato in modalità "Lazy", ovvero solo quando serve), è fondamentale che il metodo sia annotato con 
    @Transactional(readOnly = true)
	@Override
	public CarrelloDTO findByUtente(Long idUtente) throws Exception {
	    // 1. Cerchiamo il carrello (Testata)
	    Carrello carrello = carrelloRepo.findByUtenteId(idUtente)
	            .orElseThrow(() -> new Exception("Carrello non trovato per l'utente " + idUtente));

	    // 2. Usiamo il Builder (visto che lo abbiamo aggiunto) per il DTO
	    List<CarrelloItemDTO> itemDTOs = carrello.getItems().stream()
	            .map(item -> {
	                // Usiamo il prezzo salvato nella riga del carrello, non quello del catalogo!
	                BigDecimal prezzoStorico = item.getPrezzoUnitario(); 
	                
	                // Calcoliamo il subtotale della riga
	                BigDecimal subTotale = prezzoStorico.multiply(new BigDecimal(item.getQuantita()));
	                
	                return CarrelloItemDTO.builder()
	                        .id(item.getId())
	                        .idFormatoLibro(item.getFormatoLibro().getId())
	                        .titoloLibro(item.getFormatoLibro().getLibro().getTitolo())
	                        .prezzoUnitario(prezzoStorico) // Mostriamo il prezzo bloccato
	                        .quantita(item.getQuantita())
	                        .prezzoTotaleRiga(subTotale)
	                        .build();
	            })
	            .collect(Collectors.toList());

	    // 3. Calcolo del totale generale
	    BigDecimal totaleGenerale = itemDTOs.stream()
	            .map(CarrelloItemDTO::getPrezzoTotaleRiga)
	            .reduce(BigDecimal.ZERO, BigDecimal::add);

	
	    return CarrelloDTO.builder()
	            .id(carrello.getId())
	            .idUtente(idUtente)
	            .items(itemDTOs)
	            .prezzoTotaleComplessivo(totaleGenerale) // <-- Assicurati che il nome nel DTO sia questo
	            .build();
	}*/
    @Override
    @Transactional(readOnly = true)
    public CarrelloDTO findByUtente(Long idUtente) throws Exception {
        // 1. Logica di business: recupero l'entità dal DB
        Carrello carrello = carrelloRepo.findByUtenteId(idUtente)
                .orElseThrow(() -> new Exception("Carrello non trovato"));

        // 2. Delegazione: chiedo al Mapper di fare il lavoro sporco della conversione
        return Mapper.buildCarrelloDTO(carrello); 
    }

	
	@Override
	@Transactional
	public void rimuoviProdotto(Long idCarrelloItem) throws Exception {
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
	    Carrello carrello = carrelloRepo.findByUtenteId(idUtente)
	            .orElseThrow(() -> new Exception("Carrello non trovato"));

	    // Puliamo la collezione: orphanRemoval=true cancellerà i record dal DB
	    carrello.getItems().clear();
	    carrelloRepo.save(carrello);
	}






}
