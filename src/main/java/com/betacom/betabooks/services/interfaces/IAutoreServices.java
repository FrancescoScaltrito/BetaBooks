package com.betacom.betabooks.services.interfaces;

import java.util.List;

import com.betacom.betabooks.dto.inputs.AutoreReq;
import com.betacom.betabooks.dto.outputs.AutoreDTO;

public interface IAutoreServices {
	Long create(AutoreReq req) throws Exception;
	void update(AutoreReq req) throws Exception;
	void delete(Long id) throws Exception;
	AutoreDTO findById(Long id) throws Exception;
	List<AutoreDTO> findAll() throws Exception;
	
	void disattiva(Long id) throws Exception;
}
