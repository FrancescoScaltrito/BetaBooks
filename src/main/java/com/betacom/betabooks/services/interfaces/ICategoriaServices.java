package com.betacom.betabooks.services.interfaces;

import java.util.List;

import com.betacom.betabooks.dto.inputs.CategoriaReq;
import com.betacom.betabooks.dto.outputs.CategoriaDTO;


public interface ICategoriaServices {
	Long create(CategoriaReq req) throws Exception;
	void update(CategoriaReq req) throws Exception;
	void delete(Long id) throws Exception;
	CategoriaDTO findById(Long id) throws Exception;
	List<CategoriaDTO> findAll() throws Exception;
}
