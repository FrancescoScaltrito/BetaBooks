package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EditoreDTO {
    private Long id;
    private String nome;
    private String descrizione;
}