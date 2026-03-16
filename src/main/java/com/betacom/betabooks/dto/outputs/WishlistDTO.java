package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class WishlistDTO {
    private Long id;
    private LibroDTO libro; // Restituiamo il dettaglio del libro salvato
}