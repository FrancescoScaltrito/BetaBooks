package com.betacom.betabooks.services.interfaces;

import java.util.List;

import com.betacom.betabooks.dto.inputs.EditoreReq;
import com.betacom.betabooks.dto.outputs.EditoreDTO;

public interface IEditoreServices {
	Long create(EditoreReq req) throws Exception;
	void update(EditoreReq req) throws Exception;
	void delete(Long id) throws Exception;
	EditoreDTO findById(Long id) throws Exception;
	List<EditoreDTO> findAll() throws Exception;
}
