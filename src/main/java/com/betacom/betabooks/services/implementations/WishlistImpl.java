package com.betacom.betabooks.services.implementations;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.models.Wishlist;
import com.betacom.betabooks.repositories.IWishlistRepository;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;
import com.betacom.betabooks.services.interfaces.IWishlistServices;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
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
