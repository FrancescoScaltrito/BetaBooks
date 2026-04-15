package com.betacom.betabooks.utente;

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
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.UtenteController;
import com.betacom.betabooks.dto.inputs.Registrazione;
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.enums.RuoloUtente;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;

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
public class UtenteControllerTest {

    @Autowired
    private UtenteController utenteC;

    @Autowired
    private IUtenteRepository utenteR;

    @Autowired
    private PasswordEncoder passwordEncoder;

    private Long idUtente;
    private String emailTest;
    private final String passwordTest = "Password123!";

    @BeforeEach
    void setUp() {
        log.debug("Esecuzione setUp: Creazione utente di base per i test");

        Utente u = new Utente();
        emailTest = "utente_test_" + System.currentTimeMillis() + "@betabooks.it";
        u.setEmail(emailTest);
        u.setPassword(passwordEncoder.encode(passwordTest));
        u.setRuolo(RuoloUtente.USER);
        u.setValidato(true);
        
        u = utenteR.saveAndFlush(u);
        idUtente = u.getId();
    }

    // ── REGISTRAZIONE ────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void registerSuccesso() {
        log.debug("TEST [1] register - successo");
        Registrazione reg = new Registrazione();
        reg.setEmail("nuovo_utente_" + System.currentTimeMillis() + "@betabooks.it");
        reg.setPassword("NuovaPass123!");
        reg.setNome("Mario");
        reg.setCognome("Rossi");

        ResponseEntity<UtenteDTO> resp = utenteC.register(reg);
        assertEquals(HttpStatus.CREATED, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertEquals(reg.getEmail(), resp.getBody().getEmail());
    }

    // ── RICERCA ──────────────────────────────────────────────────────────────────

    @Test
    @Order(2)
    public void findByIdSuccesso() {
        log.debug("TEST [2] findById - successo");
        ResponseEntity<UtenteDTO> resp = utenteC.getById(idUtente);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals(emailTest, resp.getBody().getEmail());
    }

    @Test
    @Order(3)
    public void findAllSuccesso() {
        log.debug("TEST [3] findAll - successo");
        
        List<UtenteDTO> respList = utenteC.getAll();
        
        assertNotNull(respList);
        assertFalse(respList.isEmpty(), "La lista degli utenti non dovrebbe essere vuota");
    }

    // ── AGGIORNAMENTO ────────────────────────────────────────────────────────────

    @Test
    @Order(4)
    public void updateSuccesso() {
        log.debug("TEST [4] update - successo");
        UtenteReq req = new UtenteReq();
        String nuovaEmail = "aggiornata_" + System.currentTimeMillis() + "@betabooks.it";
        req.setEmail(nuovaEmail);

        ResponseEntity<UtenteDTO> resp = utenteC.update(idUtente, req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals(nuovaEmail, resp.getBody().getEmail());
    }

    @Test
    @Order(5)
    public void updateErrore_Inesistente() {
        log.debug("TEST [5] update - errore ID inesistente");
        UtenteReq req = new UtenteReq();
        req.setEmail("test@test.it");

        ResponseEntity<UtenteDTO> resp = utenteC.update(99999L, req);
        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }

    // ── ELIMINAZIONE ─────────────────────────────────────────────────────────────

    @Test
    @Order(6)
    public void deleteSuccesso() {
        log.debug("TEST [6] delete - successo");
        ResponseEntity<Void> resp = utenteC.delete(idUtente);
        assertEquals(HttpStatus.NO_CONTENT, resp.getStatusCode());
        
        assertFalse(utenteR.existsById(idUtente));
    }

    @Test
    @Order(7)
    public void deleteErrore_Inesistente() {
        log.debug("TEST [7] delete - errore ID inesistente");
        ResponseEntity<Void> resp = utenteC.delete(99999L);
        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }
}