package com.betacom.betabooks.recensione;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.RecensioneController;
import com.betacom.betabooks.dto.inputs.RecensioneReq;
import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.models.Ordine;
import com.betacom.betabooks.models.OrdineItem;
import com.betacom.betabooks.models.Recensione;
import com.betacom.betabooks.repositories.IOrdineItemRepository;
import com.betacom.betabooks.repositories.IOrdineRepository;
import com.betacom.betabooks.repositories.IRecensioneRepository;
import com.betacom.betabooks.response.Resp;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional 
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class RecensioneControllerTest {

    @Autowired
    private RecensioneController recensioneC;

    @Autowired
    private IRecensioneRepository recensioneR;

    @Autowired
    private IOrdineRepository ordineR;
    
    @Autowired
    private IOrdineItemRepository ordineItemR;

    @Test
    @Order(1)
    public void createSuccess() throws Exception {
        log.debug("Test: Creazione recensione con successo");
        
        OrdineItem item = ordineItemR.findAll().get(0);
        Long idUtenteReale = item.getOrdine().getUtente().getId();
        Long idLibroReale = item.getFormatoLibro().getLibro().getId();
        
        Ordine ordine = item.getOrdine();
        ordine.setStato(StatoOrdine.CONSEGNATO);
        ordineR.saveAndFlush(ordine);

        List<Recensione> recensioniEsistenti = recensioneR.findByLibroId(idLibroReale);
        for(Recensione r : recensioniEsistenti) {
            if(r.getProfiloUtente().getUtente().getId().equals(idUtenteReale)) {
                recensioneC.delete(r.getId());
                recensioneR.flush();
            }
        }

        RecensioneReq req = new RecensioneReq();
        req.setIdUtente(idUtenteReale); 
        req.setIdLibro(idLibroReale); 
        req.setValutazione((short) 5);
        req.setDescrizione("Bellissimo libro, super consigliato!");

        ResponseEntity<Resp> resp = recensioneC.create(req);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("RecensioneController - Recensione creata", resp.getBody().getMessage());
    }

    @Test
    @Order(2)
    public void createFailure_NotAcquistato() throws Exception {
        log.debug("Test: Creazione recensione fallita (Libro non acquistato/consegnato)");
        RecensioneReq req = new RecensioneReq();
        
        Long idUtenteValido = ordineItemR.findAll().get(0).getOrdine().getUtente().getId();
        
        req.setIdUtente(idUtenteValido);
        req.setIdLibro(99999L);
        req.setValutazione((short) 4);
        req.setDescrizione("Provo a recensire un libro che non ho comprato");

        ResponseEntity<Resp> resp = recensioneC.create(req);
        
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Non puoi inserire una recensione per un libro non acquistato o non consegnato!", resp.getBody().getMessage());
    }

    @Test
    @Order(3)
    public void updateSuccess() throws Exception {
        log.debug("Test: Aggiornamento recensione");
        
        Long idValido = recensioneR.findAll().get(0).getId();
        
        RecensioneReq req = new RecensioneReq();
        req.setId(idValido);
        req.setValutazione((short) 3);
        req.setDescrizione("Ho cambiato idea, il finale non mi è piaciuto.");

        ResponseEntity<Resp> resp = recensioneC.update(req);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("RecensioneController - Recensione aggiornata", resp.getBody().getMessage());
    }

    @Test
    @Order(4)
    public void getAll() throws Exception {
        log.debug("Test: Get All Recensioni");
        ResponseEntity<Object> resp = recensioneC.list();
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(5)
    public void getById() throws Exception {
        log.debug("Test: Get Recensione By Id");
        Long idValido = recensioneR.findAll().get(0).getId();
        ResponseEntity<Object> resp = recensioneC.findById(idValido); 
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(6)
    public void getByLibro() throws Exception {
        log.debug("Test: Get Recensioni collegate a un Libro");
        Long idLibroReale = recensioneR.findAll().get(0).getLibro().getId();
        ResponseEntity<Object> resp = recensioneC.findByLibro(idLibroReale); 
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(7)
    public void deleteSuccess() throws Exception {
        log.debug("Test: Delete Recensione");
        Long idValido = recensioneR.findAll().get(0).getId();
        ResponseEntity<Resp> resp = recensioneC.delete(idValido); 
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("RecensioneController - Recensione eliminata", resp.getBody().getMessage());
    }

    @Test
    @Order(8)
    public void deleteFailure() throws Exception {
        log.debug("Test: Delete Recensione Fallita (Id non trovato)");
        ResponseEntity<Resp> resp = recensioneC.delete(99999L);
        
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE Delete - Recensione non trovata in DB", resp.getBody().getMessage());
    }
    
 //ECCEZIONI E VALIDAZIONI

    @Test
    @Order(9)
    public void createFailure_IdUtenteNull() throws Exception {
        log.debug("Test: Creazione fallita - ID Utente Null");
        RecensioneReq req = new RecensioneReq();
        // req.setIdUtente(null); 
        req.setIdLibro(1L);
        req.setValutazione((short) 5);
        
        ResponseEntity<Resp> resp = recensioneC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID utente non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(10)
    public void createFailure_IdLibroNull() throws Exception {
        log.debug("Test: Creazione fallita - ID Libro Null");
        RecensioneReq req = new RecensioneReq();
        req.setIdUtente(1L);
        // req.setIdLibro(null);
        req.setValutazione((short) 5);
        
        ResponseEntity<Resp> resp = recensioneC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID libro non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(11)
    public void createFailure_ValutazioneErrata() throws Exception {
        log.debug("Test: Creazione fallita - Valutazione fuori range");
        RecensioneReq req = new RecensioneReq();
        req.setIdUtente(1L);
        req.setIdLibro(1L);
        req.setValutazione((short) 10);
        
        ResponseEntity<Resp> resp = recensioneC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("La valutazione deve essere compresa tra 1 e 5", resp.getBody().getMessage());
    }

    @Test
    @Order(12)
    public void createFailure_RecensioneGiaEsistente() throws Exception {
        log.debug("Test: Creazione fallita - Recensione già esistente");
        RecensioneReq req = new RecensioneReq();
        req.setIdUtente(1L);
        req.setIdLibro(1L);
        req.setValutazione((short) 5);
        
        ResponseEntity<Resp> resp = recensioneC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Hai già recensito questo libro", resp.getBody().getMessage());
    }

    @Test
    @Order(13)
    public void updateFailure_IdNull() throws Exception {
        log.debug("Test: Aggiornamento fallito - ID Null");
        RecensioneReq req = new RecensioneReq();
        req.setValutazione((short) 4);
        
        ResponseEntity<Resp> resp = recensioneC.update(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID Recensione non può essere null per l'update", resp.getBody().getMessage());
    }

    @Test
    @Order(14)
    public void updateFailure_NotFound() throws Exception {
        log.debug("Test: Aggiornamento fallito - Recensione inesistente");
        RecensioneReq req = new RecensioneReq();
        req.setId(99999L);
        req.setValutazione((short) 4);
        
        ResponseEntity<Resp> resp = recensioneC.update(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE Update - Recensione non trovata in DB", resp.getBody().getMessage());
    }

    @Test
    @Order(15)
    public void updateFailure_ValutazioneErrata() throws Exception {
        log.debug("Test: Aggiornamento fallito - Valutazione errata");
        Long idValido = recensioneR.findAll().get(0).getId();
        
        RecensioneReq req = new RecensioneReq();
        req.setId(idValido);
        req.setValutazione((short) 0);
        
        ResponseEntity<Resp> resp = recensioneC.update(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("La valutazione deve essere compresa tra 1 e 5", resp.getBody().getMessage());
    }

    @Test
    @Order(16)
    public void deleteFailure_IdNull() throws Exception {
        log.debug("Test: Delete fallito - ID Null");
        ResponseEntity<Resp> resp = recensioneC.delete(null);
        
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID Recensione non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(17)
    public void findByIdFailure_NotFound() throws Exception {
        log.debug("Test: GetById fallito - ID non trovato");
        ResponseEntity<Object> resp = recensioneC.findById(99999L);
        
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE findById - Recensione non trovata in DB", resp.getBody());
    }

    @Test
    @Order(18)
    public void findByLibroFailure_IdNull() throws Exception {
        log.debug("Test: GetByLibro fallito - ID Null");
        ResponseEntity<Object> resp = recensioneC.findByLibro(null);
        
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID Libro non può essere null", resp.getBody());
    }
}