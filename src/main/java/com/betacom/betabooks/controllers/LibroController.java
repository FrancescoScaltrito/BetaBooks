package com.betacom.betabooks.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;

import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.dto.outputs.LibroDTO;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.ILibroServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/libro")
public class LibroController {

    private final ILibroServices libroS;
    private final ILibroRepository libR;

    @PostMapping("/create")
    public ResponseEntity<Resp> create(@RequestBody(required = true) LibroReq req) {
        log.debug("LibroController - create {}", req);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.create(req);
            response.setMessage("LibroController - Libro creato");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @PutMapping("/update")
    public ResponseEntity<Resp> update(@RequestBody(required = true) LibroReq req) {
        log.debug("LibroController - update {}", req);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.update(req);
            response.setMessage("LibroController - Libro aggiornato");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @GetMapping("/getAll")
    public ResponseEntity<Object> list() {
        Object response = new Object();
        HttpStatus status = HttpStatus.OK;
        try {
            response = libroS.findAll();
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @GetMapping("/getById")
    public ResponseEntity<Object> findById(@RequestParam(required = true) Long id) {
        Object response = new Object();
        HttpStatus status = HttpStatus.OK;
        try {
            response = libroS.findById(id);
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @PostMapping(value = "/{id}/copertina", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<Resp> uploadCopertina(
            @PathVariable Long id,
            @RequestPart("file") MultipartFile file) {
        log.debug("LibroController - uploadCopertina libro id {}", id);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.salvaCopertina(id, file);
            response.setMessage("LibroController - Copertina salvata");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @GetMapping("/{id}/copertina")
    public ResponseEntity<byte[]> getCopertina(@PathVariable Long id) {
        log.debug("LibroController - getCopertina libro id {}", id);
        try {
            Libro libro = libR.findById(id)
                    .orElseThrow(() -> new Exception("Libro non trovato"));

            if (libro.getCopertina() == null)
                return ResponseEntity.notFound().build();

            return ResponseEntity.ok()
                    .contentType(MediaType.parseMediaType(libro.getCopertinaMimeType()))
                    .body(libro.getCopertina());

        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }
}