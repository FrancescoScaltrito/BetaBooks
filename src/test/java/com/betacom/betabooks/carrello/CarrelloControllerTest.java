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

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

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
	public void myTest() {
		
		aggiungiCartaceo();
		aggiungiEbook();

		aggiungiProdotto();
		getByUtente();
		aumenta();
		decrementa();
		svuota();
		eliminaProdotto();

	}
	
	public void aggiungiCartaceo() {
		
	}
	
	public void aggiungiEbook() {
		
	}
	

	public void getByUtente() {
		log.debug("Test list carrelli");
		
		ResponseEntity<?> resp = carrelloC.getCarrello(1L);
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		Object body = resp.getBody();
		
		//Assertions.assertThat(lS.size()).isGreaterThan(0);
	}
	
	public void aggiungiProdotto() {
		log.debug("Aggiunta prodotto nel carrello");
		CarrelloReq req = new CarrelloReq();
		req.setIdFormatoLibro(1L);
		req.setIdUtente(1L);
		req.setQuantita(10);

		ResponseEntity<Resp> resp=null;
		try {
			resp = carrelloC.aggiungiProdotto(req);
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		assertEquals(HttpStatus.OK, resp.getStatusCode());
		Resp r = (Resp)resp.getBody();
		
	}

	public void aumenta() {
		
	}
	public void decrementa() {
		
	}
	public void svuota() {
		
	}
	public void eliminaProdotto() {
		
	}
}
