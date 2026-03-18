package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

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
    private String stato;
    private BigDecimal totale;
    private String metodoPagamento;
    private List<OrdineItemDTO> items;
}