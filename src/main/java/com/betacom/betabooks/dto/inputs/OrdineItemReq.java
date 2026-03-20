package com.betacom.betabooks.dto.inputs;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrdineItemReq {
	private Long id;
	private Long idLibro;
	private Integer quantita;
	private Long idOrdine;
	private BigDecimal prezzoUnitarioAcquisto;

}
