package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class AutoreDTO {
    private Long id;
    private String nome;
    private String cognome;
    private String nazionalita;
    private String biografia;
    private boolean attivo;
}