package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.RecensioneReq;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.IRecensioneServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/recensione")
@CrossOrigin(origins = "http://localhost:4200")
public class RecensioneController {
	
	private final IRecensioneServices recensioneS;
	
	@PostMapping("/create")
	public ResponseEntity<Resp> create(@RequestBody(required = true) RecensioneReq req){
		log.debug("RecensioneController - create {}", req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			recensioneS.create(req);
			response.setMessage("RecensioneController - Recensione creata");
		} catch (Exception e) {
			log.error("ERRORE RecensioneController"+e.getMessage());
			response.setMessage(e.getMessage());
			status=HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}
	
	@PutMapping("/update")
	public ResponseEntity<Resp> update(@RequestBody(required = true)  RecensioneReq req){
		log.debug("RecensioneController - update {}",req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			recensioneS.update(req);
			response.setMessage("RecensioneController - Recensione aggiornata");
		} catch (Exception e) {
			log.error("ERRORE RecenscioneController - "+e.getMessage());
			response.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);		
	}
	
	@DeleteMapping("/delete")
	public ResponseEntity<Resp> delete(@RequestParam(required = true) Long id){
		log.debug("RecensioneController - delete {}", id);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            recensioneS.delete(id);
            response.setMessage("RecensioneController - Recensione eliminata");
        } catch (Exception e) {
            log.error("ERRORE RecensioneController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
	}
	
	@GetMapping("/getAll")
	public ResponseEntity<Object> list(){
        Object response = new Object();
        HttpStatus status = HttpStatus.OK;
        try {
            response = recensioneS.findAll();
        } catch (Exception e) {
            log.error("ERRORE RecensioneController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);    
    }
	
	@GetMapping("/getById")
    public ResponseEntity<Object> findById (@RequestParam(required = true) Long id){
        Object response = new Object();
        HttpStatus status = HttpStatus.OK;
        try {
            response = recensioneS.findById(id);
        } catch (Exception e) {
            log.error("ERRORE RecensioneController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST; 
        }
        return ResponseEntity.status(status).body(response);
    }
	
	@GetMapping("/getByLibro")
    public ResponseEntity<Object> findByLibro (@RequestParam(required = true) Long idLibro){
        Object response = new Object();
        HttpStatus status = HttpStatus.OK;
        try {
            response = recensioneS.findByLibro(idLibro);
        } catch (Exception e) {
            log.error("ERRORE RecensioneController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST; 
        }
        return ResponseEntity.status(status).body(response);
    }

}
