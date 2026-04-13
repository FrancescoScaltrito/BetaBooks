package com.betacom.betabooks.libro;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.math.BigDecimal;
import java.util.List;

import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.LibroController;
import com.betacom.betabooks.dto.inputs.FormatoLibroReq;
import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
public class LibroControllerTest {

    @Autowired
    private LibroController libC;

    private static final long ID_AUTORE_VALIDO = 1;
    private static final long ID_EDITORE_VALIDO = 1;
    private static final long ID_LIBRO_VALIDO = 26;
    private static final long ID_FORMATO_VALIDO = 7;
    private static final List<Long> ID_CATEGORIE_VALIDE = List.of(1L, 2L);

    @Test
    @Order(1)
    public void creaLibroSuccesso() throws Exception {
        log.debug("TESTING - creaLibro OK");
        LibroReq req = new LibroReq();
        req.setTitolo("Titolo di test");
        req.setDescrizione("Descrizione di test");
        req.setIdAutore(ID_AUTORE_VALIDO);
        req.setIdEditore(ID_EDITORE_VALIDO);
        req.setIdCategorie(ID_CATEGORIE_VALIDE);
        assertEquals(HttpStatus.OK, libC.create(req).getStatusCode());
    }

    @Test
    @Order(2)
    public void creaLibroErroreAutoreInesistente() throws Exception {
        log.debug("TESTING - creaLibro ERRORE autore inesistente");
        LibroReq req = new LibroReq();
        req.setTitolo("Titolo di test");
        req.setDescrizione("Descrizione di test");
        req.setIdAutore(99999L);
        req.setIdEditore(ID_EDITORE_VALIDO);
        req.setIdCategorie(ID_CATEGORIE_VALIDE);
        assertEquals(HttpStatus.BAD_REQUEST, libC.create(req).getStatusCode());
    }

    @Test
    @Order(3)
    public void creaLibroErroreEditoreInesistente() throws Exception {
        log.debug("TESTING - creaLibro ERRORE editore inesistente");
        LibroReq req = new LibroReq();
        req.setTitolo("Titolo di test");
        req.setDescrizione("Descrizione di test");
        req.setIdAutore(ID_AUTORE_VALIDO);
        req.setIdEditore(99999L);
        req.setIdCategorie(ID_CATEGORIE_VALIDE);
        assertEquals(HttpStatus.BAD_REQUEST, libC.create(req).getStatusCode());
    }

    @Test
    @Order(4)
    public void updateLibroSuccesso() throws Exception {
        log.debug("TESTING - updateLibro OK");
        LibroReq req = new LibroReq();
        req.setId(ID_LIBRO_VALIDO);
        req.setTitolo("Titolo aggiornato");
        req.setIdAutore(ID_AUTORE_VALIDO);
        req.setIdEditore(ID_EDITORE_VALIDO);
        req.setIdCategorie(ID_CATEGORIE_VALIDE);
        assertEquals(HttpStatus.OK, libC.update(req).getStatusCode());
    }

    @Test
    @Order(5)
    public void updateLibroErroreIdInesistente() throws Exception {
        log.debug("TESTING - updateLibro ERRORE id inesistente");
        LibroReq req = new LibroReq();
        req.setId(99999L);
        req.setTitolo("Titolo aggiornato");
        req.setIdAutore(ID_AUTORE_VALIDO);
        req.setIdEditore(ID_EDITORE_VALIDO);
        req.setIdCategorie(ID_CATEGORIE_VALIDE);
        assertEquals(HttpStatus.BAD_REQUEST, libC.update(req).getStatusCode());
    }

    @Test
    @Order(6)
    public void getByIdSuccesso() {
        log.debug("TESTING - getById OK");
        assertEquals(HttpStatus.OK, libC.findById(ID_LIBRO_VALIDO).getStatusCode());
    }

    @Test
    @Order(7)
    public void getByIdErrore() {
        log.debug("TESTING - getById ERRORE");
        assertEquals(HttpStatus.BAD_REQUEST, libC.findById(99999L).getStatusCode());
    }

    @Test
    @Order(8)
    public void getAllSuccesso() {
        log.debug("TESTING - getAll OK");
        assertEquals(HttpStatus.OK, libC.list().getStatusCode());
    }

    @Test
    @Order(9)
    public void deleteSuccesso() {
        log.debug("TESTING - delete OK");
        assertEquals(HttpStatus.OK, libC.delete(ID_LIBRO_VALIDO).getStatusCode());
    }

    @Test
    @Order(10)
    public void deleteErrore() {
        log.debug("TESTING - delete ERRORE");
        assertEquals(HttpStatus.BAD_REQUEST, libC.delete(99999L).getStatusCode());
    }

    @Test
    @Order(11)
    public void getFormatiByLibroSuccesso() {
        log.debug("TESTING - getFormatiByLibro OK");
        assertEquals(HttpStatus.OK, libC.getFormatiByLibro(ID_LIBRO_VALIDO).getStatusCode());
    }

    @Test
    @Order(12)
    public void getFormatiByLibroErrore() {
        log.debug("TESTING - getFormatiByLibro ERRORE");
        assertEquals(HttpStatus.BAD_REQUEST, libC.getFormatiByLibro(99999L).getStatusCode());
    }

    @Test
    @Order(13)
    public void getFormatoByIdSuccesso() {
        log.debug("TESTING - getFormatoById OK");
        assertEquals(HttpStatus.OK, libC.getFormatoById(ID_FORMATO_VALIDO).getStatusCode());
    }

    @Test
    @Order(14)
    public void getFormatoByIdErrore() {
        log.debug("TESTING - getFormatoById ERRORE");
        assertEquals(HttpStatus.BAD_REQUEST, libC.getFormatoById(99999L).getStatusCode());
    }

    @Test
    @Order(15)
    public void updateFormatoSuccesso() {
        log.debug("TESTING - updateFormato OK");
        FormatoLibroReq req = new FormatoLibroReq();
        req.setId(ID_FORMATO_VALIDO);
        req.setPrezzo(new BigDecimal("19.99"));
        req.setIsbn("9780000000001");
        req.setQuantita(10);
        assertEquals(HttpStatus.OK, libC.updateFormato(req).getStatusCode());
    }

    @Test
    @Order(16)
    public void updateFormatoErrore() {
        log.debug("TESTING - updateFormato ERRORE");
        FormatoLibroReq req = new FormatoLibroReq();
        req.setId(99999L);
        req.setPrezzo(new BigDecimal("19.99"));
        assertEquals(HttpStatus.BAD_REQUEST, libC.updateFormato(req).getStatusCode());
    }

    @Test
    @Order(17)
    public void disattivaFormatoSuccesso() {
        log.debug("TESTING - disattivaFormato OK");
        assertEquals(HttpStatus.OK, libC.disattivaFormato(ID_FORMATO_VALIDO).getStatusCode());
    }

    @Test
    @Order(18)
    public void disattivaFormatoErrore() {
        log.debug("TESTING - disattivaFormato ERRORE");
        assertEquals(HttpStatus.BAD_REQUEST, libC.disattivaFormato(99999L).getStatusCode());
    }

    @Test
    @Order(19)
    public void uploadCopertinaSuccesso() throws Exception {
        log.debug("TESTING - uploadCopertina OK");
        MockMultipartFile file = new MockMultipartFile(
            "file",
            "copertina.jpg",
            MediaType.IMAGE_JPEG_VALUE,
            "contenuto immagine".getBytes()
        );
        assertEquals(HttpStatus.OK, libC.uploadCopertina(ID_FORMATO_VALIDO, file).getStatusCode());
    }

    @Test
    @Order(20)
    public void uploadCopertinaErrore() throws Exception {
        log.debug("TESTING - uploadCopertina ERRORE");
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
        assertEquals(HttpStatus.OK, libC.getFormatoCompleto(ID_FORMATO_VALIDO).getStatusCode());
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