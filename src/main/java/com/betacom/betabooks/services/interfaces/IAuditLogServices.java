package com.betacom.betabooks.services.interfaces;

import java.util.List;

import com.betacom.betabooks.dto.outputs.AuditLogDTO;

public interface IAuditLogServices {
    List<AuditLogDTO> findAll() throws Exception;
    List<AuditLogDTO> findByTabella(String nomeTabella) throws Exception;
}
