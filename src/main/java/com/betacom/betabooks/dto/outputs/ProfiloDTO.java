package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProfiloDTO {
    private String nome;
    private String cognome;
    private String telefono;
    private UtenteDTO utente; // Dati base dell'account
}