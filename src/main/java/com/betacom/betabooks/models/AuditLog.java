package com.betacom.betabooks.models;

import java.time.LocalDateTime;
import java.util.Map;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter 
@Setter 
@Entity
@Table(name = "audit_log")
public class AuditLog {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_audit")
    private Long id;

    @Column(name = "nome_tabella", nullable = false, length = 50)
    private String nomeTabella;

    @Column(name = "tipo_operazione", nullable = false, length = 10)
    private String tipoOperazione;

    @Column(name = "id_modificato", nullable = false)
    private Long idModificato;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "valori_precedenti", columnDefinition = "jsonb")
    private Map<String, Object> valoriPrecedenti;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "valori_nuovi", columnDefinition = "jsonb")
    private Map<String, Object> valoriNuovi;

    @Column(name = "utente_db", length = 50)
    private String utenteDb;

    @Column(name = "data_modifica")
    private LocalDateTime dataModifica;
}