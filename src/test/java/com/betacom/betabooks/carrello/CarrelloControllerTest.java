package com.betacom.betabooks.carrello;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.time.LocalDate;
import java.util.List;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.betacom.betabooks.controllers.CarrelloController;
import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doThrow;

import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@Slf4j
@RequiredArgsConstructor
@SpringBootTest
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class CarrelloControllerTest {
	
	@Autowired
	private CarrelloController carrelloC;


	
	@SuppressWarnings("unchecked")
	@Test
	@Order(1)	
	public void myTest() throws Exception {
		

		aggiungiProdottoSuccesso();
		aggiungiProdottoNonAttivo();
		aggiungiDueEbook();
		aggiungiEbookPresente();
		aggiungiCopieNonDisponibili();
		getByUtente();
		eliminaProdottoSuccesso();
		eliminaProdottoFailure();
		
		aumenta();
		decrementa();
		svuota();
		

	}
	
	
	

	public void getByUtente() {
		log.debug("Test list carrelli");
		
		ResponseEntity<?> resp = carrelloC.getCarrello(1L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
	}
	
	public void getCarrelloFailure() {
		log.debug("Test carrello non esistente");
		
		ResponseEntity<?> resp = carrelloC.getCarrello(1000L);
	    assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	    assertEquals(("Utente non trovato"), ((Resp) resp.getBody()).getMessage());
	}
	
	@Test()
	public void aggiungiProdottoSuccesso() throws Exception{
		log.debug("Aggiunta prodotto nel carrello con successo");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(1L);
		req.setIdUtente(1L);
		req.setQuantita(1);

		ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);

	    // Assert
	    assertEquals(HttpStatus.OK, resp.getStatusCode());
	    assertNotNull(resp.getBody());
	    assertEquals("CarrelloController - carrello aggiornato", resp.getBody().getMessage());
	}
	
	@Test()
	public void aggiungiCopieNonDisponibili() throws Exception{
		log.debug("Aggiunta troppe copie");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(9L);
		req.setIdUtente(1L);
		req.setQuantita(100);

		ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);

	    // Assert
	    assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	}
	
	@Test()
	public void aggiungiEbookPresente() throws Exception{
		log.debug("Aggiunta di due ebook nel carrello");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(3L);
		req.setIdUtente(1L);
		req.setQuantita(1);

		ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);

	    // Assert
	    // Assert
	    assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	    assertEquals(("Ebook già presente nel carrello, non incremento"), resp.getBody().getMessage());
	}
	
	@Test()
	public void aggiungiDueEbook() throws Exception{
		log.debug("Aggiunta di due ebook nel carrello");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(3L);
		req.setIdUtente(1L);
		req.setQuantita(2);

		ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);

	    // Assert
	    // Assert
	    assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	    assertEquals(("Non puoi acquistare più di una copia digitale dello stesso libro"), resp.getBody().getMessage());
	}
	
	@Test()
	public void aggiungiProdottoNonAttivo() throws Exception{
		log.debug("Aggiunta prodotto non attivo nel carrello");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(4L);
		req.setIdUtente(1L);
		req.setQuantita(10);

	
		// Act
	    ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);

	    // Assert
	    assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	    assertEquals("Spiacenti, questo formato non è più disponibile.", resp.getBody().getMessage());
	}

	public void aumenta() throws Exception{
		
	}
	public void decrementa() throws Exception{
		
	}
	public void svuota() throws Exception{
		
	}
	public void eliminaProdottoSuccesso() throws Exception{
		
		ResponseEntity<?> resp = carrelloC.rimuoviItem(14L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("CarrelloController - eliminazione item carrello riuscita", ((Resp) resp.getBody()).getMessage());
		
	}
	
	public void eliminaProdottoFailure() throws Exception{
		

		ResponseEntity<?> resp = carrelloC.rimuoviItem(1000L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		 assertEquals("Elemento del carrello non trovato", ((Resp) resp.getBody()).getMessage());
		
	}
}
