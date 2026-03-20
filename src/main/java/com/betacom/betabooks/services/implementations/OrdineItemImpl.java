package com.betacom.betabooks.services.implementations;

import java.util.List;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.OrdineItemReq;
import com.betacom.betabooks.dto.outputs.OrdineItemDTO;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.services.interfaces.IOrdineItemServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class OrdineItemImpl implements IOrdineItemServices{

	@Override
	public Long create(OrdineItemReq req) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(OrdineItemReq req) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Long id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public OrdineItemDTO findById(Long id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrdineItemDTO> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
