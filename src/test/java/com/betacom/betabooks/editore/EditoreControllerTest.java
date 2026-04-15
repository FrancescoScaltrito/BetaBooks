package com.betacom.betabooks.editore;

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

import com.betacom.betabooks.controllers.EditoreController;
import com.betacom.betabooks.dto.inputs.EditoreReq;
import com.betacom.betabooks.repositories.IEditoreRepository;
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
public class EditoreControllerTest {

    @Autowired
    private EditoreController editoreC;

    @Autowired
    private IEditoreRepository editoreR;

    @Test
    @Order(1)
    public void createSuccess() throws Exception {
        log.debug("Test: Creazione editore con successo");
        
        EditoreReq req = new EditoreReq();
        req.setNome("Editore Test Nuovo");
        req.setDescrizione("Descrizione per un editore di test");

        ResponseEntity<Resp> resp = editoreC.create(req);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("EditoreController - Editore creato", resp.getBody().getMessage());
    }

    @Test
    @Order(2)
    public void updateSuccess() throws Exception {
        log.debug("Test: Aggiornamento editore con successo");
        
        Long idValido = editoreR.findAll().get(0).getId();
        
        EditoreReq req = new EditoreReq();
        req.setId(idValido);
        req.setNome("Editore Aggiornato");
        req.setDescrizione("Descrizione aggiornata");

        ResponseEntity<Resp> resp = editoreC.update(req);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("EditoreController - Editore aaggornato", resp.getBody().getMessage());
    }

    @Test
    @Order(3)
    public void getAll() throws Exception {
        log.debug("Test: Get All Editori");
        ResponseEntity<Object> resp = editoreC.list();
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(4)
    public void getById() throws Exception {
        log.debug("Test: Get Editore By Id");
        Long idValido = editoreR.findAll().get(0).getId();
        
        ResponseEntity<Object> resp = editoreC.findById(idValido);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(5)
    public void createFallimento_NomeNull() throws Exception {
        log.debug("Test: Creazione fallita - Nome Null");
        EditoreReq req = new EditoreReq(); 
        req.setDescrizione("Descrizione di test");
        
        ResponseEntity<Resp> resp = editoreC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE EditoreController - Nome Editore non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(6)
    public void createFallimento_DescrizioneNull() throws Exception {
        log.debug("Test: Creazione fallita - Descrizione Null");
        EditoreReq req = new EditoreReq();
        req.setNome("Nome Test");
        // req.setDescrizione(null); 
        
        ResponseEntity<Resp> resp = editoreC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE EditoreController - Descrizione Editore non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(7)
    public void updateFallimento_NonTrovato() throws Exception {
        log.debug("Test: Aggiornamento fallito - Editore inesistente");
        EditoreReq req = new EditoreReq();
        req.setId(99999L);
        req.setNome("Test");
        
        ResponseEntity<Resp> resp = editoreC.update(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE EditoreController - ERRORE Update - Editore non trovato in DB", resp.getBody().getMessage());
    }

    @Test
    @Order(8)
    public void findByIdFallimento_NonTrovato() throws Exception {
        log.debug("Test: GetById fallito - ID non trovato");
        ResponseEntity<Object> resp = editoreC.findById(99999L);
        
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE findById - Editore non trovato in DB", resp.getBody());
    }
}