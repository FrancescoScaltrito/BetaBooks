package com.betacom.betabooks.ordine;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;


import com.betacom.betabooks.controllers.OrdineController;
import com.betacom.betabooks.enums.FiltroTemporale;
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
	
	@Test
    @Order(10)
    public void getStoricoFiltratoSuccess() throws Exception {
        // Test con filtro: ordini COMPLETATI degli ultimi 3 mesi
        ResponseEntity<Resp> resp = ordineC.getStoricoFiltrato(1L, true, FiltroTemporale.ULTIMI_3_MESI);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody().getObj());
        assertEquals("Ricerca effettuata con successo", resp.getBody().getMessage());
        
        log.info("Test getStoricoFiltratoSuccess completato");
    }

    @Test
    @Order(11)
    public void getStoricoFiltratoSenzaPeriodo() throws Exception {
        // Test senza filtro temporale (periodo = null), deve restituire "TUTTO" per default
        ResponseEntity<Resp> resp = ordineC.getStoricoFiltrato(1L, false, null);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody().getObj());
        assertEquals("Ricerca effettuata con successo", resp.getBody().getMessage());
        
        log.info("Test getStoricoFiltratoSenzaPeriodo (default) completato");
    }

    @Test
    @Order(12)
    public void getStoricoFiltratoUtenteInesistente() throws Exception {
        // Test con utente che non ha ordini o non esiste (dovrebbe restituire lista vuota, non errore)
        ResponseEntity<Resp> resp = ordineC.getStoricoFiltrato(999L, true, FiltroTemporale.TUTTO);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        List<?> lista = (List<?>) resp.getBody().getObj();
        assertTrue(lista.isEmpty());
        
        log.info("Test getStoricoFiltratoUtenteInesistente completato");
    }
}
