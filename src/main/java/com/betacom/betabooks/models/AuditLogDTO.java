package com.betacom.betabooks.dto.outputs;

import java.time.LocalDateTime;
import java.util.Map;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AuditLogDTO {
    private Long id;
    private String nomeTabella;
    private String tipoOperazione;
    private Long idModificato;
    private Map<String, Object> valoriPrecedenti;
    private Map<String, Object> valoriNuovi;
    private String utenteDb;
    private LocalDateTime dataModifica;
}
