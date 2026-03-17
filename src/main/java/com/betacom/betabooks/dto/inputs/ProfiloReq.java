package com.betacom.betabooks.dto.inputs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProfiloReq {
	private Long id;
    private Long idUtente;
    private String nome;
    private String cognome;
    private String telefono;
}