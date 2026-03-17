package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CarrelloDTO {
    private Long id;
    private LibroDTO libro; 
    private Integer quantita;
    private BigDecimal prezzoPezzi; 
}