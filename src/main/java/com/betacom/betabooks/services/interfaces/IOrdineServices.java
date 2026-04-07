package com.betacom.betabooks.services.interfaces;

import java.util.List;
import com.betacom.betabooks.dto.inputs.OrdineReq;
import com.betacom.betabooks.dto.outputs.OrdineDTO;
import com.betacom.betabooks.enums.FiltroTemporale;
import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.StatoOrdine;

public interface IOrdineServices {
	 public OrdineDTO creaOrdine(Long idUtente, MetodoPagamento metodo, Long idIndirizzo) throws Exception;

	 List<OrdineDTO> getOrdiniUtente(Long idUtente);

	 OrdineDTO getOrdine(Long idOrdine);

	 void annullaOrdine(Long idOrdine) throws Exception;

	 void aggiornaStatoOrdine(Long idOrdine, StatoOrdine nuovoStato);


	 List<OrdineDTO> getOrdiniFiltrati(Long idUtente, boolean completati, FiltroTemporale filtro);


}
