package com.betacom.betabooks.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.AuditLog;

public interface IAuditLogRepository extends JpaRepository<AuditLog, Long> {

    List<AuditLog> OrderByDataModificaDesc();
    List<AuditLog> findByNomeTabellaOrderByDataModificaDesc(String nomeTabella);
}
