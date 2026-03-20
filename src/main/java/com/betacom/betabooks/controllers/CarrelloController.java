package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
import com.betacom.jpa.response.Resp;

import org.springframework.web.bind.annotation.RequestBody;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PatchMapping;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/carrello")
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
			r.setMsg("CarrelloController - carrello aggiornato");
		} catch(Exception e) {
			log.debug("CarrelloController - errore aggiornamento carrello");
			r.setMsg(e.getMessage());
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
            r.setMsg("Errore nel recupero del carrello: " + e.getMessage());
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
			r.setMsg("CarrelloController - eliminazione item carrello riuscita");
		} catch(Exception e) {
			log.debug("CarrelloController - eliminazione item carrello non riuscita");
			r.setMsg(e.getMessage());
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
			r.setMsg("CarrelloController - svuota carrello riuscito");
		} catch(Exception e) {
			log.debug("CarrelloController - svuota carrello non riuscito");
			r.setMsg(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		
		return ResponseEntity.status(status).body(r);
		
    }
    
    @PatchMapping("/item/{idItem}/decrementa")
    public ResponseEntity<Resp> decrementa(@PathVariable Long idItem) {
        log.debug("CarrelloController - richiesta decremento per item: {}", idItem);
        
        Resp r = new Resp();
        HttpStatus status = HttpStatus.OK;
        
        try {
            carrelloService.decrementaProdotto(idItem);
            r.setMsg("Quantità aggiornata con successo");
        } catch (Exception e) {
            log.error("Errore durante il decremento: {}", e.getMessage());
            r.setMsg(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        
        return ResponseEntity.status(status).body(r);
    }

}
