package com.betacom.betabooks.dto.inputs;

import java.math.BigDecimal;

import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class FormatoLibroReq {
    private Long id;          
    private Long idLibro;
    private TipoSupporto tipoSupporto;
    private TipoCopertina tipoCopertina;  // null per ebook
    private String isbn;
    private BigDecimal prezzo;
    private Integer quantita;  // null per ebook
    private Boolean attivo;
}
