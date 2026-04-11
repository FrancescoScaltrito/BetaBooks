package com.betacom.betabooks.profilo;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.ProfiloUtenteController;
import com.betacom.betabooks.controllers.UtenteController;
import com.betacom.betabooks.dto.inputs.ProfiloReq;
import com.betacom.betabooks.dto.inputs.UtenteReq;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class ProfiloUtenteControllerTest {

    @Autowired
    private ProfiloUtenteController profiloC;

    @Autowired
    private UtenteController utenteC;

    // ID creati nel BeforeEach, disponibili in ogni test
    private Long idUtente;
    private Long idProfilo;

    @BeforeEach
    void setUp() {
        // 1. creo un utente fresco
        UtenteReq uReq = new UtenteReq();
        uReq.setEmail("profilo_test_" + System.currentTimeMillis() + "@betabooks.it");
        uReq.setPassword("password123");
        idUtente = utenteC.register(uReq).getBody().getId();

        // 2. creo un profilo associato a quell'utente
        ProfiloReq pReq = new ProfiloReq();
        pReq.setIdUtente(idUtente);
        pReq.setNome("Mario");
        pReq.setCognome("Rossi");
        pReq.setTelefono("3331234567");
        idProfilo = profiloC.create(pReq).getBody();
    }

    // ── CREATE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void createSuccesso() {
        log.debug("TESTING - createProfilo OK");
        // creo un secondo utente per non avere conflitti
        UtenteReq uReq = new UtenteReq();
        uReq.setEmail("profilo2_" + System.currentTimeMillis() + "@betabooks.it");
        uReq.setPassword("password123");
        Long altroUtente = utenteC.register(uReq).getBody().getId();

        ProfiloReq req = new ProfiloReq();
        req.setIdUtente(altroUtente);
        req.setNome("Luigi");
        req.setCognome("Verdi");

        assertEquals(HttpStatus.CREATED, profiloC.create(req).getStatusCode());
    }

    @Test
    @Order(2)
    public void createErrore_UtenteInesistente() {
        log.debug("TESTING - createProfilo ERRORE utente inesistente");
        ProfiloReq req = new ProfiloReq();
        req.setIdUtente(99999L);
        req.setNome("Mario");
        req.setCognome("Rossi");

        assertEquals(HttpStatus.BAD_REQUEST, profiloC.create(req).getStatusCode());
    }

    @Test
    @Order(3)
    public void createErrore_DatiMancanti() {
        log.debug("TESTING - createProfilo ERRORE dati null");
        ProfiloReq req = new ProfiloReq();
        // nessun campo valorizzato

        assertEquals(HttpStatus.BAD_REQUEST, profiloC.create(req).getStatusCode());
    }

    // ── UPDATE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(4)
    public void updateSuccesso() {
        log.debug("TESTING - updateProfilo OK");
        ProfiloReq req = new ProfiloReq();
        req.setIdUtente(idUtente);
        req.setNome("MarioAggiornato");
        req.setCognome("RossiAggiornato");
        req.setTelefono("3339999999");

        assertEquals(HttpStatus.OK, profiloC.update(idProfilo, req).getStatusCode());
    }

    @Test
    @Order(5)
    public void updateErrore_IdInesistente() {
        log.debug("TESTING - updateProfilo ERRORE id inesistente");
        ProfiloReq req = new ProfiloReq();
        req.setIdUtente(idUtente);
        req.setNome("Nome");
        req.setCognome("Cognome");

        assertEquals(HttpStatus.BAD_REQUEST, profiloC.update(99999L, req).getStatusCode());
    }

    // ── FIND BY ID ────────────────────────────────────────────────────────────────

    @Test
    @Order(6)
    public void findByIdSuccesso() {
        log.debug("TESTING - findByIdProfilo OK");
        assertEquals(HttpStatus.OK, profiloC.findById(idProfilo).getStatusCode());
    }

    @Test
    @Order(7)
    public void findByIdErrore_IdInesistente() {
        log.debug("TESTING - findByIdProfilo ERRORE id inesistente");
        assertEquals(HttpStatus.NOT_FOUND, profiloC.findById(99999L).getStatusCode());
    }

    // ── FIND ALL ─────────────────────────────────────────────────────────────────

    @Test
    @Order(8)
    public void findAllSuccesso() {
        log.debug("TESTING - findAllProfili OK");
        var resp = profiloC.findAll();
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertFalse(resp.getBody().isEmpty());
    }

    // ── FIND BY UTENTE ────────────────────────────────────────────────────────────

    @Test
    @Order(9)
    public void findByUtenteSuccesso() {
        log.debug("TESTING - findByUtenteProfilo OK");
        assertEquals(HttpStatus.OK, profiloC.findByUtente(idUtente).getStatusCode());
    }

    @Test
    @Order(10)
    public void findByUtenteErrore_UtenteInesistente() {
        log.debug("TESTING - findByUtenteProfilo ERRORE utente inesistente");
        assertEquals(HttpStatus.NOT_FOUND, profiloC.findByUtente(99999L).getStatusCode());
    }

    // ── DELETE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(11)
    public void deleteSuccesso() {
        log.debug("TESTING - deleteProfilo OK");
        assertEquals(HttpStatus.NO_CONTENT, profiloC.delete(idProfilo).getStatusCode());
    }

    @Test
    @Order(12)
    public void deleteErrore_IdInesistente() {
        log.debug("TESTING - deleteProfilo ERRORE id inesistente");
        assertEquals(HttpStatus.NOT_FOUND, profiloC.delete(99999L).getStatusCode());
    }
}