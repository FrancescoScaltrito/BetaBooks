package com.betacom.betabooks.services.implementations;

import java.util.List;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.dto.inputs.EditoreReq;
import com.betacom.betabooks.dto.outputs.EditoreDTO;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.repositories.IEditoreRepository;
import com.betacom.betabooks.services.interfaces.IEditoreServices;
import com.betacom.betabooks.utils.Mapper;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class EditoreImpl implements IEditoreServices{

	private final IEditoreRepository editoreR;
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public Long create(EditoreReq req) throws Exception {
		log.debug("EditoreImpl - create {}",req);
		if(req.getDescrizione()==null)
			throw new Exception("Descrizione Editore non può essere null");
		if(req.getNome()==null)
			throw new Exception("Nome Editore non può essere null");
		
		Editore editore = new Editore();
		editore.setNome(req.getNome());
		editore.setDescrizione(req.getDescrizione());
		
		return editoreR.save(editore).getId();
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void update(EditoreReq req) throws Exception {
		log.debug("EditoreImpl - update {}",req);
		Editore editore = editoreR.findById(req.getId()).orElseThrow( () -> new Exception("ERRORE Update - Editore non trovato in DB"));
		if(req.getNome()!=null)
			editore.setNome(req.getNome());
		if(req.getDescrizione()!=null)
			editore.setDescrizione(req.getDescrizione());
		editoreR.save(editore);
		
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void delete(Long id) throws Exception {
		/*
		 *  Da controllare la logica... se elimino un editore cosa succede ai libri che hanno questo editore ?
		 */
		
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public EditoreDTO findById(Long id) throws Exception {
		log.debug("EditoreImpl - findByID {}",id);
		Editore editore = editoreR.findById(id).orElseThrow( () -> new Exception("ERRORE findById - Editore non trovato in DB"));
		return Mapper.buildEditoreDTO(editore);
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public List<EditoreDTO> findAll() throws Exception {
		log.debug("EditoreImpl - findAll");
		List<Editore> editore = editoreR.findAll();
		return Mapper.buildEditoreDTO(editore);
	}

}
