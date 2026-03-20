package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
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

import com.betacom.betabooks.dto.inputs.FormatoLibroReq;
import com.betacom.betabooks.dto.inputs.LibroReq;
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

    // Libro

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
        Object response;
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
        Object response;
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

    //Formato

    @PostMapping("/formato/create")
    public ResponseEntity<Resp> createFormato(@RequestBody(required = true) FormatoLibroReq req) {
        log.debug("LibroController - createFormato {}", req);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.createFormato(req);
            response.setMessage("LibroController - Formato creato");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @PutMapping("/formato/update")
    public ResponseEntity<Resp> updateFormato(@RequestBody(required = true) FormatoLibroReq req) {
        log.debug("LibroController - updateFormato {}", req);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.updateFormato(req);
            response.setMessage("LibroController - Formato aggiornato");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @PutMapping("/formato/disattiva/{id}")
    public ResponseEntity<Resp> disattivaFormato(@PathVariable Long id) {
        log.debug("LibroController - disattivaFormato {}", id);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.disattivaFormato(id);
            response.setMessage("LibroController - Formato disattivato");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @GetMapping("/formato/getByLibro")
    public ResponseEntity<Object> getFormatiByLibro(@RequestParam(required = true) Long idLibro) {
        Object response;
        HttpStatus status = HttpStatus.OK;
        try {
            response = libroS.findFormatiByLibro(idLibro);
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @GetMapping("/formato/getById")
    public ResponseEntity<Object> getFormatoById(@RequestParam(required = true) Long id) {
        Object response;
        HttpStatus status = HttpStatus.OK;
        try {
            response = libroS.findFormatoById(id);
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    //Copertina 
    @PostMapping(value = "/formato/copertina/{idFormato}", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<Resp> uploadCopertina(
            @PathVariable Long idFormato,
            @RequestPart("file") MultipartFile file) {
        log.debug("LibroController - uploadCopertina formato {}", idFormato);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.salvaCopertina(idFormato, file);
            response.setMessage("LibroController - Copertina salvata");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }

    @GetMapping("/formato/getCompleto")
    public ResponseEntity<Object> getFormatoCompleto(@RequestParam(required = true) Long id) {
        Object response;
        HttpStatus status = HttpStatus.OK;
        try {
            response = libroS.findFormatoByIdCompleto(id);
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response = e.getMessage();
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }
}
