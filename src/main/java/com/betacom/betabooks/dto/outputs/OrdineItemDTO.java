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
public class OrdineItemDTO {
	private Long id;
    private Long idFormatoLibro;
    private String titoloLibro;
    private Integer quantita;
    private BigDecimal prezzoUnitarioAcquisto; 
    private BigDecimal subtotale;
    
    private String copertina;
    private TipoSupporto tipoSupporto;
    private TipoCopertina tipoCopertina;
}