package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.StatoOrdine;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class OrdineDTO {
	private Long id;
    private LocalDateTime dataOrdine;
    private StatoOrdine stato;
    private MetodoPagamento metodoPagamento;
    private BigDecimal totaleComplessivo;
    
    // Lista dei prodotti acquistati
    private List<OrdineItemDTO> items;
    
    // Info sull'indirizzo (opzionale: puoi mettere l'ID o una stringa riassuntiva)
    private Long idIndirizzo;
}