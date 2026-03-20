package com.betacom.betabooks.dto.inputs;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class LibroReq {
    private Long id;
    private String titolo;
    private String descrizione;
    private Long idAutore;
    private Long idEditore;
    private List<Long> idCategorie;
}
