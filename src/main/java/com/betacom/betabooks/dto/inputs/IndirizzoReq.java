package com.betacom.betabooks.dto.inputs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class IndirizzoReq {
    private Long idUtente;
    private String via;
    private String civico;
    private String comune;
    private String cap;
    private String provincia;
    private String paese;
    private Boolean isDefault;
    private String noteConsegna;
}
