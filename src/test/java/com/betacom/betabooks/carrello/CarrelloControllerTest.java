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
import org.springframework.transaction.annotation.Transactional;

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
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class CarrelloControllerTest {
	
	@Autowired
	private CarrelloController carrelloC;
	
	private static final long ID_CARTACEO=1L;
	private static final long ID_EBOOK=10L;
	
	@Test
	@Order(1)
	public void aggiungiProdottoSuccesso() throws Exception{
		log.debug("Aggiunta prodotto nel carrello con successo");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(ID_CARTACEO);
		req.setIdUtente(1L);
		req.setQuantita(1);

		ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);

	    // Assert
	    assertEquals(HttpStatus.OK, resp.getStatusCode());
	    assertNotNull(resp.getBody());
	    assertEquals("CarrelloController - carrello aggiornato", resp.getBody().getMessage());
	}
	
	@Test
	@Order(2)
	public void aggiungiCopieNonDisponibili() throws Exception{
		log.debug("Aggiunta troppe copie");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(ID_CARTACEO);
		req.setIdUtente(1L);
		req.setQuantita(1000);

		ResponseEntity<Resp> resp = carrelloC.aggiungiProdotto(req);

	    // Assert
	    assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	}
	
	@Test
	@Order(3)
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
	
	@Test
	@Order(4)
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
	
	@Test
	@Order(5)
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

	@Test
	@Order(6)
	public void aumentaSuccesso() throws Exception{
		
		ResponseEntity<?> resp = carrelloC.aumenta(17L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		assertEquals("Quantità aggiornata con successo", ((Resp) resp.getBody()).getMessage());
		
	}
	
	@Test
	@Order(7)
	public void aumentaFallimento() throws Exception{
		
		ResponseEntity<?> resp = carrelloC.aumenta(15L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		assertEquals("Non puoi acquistare più di una copia digitale dello stesso libro", ((Resp) resp.getBody()).getMessage());
		
	}
	/*
	@Test
	@Order(8)
	public void getByUtente() {
		log.debug("Test list carrelli");
		
		ResponseEntity<?> resp = carrelloC.getCarrello(1L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
	}
	
	@Test
	@Order(9)
	public void getCarrelloFailure() {
		log.debug("Test carrello non esistente");
		
		ResponseEntity<?> resp = carrelloC.getCarrello(1000L);
	    assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	    assertEquals(("Errore nel recupero del carrello: Utente non trovato"), ((Resp) resp.getBody()).getMessage());
	}*/
	
	@Test
	@Order(10)
	public void decrementaSuccesso() throws Exception{
		
		ResponseEntity<?> resp = carrelloC.decrementa(15L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		assertEquals("Quantità aggiornata con successo", ((Resp) resp.getBody()).getMessage());
		
	}
	
	@Test
	@Order(11)
	public void decrementaFallimento() throws Exception{
		
		ResponseEntity<?> resp = carrelloC.decrementa(100L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		assertEquals("Elemento del carrello non trovato", ((Resp) resp.getBody()).getMessage());
		
	}


	@Test
	@Order(12)
	public void eliminaProdottoSuccesso() throws Exception{
		
		ResponseEntity<?> resp = carrelloC.rimuoviItem(15L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("CarrelloController - eliminazione item carrello riuscita", ((Resp) resp.getBody()).getMessage());
		
	}
	
	@Test
	@Order(13)
	public void eliminaProdottoFailure() throws Exception{
		

		ResponseEntity<?> resp = carrelloC.rimuoviItem(1000L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		 assertEquals("Elemento del carrello non trovato", ((Resp) resp.getBody()).getMessage());
		
	}
	
	@Test
	@Order(14)
	public void svuota() throws Exception{
		ResponseEntity<?> resp = carrelloC.svuota(1L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("CarrelloController - svuota carrello riuscito", ((Resp) resp.getBody()).getMessage());
	}
	
	@Test
	@Order(15)
	public void svuotaFailure() throws Exception{
		ResponseEntity<?> resp = carrelloC.svuota(1000L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
	}
	
	@Test
	@Order(16)
	public void spostaInWishlist() throws Exception{
		ResponseEntity<?> resp = carrelloC.spostaInWishlist(18L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("Prodotto spostato nella wishlist con successo", ((Resp) resp.getBody()).getMessage());
	}
	
	@Test
	@Order(17)
	public void spostaInWishlistFailure() throws Exception{
		ResponseEntity<?> resp = carrelloC.spostaInWishlist(19L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		 assertEquals("Errore durante lo spostamento: Item non trovato", ((Resp) resp.getBody()).getMessage());
	}
}
