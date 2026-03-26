package com.betacom.betabooks.controllers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.outputs.OrdineDTO;
import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.services.interfaces.IAutoreServices;
import com.betacom.betabooks.services.interfaces.IOrdineServices;
import com.betacom.betabooks.response.Resp;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/ordine")
public class OrdineController {
	
	private final IOrdineServices ordineService;

    @PostMapping("/checkout")
    public ResponseEntity<?> checkout(@RequestParam Long idUtente, @RequestParam MetodoPagamento metodo, @RequestParam Long idIndirizzo) {
        
        log.info("Ordine Controller: checkout per l'utente: {}", idUtente);
        
		Resp r=new Resp();
		HttpStatus status=HttpStatus.OK;
		
        try {
        	//ottengo l'ordine se il frontend vuole visualizzare la pagina con scritti i dati dell'ordine effettuato
            OrdineDTO ordine=ordineService.creaOrdine(idUtente, metodo, idIndirizzo);
            r.setMessage("Ordine Controller: ordine effettuato con successo");
            
        } catch (Exception e) {
            log.error("Errore durante il checkout: {}", e.getMessage());
			r.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(r);
    }
    
    @GetMapping("/storico/{idUtente}")
    public ResponseEntity<Resp> getStorico(@PathVariable Long idUtente) {
        log.info("Richiesta storico ordini per utente: {}", idUtente);
        
        Resp r = new Resp();
        try {
            List<OrdineDTO> storico = ordineService.getOrdiniUtente(idUtente);
            
            r.setMessage("Storico ordini recuperato con successo");
            r.setObj(storico);
            return ResponseEntity.ok(r);
            
        } catch (Exception e) {
            log.error("Errore recupero storico: {}", e.getMessage());
            r.setMessage("Errore nel recupero degli ordini");
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(r);
        }
    }

}
