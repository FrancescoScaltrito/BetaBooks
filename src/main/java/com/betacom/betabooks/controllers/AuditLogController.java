package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.services.interfaces.IAuditLogServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/audit")
public class AuditLogController {

	private final IAuditLogServices auditS;

	@GetMapping("/getAll")
	public ResponseEntity<Object> list() {
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = auditS.findAll();
		} catch (Exception e) {
			log.error("ERRORE AuditLogController - getAll: " + e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	@GetMapping("/getByTabella")
	public ResponseEntity<Object> findByTabella(@RequestParam(required = true) String nomeTabella) {
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = auditS.findByTabella(nomeTabella);
		} catch (Exception e) {
			log.error("ERRORE AuditLogController - findByTabella: " + e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}
}
