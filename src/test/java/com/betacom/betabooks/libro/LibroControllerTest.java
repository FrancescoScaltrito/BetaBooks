package com.betacom.betabooks.libro;

import static org.junit.jupiter.api.Assertions.*;

import java.math.BigDecimal;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.LibroController;
import com.betacom.betabooks.dto.inputs.FormatoLibroReq;
import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.IEditoreRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.response.Resp;

import jakarta.persistence.EntityManager;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestPropertySource(properties = {
	    "database.username=postgres",
	    "database.password=100720",
	    "mail.sender=arianna.garaglia@gmail.com"
	})
public class LibroControllerTest {

    @Autowired
    private LibroController libroC;

    @Autowired
    private ILibroRepository libroR;

    @Autowired
    private IFormatoLibroRepository formatoLibroR;

    @Autowired
    private IAutoreRepository autoreR;

    @Autowired
    private IEditoreRepository editoreR;

    @Autowired
    private EntityManager entityManager;

    private Long idLibro;
    private Long idFormato;
    private Long idAutore;
    private Long idEditore;

    @BeforeEach
    void setUp() {
        log.debug("Esecuzione setUp: Creazione dati fittizi per il test Libro");

  
        Autore a = new Autore();
        a.setNome("AutoreTest_" + System.currentTimeMillis());
        a.setCognome("CognomeTest_" + System.currentTimeMillis());
        a.setAttivo(true); 
        a = autoreR.saveAndFlush(a);
        idAutore = a.getId();

     
        Editore e = new Editore();
        e.setNome("EditoreTest_" + System.currentTimeMillis());
        e.setAttivo(true);
        e = editoreR.saveAndFlush(e);
        idEditore = e.getId();

    
        Libro l = new Libro();
        l.setTitolo("Libro di Test " + System.currentTimeMillis());
        l.setAutore(a);
        l.setEditore(e);
        l.setDescrizione("Descrizione del libro di test");
        l = libroR.saveAndFlush(l);
        idLibro = l.getId();

      
        FormatoLibro f = new FormatoLibro();
        f.setLibro(l);
        f.setPrezzo(BigDecimal.valueOf(19.99)); 
        f.setTipoSupporto(TipoSupporto.CARTACEO);
        f.setQuantita(50);
        f.setAttivo(true); 
        f = formatoLibroR.saveAndFlush(f);
        idFormato = f.getId();

        // pulisce la cache di Hibernate per assicurarsi che i metodi del Service vedano i dati freschi
        entityManager.clear();
    }

    // ── GESTIONE LIBRO ───────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void createLibroSuccesso() {
        log.debug("TEST [1] createLibro - successo");
        LibroReq req = new LibroReq();
        req.setTitolo("Nuovo Libro Test");
        req.setIdAutore(idAutore);
        req.setIdEditore(idEditore);
        req.setDescrizione("Descrizione nuova");

        ResponseEntity<Resp> resp = libroC.create(req);
        
        if (resp.getStatusCode() == HttpStatus.BAD_REQUEST) {
            log.error("🚨 ERRORE CREATE LIBRO: {}", resp.getBody().getMessage());
        }
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(2)
    public void updateLibroSuccesso() {
        log.debug("TEST [2] updateLibro - successo");
        LibroReq req = new LibroReq();
        req.setId(idLibro);
        req.setTitolo("Libro Aggiornato");
        req.setIdAutore(idAutore);
        req.setIdEditore(idEditore);

        ResponseEntity<Resp> resp = libroC.update(req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(3)
    public void getLibroByIdSuccesso() {
        log.debug("TEST [3] getLibroById - successo");
        ResponseEntity<Object> resp = libroC.findById(idLibro);
        
        assertEquals(HttpStatus.OK, resp.getStatusCode(), "Fallito! Motivo: " + resp.getBody());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(4)
    public void getAllLibriSuccesso() {
        log.debug("TEST [4] getAllLibri - successo");
        ResponseEntity<Object> resp = libroC.list();
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }

    @Test
    @Order(5)
    public void cercaLibriSuccesso() {
        log.debug("TEST [5] cercaLibri - successo");
        ResponseEntity<Object> resp = libroC.cerca(null, null, null, null, null, null);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    // ── GESTIONE FORMATO ─────────────────────────────────────────────────────────

    @Test
    @Order(6)
    public void createFormatoSuccesso() {
        log.debug("TEST [6] createFormato - successo");
        LibroReq req = new LibroReq();
        req.setPrezzo(new BigDecimal("19.99"));
        req.setTipoSupporto(TipoSupporto.CARTACEO);
        req.setTipoCopertina(TipoCopertina.FLESSIBILE);
        req.setQuantita(10);                  
        req.setIsbn("1234567890123");        

        ResponseEntity<Object> resp = libroC.createFormato(idLibro, req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(7)
    public void updateFormatoSuccesso() {
        log.debug("TEST [7] updateFormato - successo");
        FormatoLibroReq req = new FormatoLibroReq();
        req.setId(idFormato);
        req.setIdLibro(idLibro);
        req.setPrezzo(new BigDecimal("25.0"));
        req.setQuantita(100);

        ResponseEntity<Resp> resp = libroC.updateFormato(req);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(8)
    public void getFormatiByLibroSuccesso() {
        log.debug("TEST [8] getFormatiByLibro - successo");
        ResponseEntity<Object> resp = libroC.getFormatiByLibro(idLibro);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(9)
    public void getFormatoByIdSuccesso() {
        log.debug("TEST [9] getFormatoById - successo");
        ResponseEntity<Object> resp = libroC.getFormatoById(idFormato);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(10)
    public void getFormatoCompletoSuccesso() {
        log.debug("TEST [10] getFormatoCompleto - successo");
        ResponseEntity<Object> resp = libroC.getFormatoCompleto(idFormato);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(11)
    public void disattivaFormatoSuccesso() {
        log.debug("TEST [12] disattivaFormato - successo");
        ResponseEntity<Resp> resp = libroC.disattivaFormato(idFormato);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(12)
    public void eliminaFormatoSuccesso() {
        log.debug("TEST [13] eliminaFormato - successo");
        ResponseEntity<Resp> resp = libroC.eliminaFormato(idFormato);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    // ── ELIMINAZIONE LIBRO ───────────────────────────────────────────────────────

    @Test
    @Order(13)
    public void deleteLibroSuccesso() {
        log.debug("TEST [14] deleteLibro - successo");

        ResponseEntity<Resp> resp = libroC.delete(idLibro);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }
}