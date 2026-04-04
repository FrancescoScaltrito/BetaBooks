
package com.betacom.betabooks.controllers;


import org.springframework.http.MediaType;

import java.math.BigDecimal;
import java.util.List;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.betacom.betabooks.dto.inputs.FormatoLibroReq;
import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.ILibroServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/libro")
@CrossOrigin(origins = "http://localhost:4200")
public class LibroController {
	

    private final AuthController authController;

	private final ILibroServices libroS;


	// Libro

	// METODO OBSOLETO, LO LASCIO NON SI SA MAI

    @PostMapping("/create")
    public ResponseEntity<Resp> create(@RequestBody(required = true) LibroReq req) {
        log.debug("LibroController - create {}", req);
        Resp response = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            libroS.create(req);
            response.setMessage("LibroController - Libro creato");
        } catch (Exception e) {
            log.error("ERRORE LibroController - " + e.getMessage());
            response.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST;
        }
        return ResponseEntity.status(status).body(response);
    }
		

	@PutMapping("/update")
	public ResponseEntity<Resp> update(@RequestBody(required = true) LibroReq req) {
		log.debug("LibroController - update {}", req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			libroS.update(req);
			response.setMessage("LibroController - Libro aggiornato");
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	/*
	 * Elimina un libro e disattiva tutti i suoi formati. Richiede l'id del libro
	 * nel path.
	 */
	@DeleteMapping("/delete/{id}")
	public ResponseEntity<Resp> delete(@PathVariable Long id) {
		log.debug("LibroController - delete {}", id);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			libroS.delete(id);
			response.setMessage("Libro eliminato con successo");
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	/*
	 * Restituisce tutti i libri con i relativi formati (senza copertina). da usare
	 * perla homepage/catalogo. Per la copertina usare /formato/getCompleto.
	 */

	@GetMapping("/getAll")
	public ResponseEntity<Object> list() {
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = libroS.findAll();
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	/*
	 * Restituisce un singolo libro con i relativi formati (senza copertina)
	 */

	@GetMapping("/getById")
	public ResponseEntity<Object> findById(@RequestParam(required = true) Long id) {
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = libroS.findById(id);
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	// Formato

	/*
	 * Modifica i dati di un formato esistente (prezzo, isbn, quantita, attivo) Non
	 * cambia il tipo di supporto (CARTACEO/EBOOK)
	 */
	
	@PostMapping("/formato/create/{idLibro}")
	public ResponseEntity<Object> createFormato(
	        @PathVariable Long idLibro,
	        @RequestBody LibroReq req) {
	    Object response;
	    HttpStatus status = HttpStatus.OK;
	    try {
	        response = libroS.createFormatoLibro(idLibro, req);
	    } catch (Exception e) {
	        log.error("ERRORE LibroController - " + e.getMessage());
	        response = e.getMessage();
	        status = HttpStatus.BAD_REQUEST;
	    }
	    return ResponseEntity.status(status).body(response);
	}

	@PutMapping("/formato/update")
	public ResponseEntity<Resp> updateFormato(@RequestBody(required = true) FormatoLibroReq req) {
		log.debug("LibroController - updateFormato {}", req);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			libroS.updateFormato(req);
			response.setMessage("LibroController - Formato aggiornato");
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	/*
	 * Disattiva un formato al posto di delete Il formato non viene eliminato dal db
	 * ma non è visibile agli utenti
	 */

	@PutMapping("/formato/disattiva/{id}")
	public ResponseEntity<Resp> disattivaFormato(@PathVariable Long id) {
		log.debug("LibroController - disattivaFormato {}", id);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			libroS.disattivaFormato(id);
			response.setMessage("LibroController - Formato disattivato");
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	/*
	 * Restituisce tutti i formati attivi di un libro
	 */

	@GetMapping("/formato/getByLibro")
	public ResponseEntity<Object> getFormatiByLibro(@RequestParam(required = true) Long idLibro) {
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = libroS.findFormatiByLibro(idLibro);
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	/*
	 * Restituisce un singolo formato dato il suo id, senza copertina
	 */

	@GetMapping("/formato/getById")
	public ResponseEntity<Object> getFormatoById(@RequestParam(required = true) Long id) {
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = libroS.findFormatoById(id);
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	// Copertina

	/*
	 * Carica o sostituisce la copertina di un formato
	 */

	@PostMapping(value = "/formato/copertina/{idFormato}", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
	public ResponseEntity<Resp> uploadCopertina(@PathVariable Long idFormato, @RequestPart("file") MultipartFile file) {
		log.debug("LibroController - uploadCopertina formato {}", idFormato);
		Resp response = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			libroS.salvaCopertina(idFormato, file);
			response.setMessage("LibroController - Copertina salvata");
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}

	/*
	 * Restituisce un formato con la copertina da usare per il caricamento delle
	 * coperine nella homepage
	 * 
	 */

	@GetMapping("/formato/getCompleto")
	public ResponseEntity<Object> getFormatoCompleto(@RequestParam(required = true) Long id) {
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = libroS.findFormatoByIdCompleto(id);
		} catch (Exception e) {
			log.error("ERRORE LibroController - " + e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}
	
	@GetMapping("/cerca")
	public ResponseEntity<Object> cerca(
			@RequestParam(required = false) String query,
			@RequestParam(required = false) List<String> categorie,
			@RequestParam(required = false) BigDecimal prezzoMin,
			@RequestParam(required = false) BigDecimal prezzoMax,
			@RequestParam(required = false) TipoSupporto tipoSupporto,
			@RequestParam(required = false) TipoCopertina tipoCopertina
			){
		Object response;
		HttpStatus status = HttpStatus.OK;
		try {
			response = libroS.find(query, categorie, prezzoMin, prezzoMax, tipoCopertina, tipoSupporto);
		}catch(Exception e) {
			log.error("Ricerca fallita..."+e.getMessage());
			response = e.getMessage();
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(response);
	}
	
}
	
