package com.betacom.betabooks.services.implementations;

import java.util.List;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.outputs.AuditLogDTO;
import com.betacom.betabooks.models.AuditLog;
import com.betacom.betabooks.repositories.IAuditLogRepository;
import com.betacom.betabooks.services.interfaces.IAuditLogServices;
import com.betacom.betabooks.utils.Mapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@Slf4j
@Service
public class AuditLogImpl implements IAuditLogServices {

    private final IAuditLogRepository auditR;

    @Override
    public List<AuditLogDTO> findAll() throws Exception {
        log.debug("AuditLogImpl - findAll");
        List<AuditLog> logs = auditR.findAll(); 
        return Mapper.buildAuditLogDTO(logs);
    }

    @Override
    public List<AuditLogDTO> findByTabella(String nomeTabella) throws Exception {
        log.debug("AuditLogImpl - findByTabella {}", nomeTabella);
        if(nomeTabella == null || nomeTabella.trim().isEmpty()) {
            throw new Exception("Il nome della tabella non può essere vuoto");
        }
        
        List<AuditLog> logs = auditR.findByNomeTabellaOrderByDataModificaDesc(nomeTabella);
        return Mapper.buildAuditLogDTO(logs);
    }
}
