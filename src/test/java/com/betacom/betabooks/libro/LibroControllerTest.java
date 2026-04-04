package com.betacom.betabooks.libro;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.math.BigDecimal;
import java.util.List;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.http.MediaType;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.betacom.betabooks.controllers.LibroController;
import com.betacom.betabooks.dto.inputs.FormatoLibroReq;
import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.dto.outputs.FormatoLibroDTO;
import com.betacom.betabooks.dto.outputs.LibroDTO;
import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.response.Resp;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class LibroControllerTest {
	
	@Autowired
	private LibroController libC;
	
	private static final long ID_AUTORE_VALIDO=1;
	private static final long ID_LIBRO_VALIDO =1;
	private static final long ID_EDITORE_VALIDO=1;
	private static final List<Long> ID_CATEGORIE_VALIDE = List.of(1L,2L);
	
	@Test
	@Order(1)
	public void creaLibroSuccesso() throws Exception{
		log.debug("TESTING - aggiunta libro OK");
		LibroReq req = new LibroReq();
		req.setTitolo("TEST");
		req.setDescrizione("ZZZ");
		req.setIdAutore(ID_AUTORE_VALIDO);
		req.setIdCategorie(ID_CATEGORIE_VALIDE);
		req.setIdEditore(ID_EDITORE_VALIDO);
		
		ResponseEntity<Resp> response = libC.create(req);
		assertEquals(HttpStatus.OK, response.getStatusCode());
	    assertNotNull(response.getBody());
	    assertEquals("LibroController - Libro creato", response.getBody().getMessage());
		
	}
	
	@Test
	@Order(2)
	public void creaLibroErrore() throws Exception{
		log.debug("TESTING - aggiunta libro ERRORE");
		LibroReq req = new LibroReq();
		req.setTitolo("TEST");
		req.setDescrizione("ZZZ");
		req.setIdAutore(15L);
		req.setIdCategorie(ID_CATEGORIE_VALIDE);
		req.setIdEditore(ID_EDITORE_VALIDO);
		
		ResponseEntity<Resp> response = libC.create(req);
		assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
	    assertNotNull(response.getBody());
	    assertEquals("Autore non trovato", response.getBody().getMessage());
		
	}
	
	@Test
	@Order(3)
	public void updateLibroSuccesso() throws Exception{
		log.debug("TESTING - update libro OK");
		LibroReq req = new LibroReq();
		req.setTitolo("TEST");
		req.setDescrizione("ZZZ");
		req.setIdAutore(ID_AUTORE_VALIDO);
		req.setIdCategorie(ID_CATEGORIE_VALIDE);
		req.setIdEditore(ID_EDITORE_VALIDO);
		
		ResponseEntity<Resp> response = libC.create(req);
		assertEquals(HttpStatus.OK, response.getStatusCode());
	    assertNotNull(response.getBody());
	    assertEquals("LibroController - Libro creato", response.getBody().getMessage());
	    
	    LibroReq reqUpdate = new LibroReq();
	    reqUpdate.setId(1L);
	    reqUpdate.setTitolo("NNN");
	    response = libC.update(reqUpdate);
	    
	    assertEquals(HttpStatus.OK,response.getStatusCode());
	    assertNotNull(response.getBody());
	    assertEquals("LibroController - Libro aggiornato", response.getBody().getMessage());
		
	}
	
	@Test
	@Order(4)
	public void updateLibroErrore() throws Exception{
		log.debug("TESTING - update libro ERRORE");
		LibroReq req = new LibroReq();
		req.setTitolo("TEST");
		req.setDescrizione("ZZZ");
		req.setIdAutore(ID_AUTORE_VALIDO);
		req.setIdCategorie(ID_CATEGORIE_VALIDE);
		req.setIdEditore(ID_EDITORE_VALIDO);
		
		ResponseEntity<Resp> response = libC.create(req);
		assertEquals(HttpStatus.OK, response.getStatusCode());
	    assertNotNull(response.getBody());
	    assertEquals("LibroController - Libro creato", response.getBody().getMessage());
	    
	    LibroReq reqUpdate = new LibroReq();
	    reqUpdate.setId(11L);
	    reqUpdate.setTitolo("NNN");
	    response = libC.update(reqUpdate);
	    
	    assertEquals(HttpStatus.BAD_REQUEST,response.getStatusCode());
	    assertNotNull(response.getBody());
	    assertEquals("Libro non trovato", response.getBody().getMessage());
		
	}
	
	@Test
	@Order(5)
	public void deleteLibroSuccesso() {
		log.debug("TESTING - delete libro OK");
		assertEquals(HttpStatus.OK, libC.delete(1L).getStatusCode());
	}
	
	@Test
	@Order(6)
	public void deleteLibroErrore() {
		log.debug("TESTING - delete libro ERRORE");
		assertEquals(HttpStatus.BAD_REQUEST, libC.delete(11L).getStatusCode());
	}
	
	@Test
	@Order(7)
	public void listLibroSuccesso() {
		log.debug("TESTING - list libri OK");
		assertEquals(HttpStatus.OK, libC.list().getStatusCode());
	}

    @Test
    @Order(8)
    public void getLibroSuccesso() {
        log.debug("TESTING - list libri OK");
        assertEquals(HttpStatus.OK, libC.findById(1L).getStatusCode());
    }
    
    @Test
    @Order(9)
    public void getLibroErrore() {
        log.debug("TESTING - list libri ERRORE");
        assertEquals(HttpStatus.BAD_REQUEST, libC.findById(100L).getStatusCode());
    }
    
    @Test
    @Order(10)
    public void creaFormatoSuccesso() {
    	LibroReq formatoReq = new LibroReq();
    	formatoReq.setIsbn("1111222233339");
    	formatoReq.setPrezzo(new BigDecimal(9.99));
    	formatoReq.setTipoSupporto(TipoSupporto.EBOOK);
    	
    	ResponseEntity<Object> resp = libC.createFormato(ID_LIBRO_VALIDO, formatoReq);
    	assertEquals(HttpStatus.OK, resp.getStatusCode());;
    }
    
    @Test
    @Order(11)
    public void creaFormatoErrore() {
    	LibroReq formatoReq = new LibroReq();
    	formatoReq.setIsbn("1111222233339");
    	formatoReq.setPrezzo(new BigDecimal(9.99));
    	formatoReq.setTipoSupporto(TipoSupporto.EBOOK);
    	
    	ResponseEntity<Object> resp = libC.createFormato(ID_LIBRO_VALIDO+50, formatoReq);
    	assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    	assertEquals("Libro non trovato", resp.getBody());
    }
    
    @Test
    @Order(12)
    public void formatoUpdateSuccesso() {
    	FormatoLibroReq libro = new FormatoLibroReq();
    	libro.setId(1L);
    	libro.setPrezzo(new BigDecimal(20.99));
    	ResponseEntity<Resp> response = libC.updateFormato(libro);
    	assertEquals(HttpStatus.OK, response.getStatusCode());
    }
    
    @Test
    @Order(13)
    public void formatoUpdateErrore() {
    	FormatoLibroReq libro = new FormatoLibroReq();
    	libro.setId(1L);
    	libro.setQuantita(-20);;
    	ResponseEntity<Resp> response = libC.updateFormato(libro);
    	assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
    }
    
    @Test
    @Order(14)
    public void disattivaSuccesso() {
    	ResponseEntity<Resp> response = libC.disattivaFormato(1L);
    	assertEquals(HttpStatus.OK, response.getStatusCode());
    }
    
    @Test
    @Order(15)
    public void disattivaErrore() {
    	ResponseEntity<Resp> response = libC.disattivaFormato(150L);
    	assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
    }
    
    @Test
    @Order(16)
    public void getFormatiSuccesso() {
    	ResponseEntity<Object> response = libC.getFormatiByLibro(ID_LIBRO_VALIDO);
    	assertEquals(HttpStatus.OK, response.getStatusCode());
    	List<LibroDTO> libri = (List<LibroDTO>) response.getBody();
    	assertEquals(libri.size(), 1);
    }
    
    @Test
    @Order(17)
    public void getFormatiErrore() {
    	ResponseEntity<Object> response = libC.getFormatiByLibro(ID_LIBRO_VALIDO+100);
    	assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
    	assertEquals("Libro non trovato", response.getBody());
    }
    
    @Test
    @Order(18)
    public void getFormatoSuccesso() {
    	ResponseEntity<Object> resp = libC.getFormatoById(1L);
    	assertEquals(HttpStatus.OK, resp.getStatusCode());
    	FormatoLibroDTO libro = (FormatoLibroDTO) resp.getBody();
    	assertEquals(libro.getPrezzo().intValue(), 99);
    }
    
    @Test
    @Order(19)
    public void uploadCopertinaSuccesso() throws Exception {
        MockMultipartFile file = new MockMultipartFile(
            "file",                          
            "copertina.jpg",                 
            MediaType.IMAGE_JPEG_VALUE,      
            "contenuto immagine".getBytes()  
        );

        assertEquals(HttpStatus.OK, libC.uploadCopertina(1L, file).getStatusCode());
    }

    @Test
    @Order(20)
    public void uploadCopertinaErrore() throws Exception {
        MockMultipartFile file = new MockMultipartFile(
            "file",
            "copertina.jpg",
            MediaType.IMAGE_JPEG_VALUE,
            "contenuto immagine".getBytes()
        );

        assertEquals(HttpStatus.BAD_REQUEST, libC.uploadCopertina(99999L, file).getStatusCode());
    }
    
    @Test
    @Order(21)
    public void getFormatoCompletoSuccesso() {
        log.debug("TESTING - getFormatoCompleto OK");
        assertEquals(HttpStatus.OK, libC.getFormatoCompleto(1L).getStatusCode());
    }

    @Test
    @Order(22)
    public void getFormatoCompletoErrore() {
        log.debug("TESTING - getFormatoCompleto ERRORE");
        assertEquals(HttpStatus.BAD_REQUEST, libC.getFormatoCompleto(99999L).getStatusCode());
    }

    @Test
    @Order(23)
    public void cercaSuccesso() {
        log.debug("TESTING - cerca OK");
        assertEquals(HttpStatus.OK, libC.cerca("Harry", null, null, null, null, null).getStatusCode());
    }

    @Test
    @Order(24)
    public void cercaVuota() {
        log.debug("TESTING - cerca vuota OK");
        assertEquals(HttpStatus.OK, libC.cerca(null, null, null, null, null, null).getStatusCode());
    }

    @Test
    @Order(25)
    public void cercaConFiltri() {
        log.debug("TESTING - cerca con filtri OK");
        assertEquals(HttpStatus.OK, libC.cerca(
            null,
            List.of("Fantasy"),
            new BigDecimal("5.00"),
            new BigDecimal("50.00"),
            TipoSupporto.CARTACEO,
            TipoCopertina.RIGIDA
        ).getStatusCode());
    }
	
	
}
