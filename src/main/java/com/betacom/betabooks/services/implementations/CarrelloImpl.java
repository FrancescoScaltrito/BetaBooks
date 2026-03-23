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
import com.betacom.betabooks.models.Wishlist;
import com.betacom.betabooks.repositories.ICarrelloItemRepository;
import com.betacom.betabooks.repositories.ICarrelloRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.repositories.IWishlistRepository;
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
    private final IWishlistRepository wishlistRepo;  

    /*Gestione numero di copie disponibili
     * SOFT CHECK: quando un articolo viene aggiunto al carrello, il numero di copie da aggiungere non deve essere superiore a FormatoLibro.getQuantita();. questo perchè quando un utente agiunge un libro nel carrello, quell'articolo non gli viene riservato
     * HARD CHECK: avviene al momento del checkout (quando l'utente effettua l'ordine). Tra il momento in cui l'utente ha messo il libro nel carrello e il momento in cui clicca "Paga", un altro utente potrebbe aver comprato le ultime copie.
     * Quindi, se la quantità è ancora disponibile, creiamo l'ordine e decrementiamo la quantità di copie disponibili in FormatoLibro.
     */
   
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
        
        
        int quantitaLibriRichiesta=req.getQuantita(); //SOFT CHECK: numero di libri da aggiungere al carrello..non deve essere superiore a FormatoLibro.getQuantita();
        
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
    

    //Invece di usare un Trigger (che colpirebbe migliaia di righe ogni volta che un prezzo cambia nel catalogo), quando un utente vuole visualizzare il suo carrello,
    //il server fa un controllo rapido:
    //Prende il prezzo salvato nel carrello.
    //Lo confronta con quello attuale nel listino (FormatoLibro). 
    //Se sono diversi, aggiorna il database.
    //Invece di far fare i conti al Database o al Frontend, usiamo il Mapper come motore di calcolo.
    //BigDecimal garantisce che ogni centesimo sia contato correttamente, fondamentale per la contabilità.
    
    /* Nel DTO
     * Il calcolo avviene a cascata nel momento in cui trasformiamo le Entity in DTO:
     * Livello Riga (CarrelloItemDTO): Il mapper moltiplica prezzoUnitario * quantita. Questo valore diventa il prezzoTotaleRiga.
     * Livello Carrello (CarrelloDTO): Il mapper somma tutti i prezzoTotaleRiga degli articoli presenti. Questo diventa il prezzoTotaleComplessivo.
     */

    @Override
    @Transactional
    public CarrelloDTO findByUtente(Long idUtente) {
    	log.debug("Metodo findByUtente: sincronizzazione e visualizzazione carrello utente: {}", idUtente);
        
        // 1. Cerchiamo il carrello
        Optional<Carrello> carrelloOpt = carrelloRepo.findByUtenteId(idUtente);
        
        if (carrelloOpt.isPresent()) {
            Carrello carrello = carrelloOpt.get();
            
            // sincronizziamo i prezzi dei libri prima della mappatura al prezzo attuale di listino
            for (CarrelloItem item : carrello.getItems()) {
                BigDecimal prezzoListino = item.getFormatoLibro().getPrezzo();
                
                // compareTo restituisce 0 se i BigDecimal sono uguali
                if (item.getPrezzoUnitario().compareTo(prezzoListino) != 0) {
                    log.info("Prezzo variato per l'item {}: aggiorno a {}", item.getId(), prezzoListino);
                    item.setPrezzoUnitario(prezzoListino);
                    // Grazie a @Transactional, Hibernate farà l'UPDATE nel DB automaticamente
                }
            }
            
            // trasformiamo nel DTO con i prezzi aggiornati
            return Mapper.buildCarrelloDTO(carrello);
        }
        
        // Se il carrello non esiste, restituiamo un DTO vuoto 
        return new CarrelloDTO();
    
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
	
	@Override
	@Transactional
	public void aumentaProdotto(Long idCarrelloItem) throws Exception {
	    log.debug("Incremento quantità per l'item carrello: {}", idCarrelloItem);

	    CarrelloItem item = carrelloItemRepo.findById(idCarrelloItem)
	            .orElseThrow(() -> new Exception("Elemento del carrello non trovato"));

	    FormatoLibro formato = item.getFormatoLibro();

	    // calcolo quanto diventerebbe la quantità se aumentassi di 1
	    int nuovaQuantita = item.getQuantita() + 1;

	    // controllo la disponibilità del libro
	    if (formato.getQuantita() < nuovaQuantita) {
	        throw new Exception("Non ci sono più copie disponibili di questo libro");
	    }

	    // aumento la quantità del libro richiesta 
	    log.info("Aumento quantità item {}: da {} a {}", idCarrelloItem, item.getQuantita(), nuovaQuantita);
	    item.setQuantita(nuovaQuantita);
	    
	    // aggiorno il prezzo all'ultimo listino
	    item.setPrezzoUnitario(formato.getPrezzo());
	    
	    carrelloItemRepo.save(item);
	}

	@Override
	@Transactional
	public void spostaInWishlist(Long idCarrelloItem) throws Exception {
		log.debug("Spostamento dell'item {} dal carrello alla wishlist", idCarrelloItem);
		
	    CarrelloItem item = carrelloItemRepo.findById(idCarrelloItem)
	            .orElseThrow(() -> new Exception("Item non trovato"));

	    Utente utente = item.getCarrello().getUtente();
	    FormatoLibro formato = item.getFormatoLibro();

	    // controllo se il libro è già in wishlist per questo utente
	    Optional<Wishlist> giaPresente = wishlistRepo.findByUtenteAndFormatoLibro(utente, formato);

	    if (giaPresente.isEmpty()) {
	        log.info("Libro non presente in wishlist");
	        Wishlist wishlist = new Wishlist();
	        wishlist.setUtente(utente);
	        wishlist.setFormatoLibro(formato);
	        wishlistRepo.save(wishlist);
	    } else {
	        log.info("Libro già presente in wishlist, salto l'inserimento");
	    }

	    // tolgo l'item dal carrello
	    carrelloItemRepo.delete(item);
	}
	
	
}
