package com.betacom.betabooks.services.implementations;

import java.util.List;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.CategoriaReq;
import com.betacom.betabooks.dto.outputs.CategoriaDTO;
import com.betacom.betabooks.models.Categoria;
import com.betacom.betabooks.repositories.ICategoriaRepository;
import com.betacom.betabooks.services.interfaces.ICategoriaServices;
import com.betacom.betabooks.utils.FormatoLibroMapper;
import com.betacom.betabooks.utils.Mapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Slf4j
@Service
public class CategoriaImpl implements ICategoriaServices{

    private final FormatoLibroMapper formatoLibroMapper;
	private final ICategoriaRepository cateR;

	@Override
	public Long create(CategoriaReq req) throws Exception {
		log.debug("CategoriaImpl - create {}",req);
		if(req.getDescrizione()==null)
			throw new Exception("Descrizione Categoria non può essere null");
		if(req.getNome()==null)
			throw new Exception("Nome Categoria non può essere null");
		Categoria cat = new Categoria();
		cat.setDescrizione(req.getDescrizione());
		cat.setNome(req.getNome());
		cat.setAttivo(req.isAttivo());
		
		return cateR.save(cat).getId();
	}

	@Override
	public void update(CategoriaReq req) throws Exception {
		log.debug("CategoriaImpl - update {}",req);	
		Categoria c = cateR.findById(req.getId())
				.orElseThrow( () -> new Exception("ERRORE Update - Categoria non trovata in DB"));
		if(req.getDescrizione()!=null)
			c.setDescrizione(req.getDescrizione());
		if(req.getNome()!=null)
			c.setNome(req.getNome());
		c.setAttivo(req.isAttivo());
		cateR.save(c);
	}

	@Override
	public void delete(Long id) throws Exception {

		
	}

	@Override
	public CategoriaDTO findById(Long id) throws Exception {
		log.debug("CategoriaImpl - findById {}",id);	
		Categoria c = cateR.findById(id).orElseThrow( () -> new Exception("ERRORE findById - Categoria non trovata in DB"));
		return Mapper.buildCategoriaDTO(c);
	}

	@Override
	public List<CategoriaDTO> findAll() throws Exception {
		log.debug("CategoriaImpl - findAll");	
		List<Categoria> c = cateR.findAll();
		return Mapper.buildCategoriaDTO(c);
	}

	@Override
	public void disattiva(Long id) throws Exception {
		log.debug("CategoriaImpl - disattiva {}",id);
		Categoria c = cateR.findById(id).orElseThrow( () -> new Exception("ERRORE disattiva - cateogria non trovata in db"));
		c.setAttivo(false);
		cateR.save(c);
		
	}
	
}
