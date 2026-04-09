package com.betacom.betabooks;

import org.junit.jupiter.api.Test;
import org.junit.platform.suite.api.SelectClasses;
import org.junit.platform.suite.api.Suite;
import org.springframework.boot.test.context.SpringBootTest;

import com.betacom.betabooks.carrello.CarrelloControllerTest;
import com.betacom.betabooks.libro.LibroControllerTest;
import com.betacom.betabooks.ordine.OrdineControllerTest;
import com.betacom.betabooks.recensione.RecensioneControllerTest;

@Suite
@SelectClasses ({
	CarrelloControllerTest.class,
	OrdineControllerTest.class,
	LibroControllerTest.class,
	RecensioneControllerTest.class
})
@SpringBootTest
class BetaBooksApplicationTests {

	@Test
	void contextLoads() {
	}

}
