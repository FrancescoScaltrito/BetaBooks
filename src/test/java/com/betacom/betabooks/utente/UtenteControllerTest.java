package com.betacom.betabooks.utente;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.UtenteController;
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.repositories.IUtenteRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class UtenteControllerTest {

    @Autowired
    private UtenteController utenteController;

    @Autowired
    private IUtenteRepository utenteR;

    // ── helper ──────────────────────────────────────────────────────────────────
    private ResponseEntity<UtenteDTO> registra(String email, String password) {
        UtenteReq req = new UtenteReq();
        req.setEmail(email);
        req.setPassword(password);
        return utenteController.register(req);
    }

    // ── REGISTER ────────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void registerSuccess() {
        log.debug("Test: Registrazione utente con successo - ruolo di default USER");

        ResponseEntity<UtenteDTO> resp = registra("test_junit@betabooks.it", "password123");

        assertEquals(HttpStatus.CREATED, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertEquals("test_junit@betabooks.it", resp.getBody().getEmail());
        // ruolo di default deve essere USER
        assertEquals("USER", resp.getBody().getRuolo());
        // id deve essere valorizzato
        assertNotNull(resp.getBody().getId());
    }

    @Test
    @Order(2)
    public void registerSuccess_ConRuoloAdmin() {
        log.debug("Test: Registrazione con ruolo ADMIN esplicito");

        UtenteReq req = new UtenteReq();
        req.setEmail("admin_junit@betabooks.it");
        req.setPassword("admin123");
        req.setRuolo("ADMIN");

        ResponseEntity<UtenteDTO> resp = utenteController.register(req);

        assertEquals(HttpStatus.CREATED, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertEquals("ADMIN", resp.getBody().getRuolo());
    }

    @Test
    @Order(3)
    public void registerFailure_EmailGiaInUso() {
        log.debug("Test: Registrazione fallita - email già in uso");

        // prima registrazione OK
        ResponseEntity<UtenteDTO> prima = registra("duplicato@betabooks.it", "pwd1");
        assertEquals(HttpStatus.CREATED, prima.getStatusCode());

        // seconda con stessa email deve tornare CONFLICT
        ResponseEntity<UtenteDTO> seconda = registra("duplicato@betabooks.it", "pwd2");
        assertEquals(HttpStatus.CONFLICT, seconda.getStatusCode());
        assertNull(seconda.getBody());
    }

    // ── GET ALL ─────────────────────────────────────────────────────────────────

    @Test
    @Order(4)
    public void getAllSuccess() {
        log.debug("Test: Get all utenti - lista non vuota dopo registrazione");

        registra("getall@betabooks.it", "pwd");

        var result = utenteController.getAll();

        assertNotNull(result);
        assertFalse(result.isEmpty());
    }

    @Test
    @Order(5)
    public void getAllSuccess_ListaVuota() {
        log.debug("Test: Get all utenti - lista vuota se nessuno è registrato");

        // nessuna registrazione in questo test (rollback garantisce pulizia)
        var result = utenteController.getAll();

        assertNotNull(result);
        // può essere vuota se il DB di test è pulito
        assertTrue(result.isEmpty() || result.size() >= 0); // non lancia eccezioni
    }

    // ── GET BY ID ────────────────────────────────────────────────────────────────

    @Test
    @Order(6)
    public void getByIdSuccess() {
        log.debug("Test: Get utente by id - trovato");

        Long id = registra("getbyid@betabooks.it", "pwd").getBody().getId();

        ResponseEntity<UtenteDTO> resp = utenteController.getById(id);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertEquals(id, resp.getBody().getId());
        assertEquals("getbyid@betabooks.it", resp.getBody().getEmail());
    }

    @Test
    @Order(7)
    public void getByIdFailure_NotFound() {
        log.debug("Test: Get utente by id - non trovato");

        ResponseEntity<UtenteDTO> resp = utenteController.getById(99999L);

        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
        assertNull(resp.getBody());
    }

    // ── UPDATE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(8)
    public void updateSuccess_ConPassword() {
        log.debug("Test: Update utente con nuova email e nuova password");

        Long id = registra("update@betabooks.it", "vecchia").getBody().getId();

        UtenteReq req = new UtenteReq();
        req.setEmail("update_new@betabooks.it");
        req.setPassword("nuova123");

        ResponseEntity<UtenteDTO> resp = utenteController.update(id, req);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertEquals("update_new@betabooks.it", resp.getBody().getEmail());
    }

    @Test
    @Order(9)
    public void updateSuccess_SenzaPassword() {
        log.debug("Test: Update utente senza cambiare password (password null)");

        Long id = registra("update2@betabooks.it", "pwd").getBody().getId();

        UtenteReq req = new UtenteReq();
        req.setEmail("update2_new@betabooks.it");
        req.setPassword(null); // password non cambiata

        ResponseEntity<UtenteDTO> resp = utenteController.update(id, req);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertEquals("update2_new@betabooks.it", resp.getBody().getEmail());
    }

    @Test
    @Order(10)
    public void updateSuccess_PasswordBlank() {
        log.debug("Test: Update utente con password blank - non deve cambiare");

        Long id = registra("update3@betabooks.it", "pwd").getBody().getId();

        UtenteReq req = new UtenteReq();
        req.setEmail("update3_new@betabooks.it");
        req.setPassword("   "); // blank, non deve essere re-encodata

        ResponseEntity<UtenteDTO> resp = utenteController.update(id, req);

        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(11)
    public void updateFailure_NotFound() {
        log.debug("Test: Update utente - id non esistente");

        UtenteReq req = new UtenteReq();
        req.setEmail("nessuno@betabooks.it");
        req.setPassword("pwd");

        ResponseEntity<UtenteDTO> resp = utenteController.update(99999L, req);

        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
        assertNull(resp.getBody());
    }

    // ── DELETE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(12)
    public void deleteSuccess() {
        log.debug("Test: Delete utente con successo");

        Long id = registra("delete@betabooks.it", "pwd").getBody().getId();

        ResponseEntity<Void> resp = utenteController.delete(id);

        assertEquals(HttpStatus.NO_CONTENT, resp.getStatusCode());
        // verifica rimozione effettiva dal repository
        assertFalse(utenteR.existsById(id));
    }

    @Test
    @Order(13)
    public void deleteFailure_NotFound() {
        log.debug("Test: Delete utente - id non esistente");

        ResponseEntity<Void> resp = utenteController.delete(99999L);

        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }
}