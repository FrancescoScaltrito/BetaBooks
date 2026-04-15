package com.betacom.betabooks.services.implementations;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.RecensioneReq;
import com.betacom.betabooks.dto.outputs.RecensioneDTO;
import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.models.ProfiloUtente;
import com.betacom.betabooks.models.Recensione;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.repositories.IOrdineItemRepository;
import com.betacom.betabooks.repositories.IProfiloUtenteRepository;
import com.betacom.betabooks.repositories.IRecensioneRepository;
import com.betacom.betabooks.services.interfaces.IRecensioneServices;
import com.betacom.betabooks.utils.Mapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Slf4j
@Service
public class RecensioneImpl implements IRecensioneServices{
	
	private final IRecensioneRepository recensioneR;
	private final IProfiloUtenteRepository profiloUtente;
	private final ILibroRepository libroR;
	private final IOrdineItemRepository ordineItemR;
	
	@Override
	public Long create(RecensioneReq req) throws Exception {
		log.debug("RecensioneImpl - create {}", req);
		
		if (req.getIdUtente() == null) {
			throw new Exception("ID utente non può essere null");
		}
		if (req.getIdLibro() == null) {
			throw new Exception("ID libro non può essere null");
		}
		if (req.getValutazione() == null || req.getValutazione()<1 || req.getValutazione()>5) {
			throw new Exception("La valutazione deve essere compresa tra 1 e 5");
		}
		
		boolean consegnato = ordineItemR.existsByOrdine_Utente_IdAndFormatoLibro_Libro_IdAndOrdine_Stato(req.getIdUtente(), req.getIdLibro(), StatoOrdine.CONSEGNATO);
		
		if (!consegnato) {
			throw new Exception("Non puoi inserire una recensione per un libro non acquistato o non consegnato!");
		}
		
		ProfiloUtente profilo = profiloUtente.findByUtenteId(req.getIdUtente())
				.orElseThrow(() -> new Exception("ERRORE Create - Profilo Utente non trovato in DB"));
		Libro libro = libroR.findById(req.getIdLibro())
				.orElseThrow(() -> new Exception("ERRORE Create - Libro non trovato in DB"));
		
		if (recensioneR.findByProfiloUtenteIdAndLibro_Id(profilo.getId(), req.getIdLibro()).isPresent()) {
			throw new Exception("Hai già recensito questo libro");
		}
		
		Recensione r = new Recensione();
		r.setProfiloUtente(profilo);
		r.setLibro(libro);
		r.setValutazione(req.getValutazione());
		r.setDescrizione(req.getDescrizione());
		r.setData(LocalDateTime.now());
		
		return recensioneR.save(r).getId();
		
		
	}

	@Override
	public void update(RecensioneReq req) throws Exception {
		log.debug("RecensioneImpl - update {}", req);
		
		if (req.getId() == null) {
			throw new Exception("ID Recensione non può essere null per l'update");
		}
		
		Recensione r = recensioneR.findById(req.getId())
				.orElseThrow(() -> new Exception("ERRORE Update - Recensione non trovata in DB"));
		
		if (req.getValutazione() != null) {
			if (req.getValutazione()<1 || req.getValutazione()>5) {
				throw new Exception("La valutazione deve essere compresa tra 1 e 5");
			}
			r.setValutazione(req.getValutazione());
		}
		if (req.getDescrizione() != null) {
			r.setDescrizione(req.getDescrizione());
		}
		
		recensioneR.save(r);
		
	}

	@Override
	public void delete(Long id) throws Exception {
		log.debug("RecensioneImpl - delete {}", id);
		
		if (id == null) {
			throw new Exception("ID Recensione non può essere null");
		}
		if (!recensioneR.existsById(id)) {
			throw new Exception("ERRORE Delete - Recensione non trovata in DB");
		}
		
		recensioneR.deleteById(id);
		
	}

	@Override
	public RecensioneDTO findById(Long id) throws Exception {
		log.debug("RecensioneImpl - findById {}", id);
		
		Recensione r = recensioneR.findById(id)
				.orElseThrow(() -> new Exception("ERRORE findById - Recensione non trovata in DB"));
		
		return Mapper.buildRecensioneDTO(r);
	}

	@Override
	public List<RecensioneDTO> findAll() throws Exception {
		log.debug("RecensioneImpl - findAll");
		
		List<Recensione> recensioni = recensioneR.findAll();
		return Mapper.buildRecensioneDTO(recensioni);
	}

	@Override
	public List<RecensioneDTO> findByLibro(Long idLibro) throws Exception {
		log.debug("RecensioneImpl - findByLibro {}", idLibro);
		
		if (idLibro == null) {
			throw new Exception("ID Libro non può essere null");
		}
		
		List<Recensione> recensioni = recensioneR.findByLibroId(idLibro);
		return Mapper.buildRecensioneDTO(recensioni);
	}
	
	@Override
	public List<RecensioneDTO> findByprofilo(Long idProfilo) throws Exception {
		log.debug("RecensioneImpl - findByprofilo {}", idProfilo);
		
		if (idProfilo == null) {
			throw new Exception("ID Profilo non può essere null");
		}
		
		List<Recensione> recensioni = recensioneR.findByProfiloUtenteId(idProfilo);
		log.debug("Recensioni trovate: {}", recensioni.size());
		return Mapper.buildRecensioneDTO(recensioni);
	}
	

}
