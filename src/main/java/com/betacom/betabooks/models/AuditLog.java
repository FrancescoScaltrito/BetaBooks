package com.betacom.betabooks.models; // Adatta il pacchetto se necessario

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes; // <--- Questo è l'import corretto
import java.time.LocalDateTime;
import java.util.Map;

@Entity
@Table(name = "audit_log")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AuditLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nome_tabella", nullable = false)
    private String nomeTabella;

    @Column(name = "tipo_operazione", nullable = false)
    private String tipoOperazione;

    @Column(name = "id_modificato", nullable = false)
    private Long idModificato;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "valori_precedenti", columnDefinition = "jsonb")
    private Map<String, Object> valoriPrecedenti;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "valori_nuovi", columnDefinition = "jsonb")
    private Map<String, Object> valoriNuovi;

    @Column(name = "utente_db")
    private String utenteDb;

    @Column(name = "data_modifica", nullable = false)
    private LocalDateTime dataModifica;

    @PrePersist
    protected void onCreate() {
        if (this.dataModifica == null) {
            this.dataModifica = LocalDateTime.now();
        }
    }
}