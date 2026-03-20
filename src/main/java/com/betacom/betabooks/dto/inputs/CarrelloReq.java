package com.betacom.betabooks.dto.inputs;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CarrelloReq { //contiene tutto ciò che serve per la creazione del carrello: dati che il frontend invia al backend
	private Long idUtente; 
    private Long idFormatoLibro;  
    private Integer quantita;
   
}
