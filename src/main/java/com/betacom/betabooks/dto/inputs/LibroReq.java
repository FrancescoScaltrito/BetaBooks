package com.betacom.betabooks.dto.inputs;

import java.math.BigDecimal;
import java.util.List;

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
public class LibroReq {
    private Long id;
    private String titolo;
    private String descrizione;
    private Long idAutore;
    private Long idEditore;
    private List<Long> idCategorie;
    
    private TipoSupporto tipoSupporto;
    private TipoCopertina tipoCopertina;
    private String isbn;
    private BigDecimal prezzo;
    private Integer quantita;
}
