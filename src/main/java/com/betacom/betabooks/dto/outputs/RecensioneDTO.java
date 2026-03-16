package com.betacom.betabooks.dto.outputs;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RecensioneDTO {
    private Long id;
    private String nomeUtente; // Es: "Mario R." invece dell'intero oggetto Utente
    private String titoloLibro;
    private Short valutazione;
    private String descrizione;
    private LocalDateTime data;
}