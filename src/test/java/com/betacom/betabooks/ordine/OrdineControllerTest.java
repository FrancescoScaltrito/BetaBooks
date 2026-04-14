package com.betacom.betabooks.ordine;

import static org.junit.jupiter.api.Assertions.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.TestPropertySource;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.controllers.OrdineController;
import com.betacom.betabooks.enums.FiltroTemporale;
import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.RuoloUtente;
import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Carrello;
import com.betacom.betabooks.models.CarrelloItem;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Indirizzo;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.models.Ordine;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.ICarrelloItemRepository;
import com.betacom.betabooks.repositories.ICarrelloRepository;
import com.betacom.betabooks.repositories.IEditoreRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.IIndirizzoRepository;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.repositories.IOrdineRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.response.Resp;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@SpringBootTest
@Transactional
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@TestPropertySource(properties = {
	    "database.username=postgres",
	    "database.password=100720"
	})
public class OrdineControllerTest {

    @Autowired
    private OrdineController ordineC;

    @Autowired
    private IUtenteRepository utenteR;

    @Autowired
    private IIndirizzoRepository indirizzoR;

    @Autowired
    private IOrdineRepository ordineR;

    @Autowired
    private ICarrelloRepository carrelloR;

    @Autowired
    private ICarrelloItemRepository carrelloItemR;

    @Autowired
    private ILibroRepository libroR;

    @Autowired
    private IFormatoLibroRepository formatoLibroR;

    @Autowired
    private IAutoreRepository autoreR;

    @Autowired
    private IEditoreRepository editoreR;

    private Long idUtente;
    private Long idIndirizzo;
    private Long idOrdine;

    @BeforeEach
    void setUp() {
        log.debug("Esecuzione setUp: Creazione dati fittizi per il test Ordine");

        Utente u = new Utente();
        u.setEmail("ordine_test_" + System.currentTimeMillis() + "@betabooks.it");
        u.setPassword("Password123!");
        u.setRuolo(RuoloUtente.USER);
        u.setValidato(true);
        u = utenteR.saveAndFlush(u);
        idUtente = u.getId();

        Indirizzo ind = new Indirizzo();
        ind.setUtente(u);
        ind.setVia("Via Roma 1");
        ind.setCap("00100");
        ind.setComune("Roma");
        ind.setProvincia("RM");
        ind.setPaese("Italia");
        ind.setIsDefault(true);
        ind = indirizzoR.saveAndFlush(ind);
        idIndirizzo = ind.getId();

        Ordine o = new Ordine();
        o.setUtente(u);
        o.setIndirizzo(ind);
        o.setStato(StatoOrdine.values()[0]);
        o.setMetodoPagamento(MetodoPagamento.values()[0]);
        o.setTotale(new BigDecimal("50.0"));
        o.setDataOrdine(LocalDateTime.now());
        o = ordineR.saveAndFlush(o);
        idOrdine = o.getId();

        Carrello c = new Carrello();
        c.setUtente(u);
        c = carrelloR.saveAndFlush(c);

        Autore a = new Autore();
        a.setNome("Dante");
        a.setCognome("Alighieri");
        a = autoreR.saveAndFlush(a);

        Editore e = new Editore();
        e.setNome("Mondadori");
        e = editoreR.saveAndFlush(e);

        Libro l = new Libro();
        l.setTitolo("La Divina Commedia");
        l.setAutore(a);
        l.setEditore(e);
        l = libroR.saveAndFlush(l);

        FormatoLibro f = new FormatoLibro();
        f.setLibro(l);
        f.setPrezzo(BigDecimal.valueOf(15.0));
        f.setTipoSupporto(TipoSupporto.CARTACEO);
        f.setQuantita(10);
        f = formatoLibroR.saveAndFlush(f);

        CarrelloItem item = new CarrelloItem();
        item.setCarrello(c);
        item.setFormatoLibro(f);
        item.setQuantita(1);
        carrelloItemR.saveAndFlush(item);
    }

    // ── CHECKOUT ─────────────────────────────────────────────────────────────────

    @Test
    @Order(1)
    public void checkoutSuccesso() {
        log.debug("TEST [1] checkout - successo");
        MetodoPagamento metodo = MetodoPagamento.values()[0]; 
        
        ResponseEntity<?> resp = ordineC.checkout(idUtente, metodo, idIndirizzo);
        
        if (resp.getStatusCode() == HttpStatus.BAD_REQUEST) {
            log.error("🚨 ERRORE CHECKOUT: {}", ((Resp) resp.getBody()).getMessage());
        }
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(2)
    public void checkoutErrore_UtenteInesistente() {
        log.debug("TEST [2] checkout - errore utente inesistente");
        ResponseEntity<?> resp = ordineC.checkout(99999L, MetodoPagamento.values()[0], idIndirizzo);
        assertEquals(HttpStatus.BAD_REQUEST, resp.getStatusCode());
    }

    // ── GESTIONE STATO ORDINE ────────────────────────────────────────────────────

    @Test
    @Order(3)
    public void aggiornaStatoSuccesso() {
        log.debug("TEST [3] aggiornaStato - successo");
        StatoOrdine nuovoStato = StatoOrdine.values()[1]; 
        
        ResponseEntity<Resp> resp = ordineC.aggiornaStato(idOrdine, nuovoStato);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(4)
    public void annullaOrdineSuccesso() {
        log.debug("TEST [4] annullaOrdine - successo");
        ResponseEntity<Resp> resp = ordineC.annullaOrdine(idOrdine);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    // ── RECUPERO DATI E STORICO ──────────────────────────────────────────────────

    @Test
    @Order(5)
    public void getOrdineSuccesso() {
        log.debug("TEST [5] getOrdine - successo");
        ResponseEntity<Resp> resp = ordineC.getOrdine(idOrdine);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody().getObj());
    }

    @Test
    @Order(6)
    public void getStoricoSuccesso() {
        log.debug("TEST [6] getStorico - successo");
        ResponseEntity<Resp> resp = ordineC.getStorico(idUtente);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody().getObj());
    }

    @Test
    @Order(7)
    public void getStoricoFiltratoSuccesso() {
        log.debug("TEST [7] getStoricoFiltrato - successo");
        // Cerchiamo tutti gli ordini completati nell'ultimo mese
        FiltroTemporale filtro = FiltroTemporale.values()[0]; // Es. ULTIMO_MESE
        
        ResponseEntity<Resp> resp = ordineC.getStoricoFiltrato(idUtente, true, filtro);
        assertEquals(HttpStatus.OK, resp.getStatusCode());
    }

    @Test
    @Order(8)
    public void getAllSuccesso() {
        log.debug("TEST [8] getAll - successo");
        ResponseEntity<Object> resp = ordineC.list();
        assertEquals(HttpStatus.OK, resp.getStatusCode());
        assertNotNull(resp.getBody());
    }
}