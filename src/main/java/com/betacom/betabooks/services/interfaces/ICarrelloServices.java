package com.betacom.betabooks.services.interfaces;


import java.util.List;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.dto.outputs.CarrelloDTO;

public interface ICarrelloServices {
	
	// sostituisce create e update: se il libro c'è già aumenta la quantità, altrimenti crea riga
	//farà una new Carrello() (o new CarrelloItem) solo se quel libro non c'è già.
    void aggiungiOAggiornaProdotto(CarrelloReq req) throws Exception;

    void rimuoviProdotto(Long idCarrelloItem) throws Exception;

    // trovare il carrello dell'utente
    CarrelloDTO findByUtente(Long idUtente) throws Exception;

    // per svuotare tutto il carrello dopo l'ordine o su richiesta
    void svuotaCarrello(Long idUtente) throws Exception;
    
    void decrementaProdotto(Long idCarrelloItem) throws Exception;
    
    void aumentaProdotto(Long idCarrelloItem) throws Exception;
    
    void spostaInWishlist(Long idCarrelloItem) throws Exception;

}
