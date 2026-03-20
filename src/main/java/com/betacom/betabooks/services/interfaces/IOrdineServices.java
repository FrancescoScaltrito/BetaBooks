package com.betacom.betabooks.services.interfaces;

import java.util.List;
import com.betacom.betabooks.dto.inputs.OrdineReq;
import com.betacom.betabooks.dto.outputs.OrdineDTO;
import com.betacom.betabooks.enums.MetodoPagamento;

public interface IOrdineServices {
	Long create(OrdineReq req) throws Exception;
	void update(OrdineReq req) throws Exception;
	void delete(Long id) throws Exception;
	OrdineDTO findById(Long id) throws Exception;
	List<OrdineDTO> findAll() throws Exception;
	Long checkout(Long idUtente, Long idIndirizzo, MetodoPagamento metodo) throws Exception;

}
