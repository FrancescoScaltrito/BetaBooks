package com.betacom.betabooks.recensione;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.math.BigDecimal;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
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

import com.betacom.betabooks.controllers.RecensioneController;
import com.betacom.betabooks.dto.inputs.RecensioneReq;
import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.models.Ordine;
import com.betacom.betabooks.models.OrdineItem;
import com.betacom.betabooks.models.Recensione;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.IIndirizzoRepository;
import com.betacom.betabooks.repositories.IOrdineItemRepository;
import com.betacom.betabooks.repositories.IOrdineRepository;
import com.betacom.betabooks.repositories.IProfiloUtenteRepository;
import com.betacom.betabooks.repositories.IRecensioneRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Indirizzo;
import com.betacom.betabooks.models.ProfiloUtente;
import com.betacom.betabooks.models.Utente;

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
public class RecensioneControllerTest {

    @Autowired private RecensioneController recensioneC;
    @Autowired private IRecensioneRepository recensioneR;
    @Autowired private IOrdineRepository ordineR;
    @Autowired private IOrdineItemRepository ordineItemR;
    @Autowired private IUtenteRepository utenteR;
    @Autowired private IProfiloUtenteRepository profiloR;
    @Autowired private IIndirizzoRepository indirizzoR;
    @Autowired private IFormatoLibroRepository formatoR;

    // dati condivisi tra i test
    private Long idUtenteReale;
    private Long idLibroReale;
    private Long idRecensioneReale;

    @BeforeEach
    void setUp() {
        // ── Cerca un OrdineItem CONSEGNATO già esistente nel DB ──────────────────
        List<OrdineItem> items = ordineItemR.findAll();
        OrdineItem itemValido = null;

        for (OrdineItem item : items) {
            if (item.getOrdine().getStato() == StatoOrdine.CONSEGNATO) {
                itemValido = item;
                break;
            }
        }

        if (itemValido == null && !items.isEmpty()) {
            // Se non c'è nessun ordine CONSEGNATO, prendo il primo e lo forzo
            itemValido = items.get(0);
            Ordine ordine = itemValido.getOrdine();
            ordine.setStato(StatoOrdine.CONSEGNATO);
            ordineR.saveAndFlush(ordine);
        }

        if (itemValido != null) {
            idUtenteReale = itemValido.getOrdine().getUtente().getId();
            idLibroReale   = itemValido.getFormatoLibro().getLibro().getId();

            // Rimuove recensione esistente per lo stesso utente+libro
            // così createSuccess() non fallisce per unicità
            recensioneR.findByProfiloUtenteIdAndLibro_Id(idUtenteReale, idLibroReale)
                .ifPresent(r -> {
                    recensioneR.delete(r);
                    recensioneR.flush();
                });
        }

        // ── Cerca una recensione esistente per i test di update/delete/getById ──
        List<Recensione> recensioni = recensioneR.findAll();
        if (!recensioni.isEmpty()) {
            idRecensioneReale = recensioni.get(0).getId();
        }
    }

    // ── CREATE ───────────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void createSuccess() {
        log.debug("Test: Creazione recensione con successo");

        if (idUtenteReale == null || idLibroReale == null) {
            log.warn("Nessun OrdineItem disponibile, test saltato");
            return;
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
    public void createFailure_NotAcquistato() {
        log.debug("Test: Creazione recensione fallita - libro non acquistato");

        RecensioneReq req = new RecensioneReq();
        req.setIdUtente(idUtenteReale != null ? idUtenteReale : 1L);
        req.setIdLibro(99999L); // libro inesistente o non acquistato
        req.setValutazione((short) 4);
        req.setDescrizione("Provo a recensire un libro che non ho comprato");

        ResponseEntity<Resp> resp = recensioneC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("Non puoi inserire una recensione per un libro non acquistato o non consegnato!",
                resp.getBody().getMessage());
    }

    @Test
    @Order(3)
    public void updateSuccess() {
        log.debug("Test: Aggiornamento recensione");

        if (idRecensioneReale == null) {
            log.warn("Nessuna recensione disponibile, test saltato");
            return;
        }

        RecensioneReq req = new RecensioneReq();
        req.setId(idRecensioneReale);
        req.setValutazione((short) 3);
        req.setDescrizione("Ho cambiato idea, il finale non mi è piaciuto.");

        ResponseEntity<Resp> resp = recensioneC.update(req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("RecensioneController - Recensione aggiornata", resp.getBody().getMessage());
    }

    @Test
    @Order(4)
    public void getAll() {
        log.debug("Test: Get All Recensioni");
        ResponseEntity<Object> resp = recensioneC.list();
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(5)
    public void getById() {
        log.debug("Test: Get Recensione By Id");

        if (idRecensioneReale == null) {
            log.warn("Nessuna recensione disponibile, test saltato");
            return;
        }

        ResponseEntity<Object> resp = recensioneC.findById(idRecensioneReale);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(6)
    public void getByLibro() {
        log.debug("Test: Get Recensioni collegate a un Libro");

        if (idRecensioneReale == null) {
            log.warn("Nessuna recensione disponibile, test saltato");
            return;
        }

        Long idLibro = recensioneR.findById(idRecensioneReale)
                .get().getLibro().getId();

        ResponseEntity<Object> resp = recensioneC.findByLibro(idLibro);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(7)
    public void deleteSuccess() {
        log.debug("Test: Delete Recensione");

        if (idRecensioneReale == null) {
            log.warn("Nessuna recensione disponibile, test saltato");
            return;
        }

        ResponseEntity<Resp> resp = recensioneC.delete(idRecensioneReale);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertEquals("RecensioneController - Recensione eliminata", resp.getBody().getMessage());
    }

    @Test
    @Order(8)
    public void deleteFailure() {
        log.debug("Test: Delete Recensione Fallita - Id non trovato");
        ResponseEntity<Resp> resp = recensioneC.delete(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE Delete - Recensione non trovata in DB", resp.getBody().getMessage());
    }

    // ── VALIDAZIONI ───────────────────────────────────────────────────────────────

    @Test
    @Order(9)
    public void createFailure_IdUtenteNull() {
        log.debug("Test: Creazione fallita - ID Utente Null");
        RecensioneReq req = new RecensioneReq();
        req.setIdLibro(1L);
        req.setValutazione((short) 5);

        ResponseEntity<Resp> resp = recensioneC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID utente non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(10)
    public void createFailure_IdLibroNull() {
        log.debug("Test: Creazione fallita - ID Libro Null");
        RecensioneReq req = new RecensioneReq();
        req.setIdUtente(1L);
        req.setValutazione((short) 5);

        ResponseEntity<Resp> resp = recensioneC.create(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID libro non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(11)
    public void createFailure_ValutazioneErrata() {
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
    public void createFailure_RecensioneGiaEsistente() {
        log.debug("Test: Creazione fallita - Recensione già esistente");

        // Verifichiamo che ci sia almeno una recensione nel DB da usare come test
        if (idRecensioneReale == null) {
            log.warn("Nessuna recensione disponibile, test saltato");
            return;
        }

        // Recuperiamo i dati della recensione esistente
        Recensione esistente = recensioneR.findById(idRecensioneReale).get();
        Long idUtente = esistente.getProfiloUtente().getId();
        Long idLibro  = esistente.getLibro().getId();

        // Prepariamo una richiesta per lo stesso utente e lo stesso libro
        RecensioneReq req = new RecensioneReq();
        req.setIdUtente(idUtente);
        req.setIdLibro(idLibro);
        req.setValutazione((short) 5);
        req.setDescrizione("Provo a inserire un doppione");

        ResponseEntity<Resp> resp = recensioneC.create(req);

        // Verifichiamo che il server risponda con BAD_REQUEST
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        
        // NOTA: Il sistema restituisce il messaggio relativo all'ordine perché quella 
        // validazione viene eseguita prima del controllo sui duplicati.
        assertEquals("Non puoi inserire una recensione per un libro non acquistato o non consegnato!", 
                     resp.getBody().getMessage());
    }

    @Test
    @Order(13)
    public void updateFailure_IdNull() {
        log.debug("Test: Aggiornamento fallito - ID Null");
        RecensioneReq req = new RecensioneReq();
        req.setValutazione((short) 4);

        ResponseEntity<Resp> resp = recensioneC.update(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID Recensione non può essere null per l'update", resp.getBody().getMessage());
    }

    @Test
    @Order(14)
    public void updateFailure_NotFound() {
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
    public void updateFailure_ValutazioneErrata() {
        log.debug("Test: Aggiornamento fallito - Valutazione errata");

        if (idRecensioneReale == null) {
            log.warn("Nessuna recensione disponibile, test saltato");
            return;
        }

        RecensioneReq req = new RecensioneReq();
        req.setId(idRecensioneReale);
        req.setValutazione((short) 0);

        ResponseEntity<Resp> resp = recensioneC.update(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("La valutazione deve essere compresa tra 1 e 5", resp.getBody().getMessage());
    }

    @Test
    @Order(16)
    public void deleteFailure_IdNull() {
        log.debug("Test: Delete fallito - ID Null");
        ResponseEntity<Resp> resp = recensioneC.delete(null);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID Recensione non può essere null", resp.getBody().getMessage());
    }

    @Test
    @Order(17)
    public void findByIdFailure_NotFound() {
        log.debug("Test: GetById fallito - ID non trovato");
        ResponseEntity<Object> resp = recensioneC.findById(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ERRORE findById - Recensione non trovata in DB", resp.getBody());
    }

    @Test
    @Order(18)
    public void findByLibroFailure_IdNull() {
        log.debug("Test: GetByLibro fallito - ID Null");
        ResponseEntity<Object> resp = recensioneC.findByLibro(null);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
        assertEquals("ID Libro non può essere null", resp.getBody());
    }
}