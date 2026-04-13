package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class EditoreDTO {
    private Long id;
    private String nome;
    private String descrizione;
    private boolean attivo;
}