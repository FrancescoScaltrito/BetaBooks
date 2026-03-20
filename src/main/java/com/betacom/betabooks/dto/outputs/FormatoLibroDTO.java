package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;

import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FormatoLibroDTO {
    private Long id;
    private TipoSupporto tipoSupporto;
    private TipoCopertina tipoCopertina;
    private String isbn;
    private BigDecimal prezzo;
    private Integer quantita;
    private Boolean attivo;
    private String copertina;  // base64 "data:mime;base64,..." solo in risposte "completo"
}
