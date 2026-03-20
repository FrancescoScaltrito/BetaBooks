package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor @NoArgsConstructor
@Builder
public class CarrelloItemDTO {
    private Long id;              
    private Long idLibro;         
    private String titoloLibro;   
    private Integer quantita;    
    private BigDecimal prezzoUnitario;
    private BigDecimal prezzoTotaleRiga; 
}