package com.betacom.betabooks.services.interfaces;

import java.util.List;

import com.betacom.betabooks.dto.inputs.ProfiloReq;
import com.betacom.betabooks.dto.outputs.ProfiloDTO;

public interface IProfiloUtenteServices {

    Long create(ProfiloReq req) throws Exception;

    void update(ProfiloReq req) throws Exception;

    void delete(Long id) throws Exception;

    ProfiloDTO findById(Long id) throws Exception;

    List<ProfiloDTO> findAll() throws Exception;

    ProfiloDTO findByUtente(Long idUtente) throws Exception;
}