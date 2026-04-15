package com.betacom.betabooks.carrello;

import static org.junit.jupiter.api.Assertions.*;

import java.math.BigDecimal;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.CarrelloController;
import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.enums.RuoloUtente;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Carrello;
import com.betacom.betabooks.models.CarrelloItem;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.ICarrelloItemRepository;
import com.betacom.betabooks.repositories.ICarrelloRepository;
import com.betacom.betabooks.repositories.IEditoreRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
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
public class CarrelloControllerTest {

    @Autowired
    private CarrelloController carrelloC;

    @Autowired
    private IUtenteRepository utenteR;

    @Autowired
    private ICarrelloRepository carrelloR;

    @Autowired
    private ICarrelloItemRepository carrelloItemR;

    @Autowired
    private ILibroRepository libroR;

    @Autowired
    private IFormatoLibroRepository formatoLibroR;

    @Autowired
    private IAutoreRepository autoreR;

    @Autowired
    private IEditoreRepository editoreR;

    private Long idUtente;
    private Long idFormatoLibroDaAggiungere;
    private Long idCarrelloItem;

    @BeforeEach
    void setUp() {
        log.debug("Esecuzione setUp: Creazione dati fittizi per il test Carrello");

        Utente u = new Utente();
        u.setEmail("carrello_test_" + System.currentTimeMillis() + "@betabooks.it");
        u.setPassword("Password123!");
        u.setRuolo(RuoloUtente.USER);
        u.setValidato(true);
        u = utenteR.saveAndFlush(u);
        idUtente = u.getId();

        Carrello c = new Carrello();
        c.setUtente(u);
        c = carrelloR.saveAndFlush(c);

        Autore a = new Autore();
        a.setNome("Luigi");
        a.setCognome("Pirandello");
        a.setNazionalita("Italiana");
        a = autoreR.saveAndFlush(a);

        Editore e = new Editore();
        e.setNome("Editore Test");
        e = editoreR.saveAndFlush(e);

        Libro l = new Libro();
        l.setTitolo("Libro Carrello Test");
        l.setAutore(a);
        l.setEditore(e);
        l = libroR.saveAndFlush(l);

        FormatoLibro f1 = new FormatoLibro();
        f1.setLibro(l);
        f1.setPrezzo(new BigDecimal("20.0"));
        f1.setTipoSupporto(TipoSupporto.CARTACEO);
        f1.setQuantita(100);
        f1 = formatoLibroR.saveAndFlush(f1);

        FormatoLibro f2 = new FormatoLibro();
        f2.setLibro(l);
        f2.setPrezzo(new BigDecimal("10.0"));
        f2.setTipoSupporto(TipoSupporto.EBOOK);
        f2 = formatoLibroR.saveAndFlush(f2);
        idFormatoLibroDaAggiungere = f2.getId();

        CarrelloItem item = new CarrelloItem();
        item.setCarrello(c);
        item.setFormatoLibro(f1);
        item.setQuantita(2);
        item = carrelloItemR.saveAndFlush(item);
        idCarrelloItem = item.getId();
    }

    @Test
    @Order(1)
    public void aggiungiProdottoSuccesso() throws Exception {
        log.debug("TEST [1] aggiungiProdotto - successo");
        CarrelloReq req = new CarrelloReq();
        req.setIdUtente(idUtente);
        req.setIdFormatoLibro(idFormatoLibroDaAggiungere);
        req.setQuantita(1);

        ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(2)
    public void aggiungiProdottoErrore() throws Exception {
        log.debug("TEST [2] aggiungiProdotto - errore ID inesistente");
        CarrelloReq req = new CarrelloReq();
        req.setIdUtente(99999L);
        req.setIdFormatoLibro(99999L);

        ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── VISUALIZZA CARRELLO ──────────────────────────────────────────────────────

    @Test
    @Order(3)
    public void getCarrelloSuccesso() {
        log.debug("TEST [3] getCarrello - successo");
        ResponseEntity<?> resp = carrelloC.getCarrello(idUtente);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(4)
    public void getCarrelloErrore() {
        log.debug("TEST [4] getCarrello - errore utente inesistente");
        ResponseEntity<?> resp = carrelloC.getCarrello(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── GESTIONE QUANTITÀ (INCREMENTO / DECREMENTO) ──────────────────────────────

    @Test
    @Order(5)
    public void decrementaSuccesso() {
        log.debug("TEST [5] decrementa - successo");
        ResponseEntity<Resp> resp = carrelloC.decrementa(idCarrelloItem);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(6)
    public void decrementaErrore() {
        log.debug("TEST [6] decrementa - errore item inesistente");
        ResponseEntity<Resp> resp = carrelloC.decrementa(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    @Test
    @Order(7)
    public void aumentaSuccesso() {
        log.debug("TEST [7] aumenta - successo");
        ResponseEntity<Resp> resp = carrelloC.aumenta(idCarrelloItem);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(8)
    public void aumentaErrore() {
        log.debug("TEST [8] aumenta - errore item inesistente");
        ResponseEntity<Resp> resp = carrelloC.aumenta(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── SPOSTA IN WISHLIST ───────────────────────────────────────────────────────

    @Test
    @Order(9)
    public void spostaInWishlistSuccesso() {
        log.debug("TEST [9] spostaInWishlist - successo");
        ResponseEntity<Resp> resp = carrelloC.spostaInWishlist(idCarrelloItem);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(10)
    public void spostaInWishlistErrore() {
        log.debug("TEST [10] spostaInWishlist - errore item inesistente");
        ResponseEntity<Resp> resp = carrelloC.spostaInWishlist(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── RIMOZIONE ITEM ───────────────────────────────────────────────────────────

    @Test
    @Order(11)
    public void rimuoviItemSuccesso() throws Exception {
        log.debug("TEST [11] rimuoviItem - successo");
        ResponseEntity<Resp> resp = carrelloC.rimuoviItem(idCarrelloItem);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(12)
    public void rimuoviItemErrore() throws Exception {
        log.debug("TEST [12] rimuoviItem - errore item inesistente");
        ResponseEntity<Resp> resp = carrelloC.rimuoviItem(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── SVUOTA CARRELLO ──────────────────────────────────────────────────────────

    @Test
    @Order(13)
    public void svuotaSuccesso() throws Exception {
        log.debug("TEST [13] svuota - successo");
        ResponseEntity<Resp> resp = carrelloC.svuota(idUtente);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(14)
    public void svuotaErrore() throws Exception {
        log.debug("TEST [14] svuota - errore utente inesistente");
        ResponseEntity<Resp> resp = carrelloC.svuota(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }
}