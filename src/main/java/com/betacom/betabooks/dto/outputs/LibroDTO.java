package com.betacom.betabooks.dto.outputs;

import java.math.BigDecimal;
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
    private String isbn;
    private BigDecimal prezzo;
    private Integer quantita;
    private AutoreDTO autore;
    private EditoreDTO editore;
    private List<CategoriaDTO> categorie;
    private String copertina;		//aggiunga copertina per stampa libro completa (sequenza di caratteri che interpreterà Angular)
}