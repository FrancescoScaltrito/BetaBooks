package com.betacom.betabooks.services.implementations;

<<<<<<< HEAD
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.models.Wishlist;
import com.betacom.betabooks.repositories.IWishlistRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.services.interfaces.IWishlistServices;

=======
import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.models.Wishlist;
import com.betacom.betabooks.repositories.IWishlistRepository;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;
import com.betacom.betabooks.services.interfaces.IWishlistServices;

import jakarta.transaction.Transactional;
>>>>>>> b6958696fca92aae3663669efbc0fbe4ce9d6687
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
<<<<<<< HEAD
public class WishlistImpl implements IWishlistServices {

    private final IWishlistRepository wishlistR;
    private final IUtenteRepository utenteRepository;
    private final IFormatoLibroRepository formatoLibroRepository;

    // Aggiungi un elemento alla wishlist
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void addToWishlist(Long userId, Long formatId) throws Exception {
        log.debug("WishlistImpl - addToWishlist userId: {}, formatId: {}", userId, formatId);

        // Validazioni
        if (userId == null) throw new Exception("Id utente non può essere null");
        if (formatId == null) throw new Exception("Id formato non può essere null");

        // Controlla se l'elemento è già presente
        if (wishlistR.findByUtenteIdAndFormatoLibro_Id(userId, formatId).isPresent()) {
            throw new Exception("Elemento già presente nella wishlist");
        }

        // Recupero utente e formato dal DB
        Utente utente = utenteRepository.findById(userId)
                .orElseThrow(() -> new Exception("Utente non trovato"));
        FormatoLibro formato = formatoLibroRepository.findById(formatId)
                .orElseThrow(() -> new Exception("Formato libro non trovato"));

        // Creazione e salvataggio dell'entità
        Wishlist w = new Wishlist();
        w.setUtente(utente);
        w.setFormatoLibro(formato);
        wishlistR.save(w);
    }

    // Rimuovi un elemento dalla wishlist
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void removeFromWishlist(Long userId, Long formatId) throws Exception {
        log.debug("WishlistImpl - removeFromWishlist userId: {}, formatId: {}", userId, formatId);

        if (userId == null || formatId == null) return;

        wishlistR.findByUtenteIdAndFormatoLibro_Id(userId, formatId)
            .ifPresent(wishlistR::delete);
    }

    // Controlla se un elemento è presente nella wishlist
    @Transactional(readOnly = true)
    @Override
    public boolean isInWishlist(Long userId, Long formatId) throws Exception {
        if (userId == null || formatId == null) return false;
        return wishlistR.findByUtenteIdAndFormatoLibro_Id(userId, formatId).isPresent();
    }

    // Recupera tutti gli elementi della wishlist di un utente
    @Override
    @Transactional(readOnly = true)
    public List<Long> getWishlistByUser(Long userId) throws Exception {
        if (userId == null) throw new Exception("Id utente non può essere null");

        List<Wishlist> wishlist = wishlistR.findByUtenteId(userId);
        return wishlist.stream()
                       .map(w -> w.getFormatoLibro().getId())
                       .collect(Collectors.toList());
    }

    // Svuota tutta la wishlist di un utente
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void clearWishlist(Long userId) throws Exception {
        if (userId == null) throw new Exception("Id utente non può essere null");

        List<Wishlist> wishlist = wishlistR.findByUtenteId(userId);
        wishlistR.deleteAll(wishlist);
    }
}
=======
public class WishlistImpl implements IWishlistServices{
	
	private final IWishlistRepository wishlistRepo;  
	private final ICarrelloServices carrelloService;

	@Transactional
	public void spostaNelCarrello(Long idWishlist) throws Exception {
	    // 1. Recupero l'elemento dalla wishlist
	    Wishlist wish = wishlistRepo.findById(idWishlist)
	            .orElseThrow(() -> new Exception("Elemento wishlist non trovato"));

	    // 2. Preparo la richiesta per il carrello
	    // Usiamo l'idUtente e l'idFormato che abbiamo già nella riga wishlist
	    CarrelloReq req = new CarrelloReq();
	    req.setIdUtente(wish.getUtente().getId());
	    req.setIdFormatoLibro(wish.getFormatoLibro().getId());
	    req.setQuantita(1); // Di solito dalla wishlist si sposta 1 copia

	    // 3. Uso il metodo che abbiamo GIÀ scritto nel CarrelloService!
	    // Questo è il vantaggio di avere codice riutilizzabile: 
	    // il metodo gestisce già i controlli magazzino e i doppioni.
	    carrelloService.aggiungiOAggiornaProdotto(req);

	    // 4. Se l'aggiunta ha avuto successo, cancello dalla wishlist
	    wishlistRepo.delete(wish);
	}
}
>>>>>>> b6958696fca92aae3663669efbc0fbe4ce9d6687
