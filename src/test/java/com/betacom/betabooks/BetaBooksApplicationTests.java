package com.betacom.betabooks;

import org.junit.jupiter.api.Test;
import org.junit.platform.suite.api.SelectClasses;
import org.junit.platform.suite.api.Suite;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import com.betacom.betabooks.autore.AutoreControllerTest;
import com.betacom.betabooks.carrello.CarrelloControllerTest;
import com.betacom.betabooks.editore.EditoreControllerTest;
import com.betacom.betabooks.libro.LibroControllerTest;
import com.betacom.betabooks.ordine.OrdineControllerTest;
import com.betacom.betabooks.recensione.RecensioneControllerTest;
import com.betacom.betabooks.utente.UtenteControllerTest;
import com.betacom.betabooks.indirizzo.IndirizzoControllerTest;
import com.betacom.betabooks.wishlist.WishlistControllerTest;
import com.betacom.betabooks.profilo.ProfiloUtenteControllerTest;

@Suite
@SelectClasses({
	AutoreControllerTest.class,
	EditoreControllerTest.class,
    CarrelloControllerTest.class,
    OrdineControllerTest.class,
    LibroControllerTest.class,
    RecensioneControllerTest.class,
    UtenteControllerTest.class,
    IndirizzoControllerTest.class,
    WishlistControllerTest.class,
    ProfiloUtenteControllerTest.class
})
@TestPropertySource(properties = {
	    "database.username=postgres",
	    "database.password=100720",
	    "mail.sender=arianna.garaglia@gmail.com"
	})
@SpringBootTest
class BetaBooksApplicationTests {

    @Test
    void contextLoads() {
    }
}