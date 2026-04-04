package com.betacom.betabooks.ordine;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.carrello.CarrelloControllerTest;
import com.betacom.betabooks.controllers.CarrelloController;
import com.betacom.betabooks.controllers.OrdineController;
import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.response.Resp;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class OrdineControllerTest {
	
	@Autowired
	private OrdineController ordineC;
	
	@Test
	@Order(1)
	public void checkout() throws Exception{
		ResponseEntity<?> resp = ordineC.checkout(1L, MetodoPagamento.BONIFICO, 2L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("Ordine Controller: ordine effettuato con successo", ((Resp) resp.getBody()).getMessage());	 
	}
	
	@Test
	@Order(2)
	public void checkoutFailure() throws Exception{
		ResponseEntity<?> resp = ordineC.checkout(1000L, MetodoPagamento.BONIFICO, 2L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		 assertEquals("Utente non trovato", ((Resp) resp.getBody()).getMessage());
	}
	
	@Test
	@Order(3)
	public void getStorico() throws Exception{
		ResponseEntity<?> resp = ordineC.getStorico(1L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("Storico ordini recuperato con successo", ((Resp) resp.getBody()).getMessage());
	}

	@Test
	@Order(4)
	public void getOrdine() throws Exception{
		ResponseEntity<?> resp = ordineC.getOrdine(1L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("Ordine recuperato con successo", ((Resp) resp.getBody()).getMessage());
	}
	
	@Test
	@Order(5)
	public void getOrdineFailure() throws Exception{
		ResponseEntity<?> resp = ordineC.getOrdine(1000L);
		assertEquals(HttpStatus.INTERNAL_SERVER_ERROR, resp.getStatusCode());
		 assertEquals("Errore nel recupero dell'ordine", ((Resp) resp.getBody()).getMessage());
	}
	
	@Test
	@Order(6)
	public void annullaOrdine() throws Exception{
		ResponseEntity<?> resp = ordineC.annullaOrdine(1L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		 assertEquals("Ordine annullato con successo", ((Resp) resp.getBody()).getMessage());	 
	}
	
	@Test
	@Order(7)
	public void annullaOrdineFailure() throws Exception{
		ResponseEntity<?> resp = ordineC.annullaOrdine(2L);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		 assertEquals("Impossibile annullare un ordine già in lavorazione o spedito", ((Resp) resp.getBody()).getMessage());	 
	}
	
	@Test
	@Order(8)
	public void aggiornaStato() throws Exception{
		ResponseEntity<?> resp = ordineC.aggiornaStato(2L, StatoOrdine.CONSEGNATO);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
	}
	
	@Test
	@Order(9)
	public void aggiornaStatoFailure() throws Exception{
		ordineC.annullaOrdine(1L);
		ResponseEntity<?> resp = ordineC.aggiornaStato(1L, StatoOrdine.CONSEGNATO);
		assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
		 assertEquals("Impossibile modificare lo stato di un ordine già annullato.", ((Resp) resp.getBody()).getMessage());	 
	}
}
