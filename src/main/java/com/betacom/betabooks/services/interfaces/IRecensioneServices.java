package com.betacom.betabooks.services.interfaces;

import java.util.List;

import com.betacom.betabooks.dto.inputs.RecensioneReq;
import com.betacom.betabooks.dto.outputs.RecensioneDTO;

public interface IRecensioneServices {

    Long create(RecensioneReq req) throws Exception;

    void update(RecensioneReq req) throws Exception;

    void delete(Long id) throws Exception;

    RecensioneDTO findById(Long id) throws Exception;

    List<RecensioneDTO> findAll() throws Exception;

    List<RecensioneDTO> findByLibro(Long idLibro) throws Exception;

    List<RecensioneDTO> findByUtente(Long idUtente) throws Exception;
}