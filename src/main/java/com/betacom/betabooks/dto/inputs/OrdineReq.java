package com.betacom.betabooks.dto.inputs;



import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter 
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrdineReq {
	private Long id;
    private Long idUtente;
    private Long idIndirizzo;
    private String metodoPagamento;
}