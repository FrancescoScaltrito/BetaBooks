package com.betacom.betabooks.dto.outputs;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UtenteDTO {
    private Long id;
    private String email;
    private String ruolo;
    @JsonProperty("validato") // Forza il nome del campo nel JSON
    private Boolean validato;
}