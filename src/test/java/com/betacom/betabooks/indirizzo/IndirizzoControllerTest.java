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
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.IndirizzoDTO;
import com.betacom.betabooks.dto.outputs.UtenteDTO;

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
        // crea utente fresco ad ogni test
        UtenteReq uReq = new UtenteReq();
        uReq.setEmail("indirizzo_" + System.currentTimeMillis() + "@betabooks.it");
        uReq.setPassword("password123");
        //idUtente = utenteC.register(uReq).getBody().getId();

        // crea indirizzo base
        IndirizzoReq iReq = buildReq(idUtente);
        iReq.setIsDefault(true);
        idIndirizzo = (Long) indirizzoC.create(iReq).getBody();
    }

    // helper
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

    // ── CREATE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void createSuccesso() {
        IndirizzoReq req = buildReq(idUtente);
        req.setVia("Via Verdi");

        ResponseEntity<?> resp = indirizzoC.create(req);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        // il body è il Long id dell'indirizzo creato
        assertInstanceOf(Long.class, resp.getBody());
    }

    @Test
    @Order(2)
    public void createErrore_IdUtenteNull() {
        IndirizzoReq req = buildReq(null);

        ResponseEntity<?> resp = indirizzoC.create(req);

        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        // il body è il messaggio di errore stringa
        assertEquals("Id utente non può essere null", resp.getBody());
    }

    @Test
    @Order(3)
    public void createErrore_UtenteInesistente() {
        IndirizzoReq req = buildReq(99999L);

        ResponseEntity<?> resp = indirizzoC.create(req);

        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Utente non trovato", resp.getBody());
    }

    // ── FIND ALL ─────────────────────────────────────────────────────────────────

    @Test
    @Order(4)
    public void findAllSuccesso() {
        ResponseEntity<List<IndirizzoDTO>> resp = indirizzoC.findAll();

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertFalse(resp.getBody().isEmpty());
    }

    // ── FIND BY ID ───────────────────────────────────────────────────────────────

    @Test
    @Order(5)
    public void findByIdSuccesso() {
        ResponseEntity<?> resp = indirizzoC.findById(idIndirizzo);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertInstanceOf(IndirizzoDTO.class, resp.getBody());
    }

    @Test
    @Order(6)
    public void findByIdErrore_NonTrovato() {
        ResponseEntity<?> resp = indirizzoC.findById(99999L);

        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }

    // ── FIND BY USER ─────────────────────────────────────────────────────────────

    @Test
    @Order(7)
    public void findByUserSuccesso() {
        ResponseEntity<List<IndirizzoDTO>> resp = indirizzoC.findByUser(idUtente);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertFalse(resp.getBody().isEmpty());
    }

    @Test
    @Order(8)
    public void findByUserErrore_IdNull() {
        // idUtente null → IndirizzoImpl lancia eccezione → controller 404
        ResponseEntity<List<IndirizzoDTO>> resp = indirizzoC.findByUser(null);

        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }

    // ── UPDATE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(9)
    public void updateSuccesso() {
        IndirizzoReq req = new IndirizzoReq();
        req.setVia("Via Modificata");
        req.setComune("Torino");

        ResponseEntity<?> resp = indirizzoC.update(idIndirizzo, req);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(10)
    public void updateErrore_NonTrovato() {
        IndirizzoReq req = new IndirizzoReq();
        req.setVia("Via X");

        ResponseEntity<?> resp = indirizzoC.update(99999L, req);

        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Indirizzo non trovato", resp.getBody());
    }

    // ── DELETE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(11)
    public void deleteSuccesso() {
        ResponseEntity<?> resp = indirizzoC.delete(idIndirizzo);

        assertEquals(HttpStatus.NO_CONTENT, resp.getStatusCode());
    }

    @Test
    @Order(12)
    public void deleteErrore_NonTrovato() {
        ResponseEntity<?> resp = indirizzoC.delete(99999L);

        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }
}