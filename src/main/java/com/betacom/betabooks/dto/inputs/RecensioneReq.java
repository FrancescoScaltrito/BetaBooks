package com.betacom.betabooks.dto.inputs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class RecensioneReq {
    private Long idUtente;
    private Long idLibro;
    private Short valutazione; // 1-5
    private String descrizione;
}
