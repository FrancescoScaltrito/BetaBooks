package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class IndirizzoDTO {
    private Long id;
    private String via;
    private String civico;
    private String comune;
    private String cap;
    private String provincia;
    private String paese;
    private Boolean isDefault;
    private String noteConsegna;
    private Boolean attivo;
}