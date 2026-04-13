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
    private Long idFormatoLibro;         
    private String titoloLibro;   
    private Integer quantita;    
    private BigDecimal prezzoUnitario;
    private BigDecimal prezzoTotaleRiga; 
    
    //aggiunte necessarie per visualizzare i dati del libro nel carrello
    private String autoreNome;
    private String autoreCognome;
    private String editoreNome;
    private String copertina;
}