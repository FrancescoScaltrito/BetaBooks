package com.betacom.betabooks.indirizzo;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.IndirizzoController;
import com.betacom.betabooks.controllers.UtenteController;
import com.betacom.betabooks.dto.inputs.IndirizzoReq;
import com.betacom.betabooks.dto.inputs.Registrazione;
import com.betacom.betabooks.dto.outputs.IndirizzoDTO;
import com.betacom.betabooks.dto.outputs.UtenteDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class IndirizzoControllerTest {

    @Autowired
    private IndirizzoController indirizzoC;

    @Autowired
    private UtenteController utenteC;

    private Long idUtente;
    private Long idIndirizzo;

    @BeforeEach
    void setUp() {
        log.debug("=== setUp: creazione dati fittizi ===");

        // ── 1. Crea utente con Registrazione ────────────────────────────────────
        Registrazione uReq = new Registrazione();
        uReq.setEmail("test_" + System.currentTimeMillis() + "@betabooks.it");
        uReq.setPassword("Password123!");
        uReq.setNome("Test");
        uReq.setCognome("Utente");
        uReq.setValidato(false);

        ResponseEntity<UtenteDTO> resUtente = utenteC.register(uReq);

        assertEquals(HttpStatus.CREATED, resUtente.getStatusCode(),
                "setUp FALLITO: registrazione utente non riuscita");
        assertNotNull(resUtente.getBody(), "setUp FALLITO: body utente è null");

        idUtente = resUtente.getBody().getId();
        log.debug("setUp: utente creato con ID={}", idUtente);

        // ── 2. Crea indirizzo fittizio ───────────────────────────────────────────
        IndirizzoReq iReq = buildReq(idUtente);
        iReq.setIsDefault(true);

        ResponseEntity<?> resInd = indirizzoC.create(iReq);
        assertEquals(HttpStatus.OK, resInd.getStatusCode(),
                "setUp FALLITO: creazione indirizzo non riuscita");

        idIndirizzo = (Long) resInd.getBody();
        log.debug("setUp: indirizzo creato con ID={}", idIndirizzo);
    }

    // ── helper ───────────────────────────────────────────────────────────────────

    private IndirizzoReq buildReq(Long idUtente) {
        IndirizzoReq req = new IndirizzoReq();
        req.setIdUtente(idUtente);
        req.setVia("Via Roma");
        req.setCivico("1");
        req.setComune("Milano");
        req.setCap("20100");
        req.setProvincia("MI");
        req.setPaese("Italia");
        req.setIsDefault(false);
        return req;
    }

    // ── TEST ─────────────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void createSuccesso() {
        log.debug("TEST [1] createIndirizzo - successo");
        IndirizzoReq req = buildReq(idUtente);
        req.setVia("Via Verdi");
        ResponseEntity<?> resp = indirizzoC.create(req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(2)
    public void createErrore_IdUtenteNull() {
        log.debug("TEST [2] createIndirizzo - idUtente null");
        ResponseEntity<?> resp = indirizzoC.create(buildReq(null));
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    @Test
    @Order(3)
    public void createErrore_UtenteInesistente() {
        log.debug("TEST [3] createIndirizzo - utente inesistente");
        ResponseEntity<?> resp = indirizzoC.create(buildReq(99999L));
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    @Test
    @Order(4)
    public void findAllSuccesso() {
        log.debug("TEST [4] findAll - successo");
        ResponseEntity<List<IndirizzoDTO>> resp = indirizzoC.findAll();
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertFalse(resp.getBody().isEmpty(), "La lista non dovrebbe essere vuota dopo il setUp");
    }

    @Test
    @Order(5)
    public void findByIdSuccesso() {
        log.debug("TEST [5] findById - successo");
        ResponseEntity<?> resp = indirizzoC.findById(idIndirizzo);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(6)
    public void findByIdErrore_NonTrovato() {
        log.debug("TEST [6] findById - non trovato");
        ResponseEntity<?> resp = indirizzoC.findById(99999L);
        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }

    @Test
    @Order(7)
    public void findByUserSuccesso() {
        log.debug("TEST [7] findByUser - successo");
        ResponseEntity<List<IndirizzoDTO>> resp = indirizzoC.findByUser(idUtente);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertFalse(resp.getBody().isEmpty());
    }

    @Test
    @Order(8)
    public void findByUserErrore_IdNull() {
        log.debug("TEST [8] findByUser - id null");
        ResponseEntity<List<IndirizzoDTO>> resp = indirizzoC.findByUser(null);
        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }

    @Test
    @Order(9)
    public void updateSuccesso() {
        log.debug("TEST [9] update - successo");
        IndirizzoReq req = new IndirizzoReq();
        req.setVia("Via Modificata");
        ResponseEntity<?> resp = indirizzoC.update(idIndirizzo, req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(10)
    public void updateErrore_NonTrovato() {
        log.debug("TEST [10] update - non trovato");
        ResponseEntity<?> resp = indirizzoC.update(99999L, new IndirizzoReq());
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    @Test
    @Order(11)
    public void deleteSuccesso() {
        log.debug("TEST [11] delete - successo");
        ResponseEntity<?> resp = indirizzoC.delete(idIndirizzo);
        assertEquals(HttpStatus.NO_CONTENT, resp.getStatusCode());
    }

    @Test
    @Order(12)
    public void deleteErrore_NonTrovato() {
        log.debug("TEST [12] delete - non trovato");
        ResponseEntity<?> resp = indirizzoC.delete(99999L);
        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }
}