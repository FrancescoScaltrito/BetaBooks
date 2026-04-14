package com.betacom.betabooks.wishlist;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.math.BigDecimal;
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
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.WishlistController;
import com.betacom.betabooks.dto.outputs.WishlistDTO;
import com.betacom.betabooks.enums.RuoloUtente;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Carrello;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.models.Wishlist;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.ICarrelloRepository;
import com.betacom.betabooks.repositories.IEditoreRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.repositories.IWishlistRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)

public class WishlistControllerTest {

    @Autowired
    private WishlistController wishlistC;

    @Autowired
    private IUtenteRepository utenteR;

    @Autowired
    private ILibroRepository libroR;

    @Autowired
    private IFormatoLibroRepository formatoLibroR;

    @Autowired
    private IWishlistRepository wishlistR;

    @Autowired
    private ICarrelloRepository carrelloR;

    @Autowired
    private IAutoreRepository autoreR;

    @Autowired
    private IEditoreRepository editoreR;

    private Long idUtente;
    private Long idFormatoInWishlist;
    private Long idFormatoNotInWishlist;
    private Long idWishlist;

    @BeforeEach
    void setUp() {
        log.debug("Esecuzione setUp: Creazione entità fisse per il test Wishlist");

        Utente u = new Utente();
        u.setEmail("wishlist_" + System.currentTimeMillis() + "@betabooks.it");
        u.setPassword("password123");
        u.setRuolo(RuoloUtente.USER);
        u.setValidato(true);
        u = utenteR.saveAndFlush(u);
        idUtente = u.getId();

        Carrello c = new Carrello();
        c.setUtente(u);
        carrelloR.saveAndFlush(c);

        Autore a = new Autore();
        a.setNome("Mario");
        a.setCognome("Rossi");
        a.setBiografia("Bio test");
        a.setNazionalita("Italiana");
        a = autoreR.saveAndFlush(a);

        Editore e = new Editore();
        e.setNome("Editore Test");
        e.setDescrizione("Descrizione test");
        e = editoreR.saveAndFlush(e);

        Libro l = new Libro();
        l.setTitolo("Libro Wishlist Test");
        l.setAutore(a);   
        l.setEditore(e);  
        l = libroR.saveAndFlush(l);

        FormatoLibro f1 = new FormatoLibro();
        f1.setLibro(l);
        f1.setPrezzo(new BigDecimal("10.00"));
        f1.setTipoSupporto(TipoSupporto.CARTACEO);
        f1 = formatoLibroR.saveAndFlush(f1);
        idFormatoInWishlist = f1.getId();

        FormatoLibro f2 = new FormatoLibro();
        f2.setLibro(l);
        f2.setPrezzo(new BigDecimal("15.00")); 
        f2.setTipoSupporto(TipoSupporto.EBOOK); 
        f2 = formatoLibroR.saveAndFlush(f2);
        idFormatoNotInWishlist = f2.getId();

        Wishlist w = new Wishlist();
        w.setUtente(u);
        w.setFormatoLibro(f1);
        w = wishlistR.saveAndFlush(w);
        idWishlist = w.getId();
    }

    // ── ADD TO WISHLIST ──────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void addToWishlistSuccesso() {
        log.debug("TESTING - addToWishlist OK");
        ResponseEntity<Void> resp = wishlistC.addToWishlist(idUtente, idFormatoNotInWishlist);
        assertEquals(HttpStatus.CREATED, resp.getStatusCode());
    }

    @Test
    @Order(2)
    public void addToWishlistErrore() {
        log.debug("TESTING - addToWishlist ERRORE");
        ResponseEntity<Void> resp = wishlistC.addToWishlist(9999L, 9999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── REMOVE FROM WISHLIST ─────────────────────────────────────────────────────

    @Test
    @Order(3)
    public void removeFromWishlistSuccesso() {
        log.debug("TESTING - removeFromWishlist OK");
        ResponseEntity<Void> resp = wishlistC.removeFromWishlist(idUtente, idFormatoInWishlist);
        assertEquals(HttpStatus.NO_CONTENT, resp.getStatusCode());
    }

    @Test
    @Order(4)
    public void removeFromWishlistErrore() {
        log.debug("TESTING - removeFromWishlist ERRORE");
        
        ResponseEntity<Void> resp = wishlistC.removeFromWishlist(null, null);
        
        assertEquals(HttpStatus.NO_CONTENT, resp.getStatusCode());
    }

    // ── CONTROLLA IS IN WISHLIST ─────────────────────────────────────────────────

    @Test
    @Order(5)
    public void isInWishlist_True() {
        log.debug("TESTING - isInWishlist TRUE");
        ResponseEntity<Boolean> resp = wishlistC.isInWishlist(idUtente, idFormatoInWishlist);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertTrue(resp.getBody());
    }

    @Test
    @Order(6)
    public void isInWishlist_False() {
        log.debug("TESTING - isInWishlist FALSE");
        ResponseEntity<Boolean> resp = wishlistC.isInWishlist(idUtente, idFormatoNotInWishlist);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertFalse(resp.getBody());
    }

    @Test
    @Order(7)
    public void isInWishlistErrore() {
        log.debug("TESTING - isInWishlist ERRORE");
        
        ResponseEntity<Boolean> resp = wishlistC.isInWishlist(null, null);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertFalse(resp.getBody());
    }

    // ── GET WISHLIST BY USER ─────────────────────────────────────────────────────

    @Test
    @Order(8)
    public void getWishlistByUserSuccesso() {
        log.debug("TESTING - getWishlistByUser OK");
        ResponseEntity<List<WishlistDTO>> resp = wishlistC.getWishlistByUser(idUtente);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
        assertFalse(resp.getBody().isEmpty()); 
    }

    @Test
    @Order(9)
    public void getWishlistByUserErrore() {
        log.debug("TESTING - getWishlistByUser ERRORE");
        ResponseEntity<List<WishlistDTO>> resp = wishlistC.getWishlistByUser(null);
        assertEquals(HttpStatus.NOT_FOUND, resp.getStatusCode());
    }

    // ── PULISCI WISHLIST ─────────────────────────────────────────────────────────

    @Test
    @Order(10)
    public void clearWishlistSuccesso() {
        log.debug("TESTING - clearWishlist OK");
        ResponseEntity<Void> resp = wishlistC.clearWishlist(idUtente);
        assertEquals(HttpStatus.NO_CONTENT, resp.getStatusCode());
    }

    @Test
    @Order(11)
    public void clearWishlistErrore() {
        log.debug("TESTING - clearWishlist ERRORE");
        ResponseEntity<Void> resp = wishlistC.clearWishlist(null);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── SPOSTA NEL CARRELLO ──────────────────────────────────────────────────────

    @Test
    @Order(12)
    public void spostaNelCarrelloSuccesso() {
        log.debug("TESTING - spostaNelCarrello OK");
        ResponseEntity<String> resp = wishlistC.spostaNelCarrello(idWishlist);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(13)
    public void spostaNelCarrelloErrore() {
        log.debug("TESTING - spostaNelCarrello ERRORE");
        ResponseEntity<String> resp = wishlistC.spostaNelCarrello(99999L);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }
}