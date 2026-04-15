package com.betacom.betabooks.services.implementations;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.dto.inputs.AutoreReq;
import com.betacom.betabooks.dto.outputs.AutoreDTO;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.services.interfaces.IAutoreServices;
import com.betacom.betabooks.utils.Mapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class AutoreImpl implements IAutoreServices{
	
	private final IAutoreRepository autoreR;

	@Transactional(rollbackFor = Exception.class)
	@Override
	public Long create(AutoreReq req) throws Exception {
		log.debug("AutoreImpl - create {}",req);
		if(req.getBiografia()==null)
			throw new Exception("Biografia Autore non può essere null");
		if(req.getCognome()==null)
			throw new Exception("Cognome Autore non può essere null");
		if(req.getNome()==null)
			throw new Exception("Nome Autore non può essere null");
		if(req.getNazionalita()==null)
			throw new Exception("Nazionalita Autore non può essere null");
		
		Autore autore = new Autore();
		autore.setNome(req.getNome());
		autore.setCognome(req.getCognome());
		autore.setBiografia(req.getBiografia());
		autore.setNazionalita(req.getNazionalita());
		autore.setAttivo(req.isAttivo());
		return autoreR.save(autore).getId();
		
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void update(AutoreReq req) throws Exception {
		log.debug("AutoreImpl - update {}",req);
		Autore autore = autoreR.findById(req.getId()).orElseThrow( () -> new Exception("ERRORE Update - Autore non trovato in DB"));
		if(req.getBiografia()!=null)
			autore.setBiografia(req.getBiografia());
		if(req.getCognome()!=null)
			autore.setCognome(req.getCognome());
		if(req.getNome()!=null)
			autore.setNome(req.getNome());
		if(req.getNazionalita()!=null)
			autore.setNazionalita(req.getNazionalita());
		autore.setAttivo(req.isAttivo());
		autoreR.save(autore);
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void delete(Long id) throws Exception {
	
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public AutoreDTO findById(Long id) throws Exception {
		log.debug("AutoreImpl - findById {}",id);
		Autore a = autoreR.findById(id).orElseThrow( () -> new Exception("ERRORE findById - Autore non trovato in DB"));
		return Mapper.buildAutoreDTO(a);
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public List<AutoreDTO> findAll() throws Exception {
		log.debug("AutoreImpl - findAll");
		List<Autore> autori = autoreR.findAll();
		return Mapper.buildAutoreDTO(autori);
	}

	@Override
	public void disattiva(Long id) throws Exception {
		log.debug("AutoreImpl - disattiva {} ",id);
		Autore a = autoreR.findById(id).orElseThrow( () -> new Exception("ERRORE disattiva - Autore non trovato in DB"));
		a.setAttivo(false);
		autoreR.save(a);
	}

}
