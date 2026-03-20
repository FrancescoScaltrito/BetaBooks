package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CarrelloDTO {
    private Long id;
    private Long idUtente;
    private List<CarrelloItemDTO> items; 
    private BigDecimal prezzoTotaleComplessivo;  //per inviare il calcolo al frontend
}