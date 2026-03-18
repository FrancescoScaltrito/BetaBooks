package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.AutoreReq;
import com.betacom.betabooks.dto.inputs.CategoriaReq;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.ICategoriaServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/categoria")

public class CategoriaController {

	private final ICategoriaServices cateS;
	
	@PostMapping("/create")
	public ResponseEntity<Resp> create(@RequestBody(required = true) CategoriaReq req){
		log.debug("CategoriaController - create {}",req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			cateS.create(req);
			response.setMessage("CategoriaController - Categoria creata");
		}catch(Exception e) {
			log.error("ERRORE CategoriaController - " +e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
		
	}
	
	@PutMapping("/update")
	public ResponseEntity<Resp> update(@RequestBody(required = true)  CategoriaReq req){
		log.debug("CategoriaController - update {}",req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			cateS.update(req);
			response.setMessage("CategoriaController - Categoria aggiornata");
		} catch (Exception e) {
			log.error("ERRORE CategoriaController - "+e.getMessage());
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
			response= cateS.findAll();
		} catch (Exception e) {
			log.error("ERRORE CategoriaController - "+e.getMessage());
			response=e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);	
	}
	
	@GetMapping("/getById")
	public ResponseEntity<Object> findById (@RequestParam (required = true)  Long id){
		Object response = new Object();
		HttpStatus status = HttpStatus.OK;
		try {
			response= cateS.findById(id);
		} catch (Exception e) {
			log.error("ERRORE CategoriaController - "+e.getMessage());
			response=e.getMessage();
			status = HttpStatus.BAD_REQUEST; 
		}
		return ResponseEntity.status(status).body(response);
	}
}
