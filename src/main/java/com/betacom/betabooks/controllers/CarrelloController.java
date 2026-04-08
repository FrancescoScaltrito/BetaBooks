package com.betacom.betabooks.controllers;

import java.security.Principal;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.dto.outputs.CarrelloDTO;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;
import com.betacom.jpa.dto.inputs.AbbonamentoReq;
import com.betacom.betabooks.response.Resp;

import org.springframework.web.bind.annotation.RequestBody;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PatchMapping;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/carrello")
@CrossOrigin(origins = "http://localhost:4200")
public class CarrelloController {
	
	private final ICarrelloServices carrelloService;

    @PostMapping("/aggiungiProdotto")
    public ResponseEntity<Resp> aggiungiProdotto(@RequestBody CarrelloReq req) throws Exception {
    	log.info("Dati ricevuti da Swagger: idUtente={}, idFormato={}", req.getIdUtente(), req.getIdFormatoLibro());
    	log.debug("CarrelloController - aggiornamento carrello {}", req);
		Resp r=new Resp();
		HttpStatus status=HttpStatus.OK;
		
		try {
			carrelloService.aggiungiOAggiornaProdotto(req);
			r.setMessage("CarrelloController - carrello aggiornato");
		} catch(Exception e) {
			log.debug("CarrelloController - errore aggiornamento carrello");
			r.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
	
		return ResponseEntity.status(status).body(r);

    }


    @GetMapping("/utente/{idUtente}")
    public ResponseEntity<?> getCarrello(@PathVariable Long idUtente) {
        log.debug("CarrelloController - visualizzazione carrello dell'utente: {}", idUtente);
        
        try {
            // Se tutto va bene, restituisco direttamente il DTO
            CarrelloDTO dto = carrelloService.findByUtente(idUtente);
            return ResponseEntity.ok(dto);
        
        } catch (Exception e) {
            log.error("CarrelloController - errore visualizzazione carrello: {}", e.getMessage());
            // Se c'è un errore, restituisco l'oggetto Resp con il messaggio
            Resp r = new Resp();
            r.setMessage("Errore nel recupero del carrello: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(r);
        }
    }

    @DeleteMapping("/item/{idItem}/elimina")
    public ResponseEntity<Resp> rimuoviItem(@PathVariable Long idItem) throws Exception {
    	log.debug("CarrelloController - eliminazione item carrello: {}", idItem);
        
		Resp r=new Resp();
		HttpStatus status=HttpStatus.OK;
		
		try {
			carrelloService.rimuoviProdotto(idItem);
			r.setMessage("CarrelloController - eliminazione item carrello riuscita");
		} catch(Exception e) {
			log.debug("CarrelloController - eliminazione item carrello non riuscita");
			r.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		
		return ResponseEntity.status(status).body(r);
    }

    @DeleteMapping("/svuota/{idUtente}")
    public ResponseEntity<Resp> svuota(@PathVariable Long idUtente) throws Exception {

    	log.debug("CarrelloController - svuota carrello dell'utente: {}", idUtente);
        
		Resp r=new Resp();
		HttpStatus status=HttpStatus.OK;
		
		try {
			carrelloService.svuotaCarrello(idUtente);
			r.setMessage("CarrelloController - svuota carrello riuscito");
		} catch(Exception e) {
			log.debug("CarrelloController - svuota carrello non riuscito");
			r.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		
		return ResponseEntity.status(status).body(r);
		
    }
    
    @PatchMapping("/item/{idItem}/decrementa")
    public ResponseEntity<Resp> decrementa(@PathVariable Long idItem) {
        log.debug("CarrelloController - richiesto decremento per l'item: {}", idItem);
        
        Resp r = new Resp();
        HttpStatus status = HttpStatus.OK;
        
        try {
            carrelloService.decrementaProdotto(idItem);
            r.setMessage("Quantità aggiornata con successo");
        } catch (Exception e) {
            log.error("Errore durante il decremento: {}", e.getMessage());
            r.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        
        return ResponseEntity.status(status).body(r);
    }

    @PatchMapping("/item/{idItem}/aumenta")
    public ResponseEntity<Resp> aumenta(@PathVariable Long idItem) {
        log.debug("CarrelloController - richiesto aumento per l'item: {}", idItem);
        
        Resp r = new Resp();
        HttpStatus status = HttpStatus.OK;
        
        try {
            carrelloService.aumentaProdotto(idItem);
            r.setMessage("Quantità aggiornata con successo");
        } catch (Exception e) {
            log.error("Errore durante l'aumento: {}", e.getMessage());
            r.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        
        return ResponseEntity.status(status).body(r);
    }
    
    @PostMapping("/item/{idItem}/sposta-in-wishlist")
    public ResponseEntity<Resp> spostaInWishlist(@PathVariable Long idItem) {
    	log.debug("CarrelloController - spostamento dal carrello alla wishlist per l'item: {}", idItem);
        Resp r = new Resp();
        try {
            carrelloService.spostaInWishlist(idItem);
            r.setMessage("Prodotto spostato nella wishlist con successo");
            return ResponseEntity.ok(r);
        } catch (Exception e) {
            r.setMessage("Errore durante lo spostamento: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(r);
        }
    }
}
