package com.betacom.betabooks.controllers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.ProfiloReq;
import com.betacom.betabooks.dto.outputs.ProfiloDTO;
import com.betacom.betabooks.services.interfaces.IProfiloUtenteServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/profili")
@CrossOrigin(origins = "http://localhost:4200")
public class ProfiloUtenteController {

    private final IProfiloUtenteServices profiloService;

    @PostMapping
    public ResponseEntity<Long> create(@RequestBody ProfiloReq req) {
        try {
            Long id = profiloService.create(req);
            return ResponseEntity.status(HttpStatus.CREATED).body(id);
        } catch (Exception e) {
            log.error("Errore create profilo: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }

    @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id, @RequestBody ProfiloReq req) {
        try {
            req.setId(id);
            profiloService.update(req);
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            log.error("Errore update profilo: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        try {
            profiloService.delete(id);
            return ResponseEntity.noContent().build();
        } catch (Exception e) {
            log.error("Errore delete profilo: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<ProfiloDTO> findById(@PathVariable Long id) {
        try {
            return ResponseEntity.ok(profiloService.findById(id));
        } catch (Exception e) {
            log.error("Errore findById profilo: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    @GetMapping
    public ResponseEntity<List<ProfiloDTO>> findAll() {
        try {
            return ResponseEntity.ok(profiloService.findAll());
        } catch (Exception e) {
            log.error("Errore findAll profili: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @GetMapping("/utente/{idUtente}")
    public ResponseEntity<ProfiloDTO> findByUtente(@PathVariable Long idUtente) {
        try {
            return ResponseEntity.ok(profiloService.findByUtente(idUtente));
        } catch (Exception e) {
            log.error("Errore findByUtente profilo: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }
}