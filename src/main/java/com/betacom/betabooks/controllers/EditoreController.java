package com.betacom.betabooks.controllers;

import org.apache.catalina.connector.Response;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.EditoreReq;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.IEditoreServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/editore")
public class EditoreController {
	
	private final IEditoreServices editoreS;
	
	@PostMapping("/create")
	public ResponseEntity<Resp> create(@RequestBody(required = true) EditoreReq req){
		log.debug("EditoreController - create {}",req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			editoreS.create(req);
			response.setMessage("EditoreController - Editore creato");
		}catch(Exception e) {
			log.error("ERRORE EditoreController - "+e.getMessage());
			response.setMessage("ERRORE EditoreController - "+e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
		
	}
	
	@PutMapping("/update")
	public ResponseEntity<Resp> update(@RequestBody(required = true) EditoreReq req){
		log.debug("EditoreController - update {}",req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			editoreS.update(req);
			response.setMessage("EditoreController - Editore aaggornato");
		}catch(Exception e) {
			log.error("ERRORE EditoreController - "+e.getMessage());
			response.setMessage("ERRORE EditoreController - "+e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
		
	}
	
	@GetMapping("/getAll")
	public ResponseEntity<Object> list() {
		log.debug("EditoreController - getAll");
		Object response = new Object();
		HttpStatus status = HttpStatus.OK;
		try {
			response = editoreS.findAll();
		}catch(Exception e) {
			log.error("ERRORE EditoreController - "+e.getMessage());
			response =  e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}
	
	@GetMapping("/getById")
	public ResponseEntity<Object> findById (@RequestParam (required = true)  Long id){
		Object response = new Object();
		HttpStatus status = HttpStatus.OK;
		try {
			response= editoreS.findById(id);
		} catch (Exception e) {
			log.error("ERRORE EditoreController - "+e.getMessage());
			response=e.getMessage();
			status = HttpStatus.BAD_REQUEST; 
		}
		return ResponseEntity.status(status).body(response);
	}

}
