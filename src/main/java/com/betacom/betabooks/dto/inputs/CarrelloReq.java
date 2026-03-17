package com.betacom.betabooks.dto.inputs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CarrelloReq {
	private Long id;
    private Long idUtente;
    private Long idLibro;
    private Integer quantita;
}
