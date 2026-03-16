package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProfiloDTO {
    private String nome;
    private String cognome;
    private String telefono;
    private UtenteDTO utente; // Dati base dell'account
}