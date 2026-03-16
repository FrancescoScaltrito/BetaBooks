package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrdineItemDTO {
    private String titoloLibro; 
    private Integer quantita;
    private BigDecimal prezzoUnitarioAcquisto;
}