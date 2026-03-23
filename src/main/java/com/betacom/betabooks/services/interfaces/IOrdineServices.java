package com.betacom.betabooks.services.interfaces;

import java.util.List;
import com.betacom.betabooks.dto.inputs.OrdineReq;
import com.betacom.betabooks.dto.outputs.OrdineDTO;
import com.betacom.betabooks.enums.MetodoPagamento;

public interface IOrdineServices {
	 public OrdineDTO creaOrdine(Long idUtente, MetodoPagamento metodo, Long idIndirizzo) throws Exception;

	 List<OrdineDTO> getOrdiniUtente(Long idUtente);


}
