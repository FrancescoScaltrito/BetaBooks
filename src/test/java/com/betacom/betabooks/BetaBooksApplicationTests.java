package com.betacom.betabooks;

import org.junit.jupiter.api.Test;
import org.junit.platform.suite.api.SelectClasses;
import org.junit.platform.suite.api.Suite;
import org.springframework.boot.test.context.SpringBootTest;

import com.betacom.betabooks.carrello.CarrelloControllerTest;
import com.betacom.betabooks.libro.LibroControllerTest;
import com.betacom.betabooks.ordine.OrdineControllerTest;
import com.betacom.betabooks.recensione.RecensioneControllerTest;
import com.betacom.betabooks.utente.UtenteControllerTest;
import com.betacom.betabooks.indirizzo.IndirizzoControllerTest;
import com.betacom.betabooks.wishlist.WishlistControllerTest;
import com.betacom.betabooks.profilo.ProfiloUtenteControllerTest;

@Suite
@SelectClasses({
    CarrelloControllerTest.class,
    OrdineControllerTest.class,
    LibroControllerTest.class,
    RecensioneControllerTest.class,
    UtenteControllerTest.class,
    IndirizzoControllerTest.class,
    WishlistControllerTest.class,
    ProfiloUtenteControllerTest.class
})
@SpringBootTest
class BetaBooksApplicationTests {

    @Test
    void contextLoads() {
    }
}