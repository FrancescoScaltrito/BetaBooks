package com.betacom.betabooks.services.implementations;

import java.math.BigDecimal;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.dto.outputs.CarrelloDTO;
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

import lombok.EqualsAndHashCode;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Service
public class CarrelloImpl implements ICarrelloServices {

    private final ICarrelloRepository carrelloRepo;
    private final ICarrelloItemRepository carrelloItemRepo;
    private final IFormatoLibroRepository formatoRepo;
    private final IUtenteRepository utenteRepo;
    private final IWishlistRepository wishlistRepo;

    @Override
    @Transactional
    public void aggiungiOAggiornaProdotto(CarrelloReq req) throws Exception {

	    log.debug("Aggiornamento carrello {}", req);
	    
	    FormatoLibro formato = formatoRepo.findById(req.getIdFormatoLibro())
	    .orElseThrow(() -> new Exception("Formato libro non trovato"));
	
	    if (Boolean.FALSE.equals(formato.getAttivo())) {
	    	throw new Exception("Spiacenti, questo formato non è più disponibile.");
	
	    }
	
	    Carrello carrello = getOrCreateCarrello(req.getIdUtente());
	
	    Optional<CarrelloItem> itemGiaPresente = carrello.getItems().stream()
		    .filter(item -> item.getFormatoLibro().getId().equals(req.getIdFormatoLibro()))
		    .findFirst();
	
	    if (formato.getQuantita() == null) {
	    	aggiuntaEbook(itemGiaPresente, carrello, formato, req);
	    }
	
	    else {
	    	aggiuntaCartaceo(itemGiaPresente, carrello, formato, req);
	    }

    }


  
    
   private void aggiuntaEbook(Optional<CarrelloItem> itemGiaPresente,Carrello carrello, FormatoLibro formato, CarrelloReq req) throws Exception {
	   	if (req.getQuantita()>1) {
			 throw new Exception("Non puoi acquistare più di una copia digitale dello stesso libro");
		}
	   if (itemGiaPresente.isPresent()) {
		   throw new Exception("Ebook già presente nel carrello, non incremento");
	    
	   }
	   req.setQuantita(1); 
	   
       log.debug("Nuovo inserimento nel carrello"); 
       CarrelloItem nuovoItem = new CarrelloItem();
       nuovoItem.setCarrello(carrello);
       nuovoItem.setFormatoLibro(formato);
       nuovoItem.setQuantita(req.getQuantita());
       nuovoItem.setPrezzoUnitario(formato.getPrezzo()); 

       carrello.getItems().add(nuovoItem);
       
       carrelloRepo.save(carrello);
	   
   }
   
   private void aggiuntaCartaceo(Optional<CarrelloItem> itemGiaPresente, Carrello carrello, FormatoLibro formato, CarrelloReq req) throws Exception {
       // check disponibilità (solo per i fisici)
       int quantitaLibriRichiesta = req.getQuantita();
       if (itemGiaPresente.isPresent()) {
           quantitaLibriRichiesta += itemGiaPresente.get().getQuantita();
       }
       
       // Controllo disponibilità magazzino (solo per fisici, perché null != null è gestito sopra)
       if (formato.getQuantita() != null) {
           if (formato.getQuantita() < quantitaLibriRichiesta) {
               throw new Exception("Quantità non disponibile. Disponibili solo: " + formato.getQuantita() + " pezzi");
           }
       }
       
       // Aggiunta o Aggiornamento reale
       if (itemGiaPresente.isPresent()) {
           log.debug("Aumento quantità nel carrello");   
           CarrelloItem item = itemGiaPresente.get();
           //gli ebook non arriveranno mai qui grazie al return sopra
           item.setQuantita(item.getQuantita() + req.getQuantita());
           item.setPrezzoUnitario(formato.getPrezzo());
       } else {
           log.debug("Nuovo inserimento nel carrello"); 
           CarrelloItem nuovoItem = new CarrelloItem();
           nuovoItem.setCarrello(carrello);
           nuovoItem.setFormatoLibro(formato);
           nuovoItem.setQuantita(req.getQuantita());
           nuovoItem.setPrezzoUnitario(formato.getPrezzo()); 

           carrello.getItems().add(nuovoItem);
       }
       
       carrelloRepo.save(carrello);
   }
    
    


    private Carrello getOrCreateCarrello(Long idUtente) {
        log.debug("Metodo getOrCreateCarrello id utente: {}", idUtente);

        Optional<Carrello> carrelloOpt = carrelloRepo.findByUtenteId(idUtente);

        if (carrelloOpt.isPresent()) {
            log.debug("Carrello trovato");
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
    @Transactional
    public CarrelloDTO findByUtente(Long idUtente) {
        log.debug("Metodo findByUtente: sincronizzazione e visualizzazione carrello utente: {}", idUtente);
        
        if (!utenteRepo.existsById(idUtente)) {
            throw new RuntimeException("Utente non trovato");
        }

        Optional<Carrello> carrelloOpt = carrelloRepo.findByUtenteId(idUtente);

        if (carrelloOpt.isPresent()) {
            Carrello carrello = carrelloOpt.get();

            for (CarrelloItem item : carrello.getItems()) {
                BigDecimal prezzoListino = item.getFormatoLibro().getPrezzo();
                if (item.getPrezzoUnitario().compareTo(prezzoListino) != 0) {
                    log.info("Prezzo variato per l'item {}: aggiorno a {}", item.getId(), prezzoListino);
                    item.setPrezzoUnitario(prezzoListino);
                }
            }

            return Mapper.buildCarrelloDTO(carrello);
        }

        return new CarrelloDTO();
    }

    @Override
    @Transactional
    public void rimuoviProdotto(Long idCarrelloItem) throws Exception {
        log.debug("Metodo rimuoviProdotto con id: {}", idCarrelloItem);

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

        carrello.getItems().clear();
        carrelloRepo.save(carrello);
    }

    @Override
    @Transactional
    public void decrementaProdotto(Long idCarrelloItem) throws Exception {
        log.debug("Decremento quantità per l'item carrello: {}", idCarrelloItem);

        CarrelloItem item = carrelloItemRepo.findById(idCarrelloItem)
                .orElseThrow(() -> new Exception("Elemento del carrello non trovato"));

        if (item.getQuantita() > 1) {
            log.info("Quantità attuale: {}. Decremento di 1.", item.getQuantita());
            item.setQuantita(item.getQuantita() - 1);
            item.setPrezzoUnitario(item.getFormatoLibro().getPrezzo());
            carrelloItemRepo.save(item);
        } else {
            log.debug("Quantità pari a 1, procedo con la rimozione dell'item dal carrello");
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
        
        //si tratta di un ebook
        if (formato.getQuantita() == null) {
        	throw new Exception("Non puoi acquistare più di una copia digitale dello stesso libro");
        }
        
        //si tratta di un libro cartaceo
        int nuovaQuantita = item.getQuantita() + 1;

        if (formato.getQuantita() < nuovaQuantita) {
            throw new Exception("Non ci sono più copie disponibili di questo libro");
        }

        log.info("Aumento quantità item {}: da {} a {}", idCarrelloItem, item.getQuantita(), nuovaQuantita);
        item.setQuantita(nuovaQuantita);
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

        Optional<Wishlist> giaPresente = wishlistRepo.findByUtenteIdAndFormatoLibroId(utente.getId(), formato.getId());

        if (giaPresente.isEmpty()) {
            log.info("Libro non presente in wishlist");
            Wishlist wishlist = new Wishlist();
            wishlist.setUtente(utente);
            wishlist.setFormatoLibro(formato);
            wishlistRepo.save(wishlist);
        } else {
            log.info("Libro già presente in wishlist, salto l'inserimento");
        }

        carrelloItemRepo.delete(item);
    }
}