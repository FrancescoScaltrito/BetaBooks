package com.betacom.betabooks.dto.outputs;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LibroDTO {
    private Long id;
    private String titolo;
    private String descrizione;
    private AutoreDTO autore;
    private EditoreDTO editore;
    private List<CategoriaDTO> categorie;
    private List<FormatoLibroDTO> formati;
}
