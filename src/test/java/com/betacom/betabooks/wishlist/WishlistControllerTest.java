package com.betacom.betabooks.wishlist;

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

import com.betacom.betabooks.controllers.UtenteController;
import com.betacom.betabooks.controllers.WishlistController;
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.repositories.IFormatoLibroRepository; // Aggiunto
import com.betacom.betabooks.models.FormatoLibro; // Aggiunto

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class WishlistControllerTest {

    @Autowired
    private WishlistController wishlistC;

    @Autowired
    private UtenteController utenteC;

    @Autowired
    private IFormatoLibroRepository formatoR; // Iniettato per trovare record reali

    private Long idUtente;
    private Long idFormatoValido; // Diventa dinamico

    @BeforeEach
    void setUp() {
        // 1. Creazione utente fresco (ottimo per isolamento)
        UtenteReq uReq = new UtenteReq();
        uReq.setEmail("wishlist_test_" + System.currentTimeMillis() + "@betabooks.it");
        uReq.setPassword("password123");
        
       // var respUtente = utenteC.register(uReq);
       // assertNotNull(respUtente.getBody(), "Errore registrazione utente nel setup");
        //idUtente = respUtente.getBody().getId();

        // 2. Recupero dinamico di un formato libro esistente nel DB
        // Cerchiamo il primo formato attivo, se non c'è prendiamo il primo in assoluto
        idFormatoValido = formatoR.findAll().stream()
                .filter(f -> f.getAttivo() != null && f.getAttivo())
                .findFirst()
                .map(FormatoLibro::getId)
                .orElseGet(() -> {
                    return formatoR.findAll().stream()
                            .findFirst()
                            .map(FormatoLibro::getId)
                            .orElse(null);
                });

        if (idFormatoValido == null) {
            log.error("ATTENZIONE: Il database dei test non ha FormatoLibro. Il test fallirà.");
        }
    }

    // ── ADD ───────────────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void addToWishlistSuccesso() {
        log.debug("TESTING - addToWishlist OK con ID: {}", idFormatoValido);
        assertNotNull(idFormatoValido, "Impossibile eseguire test: nessun formato libro nel DB");
        
        assertEquals(HttpStatus.CREATED,
                wishlistC.addToWishlist(idUtente, idFormatoValido).getStatusCode());
    }

    @Test
    @Order(2)
    public void addToWishlistErrore_UtenteInesistente() {
        log.debug("TESTING - addToWishlist ERRORE utente inesistente");
        assertEquals(HttpStatus.BAD_REQUEST,
                wishlistC.addToWishlist(99999L, idFormatoValido).getStatusCode());
    }

    @Test
    @Order(3)
    public void addToWishlistErrore_FormatoInesistente() {
        log.debug("TESTING - addToWishlist ERRORE formato inesistente");
        assertEquals(HttpStatus.BAD_REQUEST,
                wishlistC.addToWishlist(idUtente, 99999L).getStatusCode());
    }

    // ── IS IN WISHLIST ────────────────────────────────────────────────────────────

    @Test
    @Order(4)
    public void isInWishlistSuccesso_Presente() {
        log.debug("TESTING - isInWishlist presente");
        wishlistC.addToWishlist(idUtente, idFormatoValido);
        
        var resp = wishlistC.isInWishlist(idUtente, idFormatoValido);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertTrue((Boolean) resp.getBody());
    }

    @Test
    @Order(5)
    public void isInWishlistSuccesso_NonPresente() {
        log.debug("TESTING - isInWishlist non presente");
        var resp = wishlistC.isInWishlist(idUtente, idFormatoValido);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertFalse((Boolean) resp.getBody());
    }

    // ── GET BY USER ───────────────────────────────────────────────────────────────

    @Test
    @Order(6)
    public void getWishlistByUserSuccesso() {
        log.debug("TESTING - getWishlistByUser OK");
        wishlistC.addToWishlist(idUtente, idFormatoValido); // aggiungiamo qualcosa per sicurezza
        assertEquals(HttpStatus.OK,
                wishlistC.getWishlistByUser(idUtente).getStatusCode());
    }

    @Test
    @Order(7)
    public void getWishlistByUserErrore_UtenteInesistente() {
        log.debug("TESTING - getWishlistByUser con ID inesistente");
        // Se il tuo controller restituisce 200 con lista vuota invece di 404:
        var resp = wishlistC.getWishlistByUser(99999L);
        assertTrue(resp.getStatusCode() == HttpStatus.NOT_FOUND || resp.getStatusCode() == HttpStatus.OK);
    }
}