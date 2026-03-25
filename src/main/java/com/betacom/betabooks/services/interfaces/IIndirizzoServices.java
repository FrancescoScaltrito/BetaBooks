package com.betacom.betabooks.services.interfaces;

import java.util.List;

import com.betacom.betabooks.dto.inputs.IndirizzoReq;
import com.betacom.betabooks.dto.outputs.IndirizzoDTO;

public interface IIndirizzoServices {

    Long create(IndirizzoReq req) throws Exception;

    void update(IndirizzoReq req) throws Exception;

    void delete(Long id) throws Exception;

    IndirizzoDTO findById(Long id) throws Exception;

    List<IndirizzoDTO> findAll() throws Exception;

    List<IndirizzoDTO> findByUtente(Long idUtente) throws Exception;

    IndirizzoDTO findPredefinitoByUtente(Long idUtente) throws Exception;
}