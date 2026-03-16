package com.betacom.betabooks.dto.inputs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class AutoreReq {
    private String nome;
    private String cognome;
    private String nazionalita;
    private String biografia;
}