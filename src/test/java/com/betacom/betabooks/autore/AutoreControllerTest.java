package com.betacom.betabooks.autore;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.AutoreController;
import com.betacom.betabooks.dto.inputs.AutoreReq;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.response.Resp;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional 
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestPropertySource(properties = {
	    "database.username=postgres",
	    "database.password=100720",
	    "mail.sender=arianna.garaglia@gmail.com"
	})
public class AutoreControllerTest {

    @Autowired
    private AutoreController autoreC;

    @Autowired
    private IAutoreRepository autoreR;

    @Test
    @Order(1)
    public void createSuccess() throws Exception {
        log.debug("Test: Creazione autore con successo");
        
        AutoreReq req = new AutoreReq();
        req.setNome("Italo");
        req.setCognome("Svevo");
        req.setBiografia("Famoso scrittore italiano nato a Trieste.");
        req.setNazionalita("Italiana");

        ResponseEntity<Resp> resp = autoreC.create(req);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("AutoreController - Autore creato", resp.getBody().getMessage());
    }

    @Test
    @Order(2)
    public void updateSuccess() throws Exception {
        log.debug("Test: Aggiornamento autore con successo");
        
        Long idValido = autoreR.findAll().get(0).getId();
        
        AutoreReq req = new AutoreReq();
        req.setId(idValido);
        req.setNome("Nome Aggiornato");
        req.setCognome("Cognome Aggiornato");
        req.setBiografia("Biografia aggiornata per JUnit.");
        req.setNazionalita("Francese");

        ResponseEntity<Resp> resp = autoreC.update(req);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("AutoreController - Autore aggiornato", resp.getBody().getMessage());
    }

    @Test
    @Order(3)
    public void getAll() throws Exception {
        log.debug("Test: Get All Autori");
        ResponseEntity<Object> resp = autoreC.list();
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(4)
    public void getById() throws Exception {
        log.debug("Test: Get Autore By Id");
        Long idValido = autoreR.findAll().get(0).getId();
        
        ResponseEntity<Object> resp = autoreC.findById(idValido);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(5)
    public void createFallimento_BiografiaNull() throws Exception {
        log.debug("Test: Creazione fallita - Biografia Null");
        AutoreReq req = new AutoreReq();
        req.setCognome("Cognome");
        req.setNome("Nome");
        req.setNazionalita("Italiana");
        
        ResponseEntity<Resp> resp = autoreC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Biografia Autore non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(6)
    public void createFallimento_CognomeNull() throws Exception {
        log.debug("Test: Creazione fallita - Cognome Null");
        AutoreReq req = new AutoreReq();
        req.setBiografia("Biografia di test");
        req.setNome("Nome");
        req.setNazionalita("Italiana");
        
        ResponseEntity<Resp> resp = autoreC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Cognome Autore non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(7)
    public void createFallimento_NomeNull() throws Exception {
        log.debug("Test: Creazione fallita - Nome Null");
        AutoreReq req = new AutoreReq();
        req.setBiografia("Biografia di test");
        req.setCognome("Cognome");
        req.setNazionalita("Italiana");
        
        ResponseEntity<Resp> resp = autoreC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Nome Autore non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(8)
    public void createFallimento_NazionalitaNull() throws Exception {
        log.debug("Test: Creazione fallita - Nazionalita Null");
        AutoreReq req = new AutoreReq();
        req.setBiografia("Biografia di test");
        req.setCognome("Cognome");
        req.setNome("Nome");
        
        ResponseEntity<Resp> resp = autoreC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Nazionalita Autore non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(9)
    public void updateFallimento_NonTrovato() throws Exception {
        log.debug("Test: Aggiornamento fallito - Autore inesistente");
        AutoreReq req = new AutoreReq();
        req.setId(99999L);
        req.setNome("Test");
        
        ResponseEntity<Resp> resp = autoreC.update(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE Update - Autore non trovato in DB", resp.getBody().getMessage());
    }

    @Test
    @Order(10)
    public void findByIdFallimento_NonTrovato() throws Exception {
        log.debug("Test: GetById fallito - ID non trovato");
        ResponseEntity<Object> resp = autoreC.findById(99999L);
        
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE findById - Autore non trovato in DB", resp.getBody());
    }
}