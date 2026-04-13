package com.betacom.betabooks.dto.inputs;

import lombok.*;

@Getter @Setter
@AllArgsConstructor @NoArgsConstructor
public class Registrazione {
    // Dati Utente
    private String email;
    private String password;
    private String ruolo;
    
    // Dati Profilo
    private String nome;
    private String cognome;
    private Boolean validato;
}