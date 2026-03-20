package com.betacom.betabooks.services.interfaces;

import java.util.List;
import com.betacom.betabooks.dto.inputs.OrdineItemReq;
import com.betacom.betabooks.dto.outputs.OrdineItemDTO;

public interface IOrdineItemServices {
	
	Long create(OrdineItemReq req) throws Exception;
	void update(OrdineItemReq req) throws Exception;
	void delete(Long id) throws Exception;
	OrdineItemDTO findById(Long id) throws Exception;
	List<OrdineItemDTO> findAll() throws Exception;

}
