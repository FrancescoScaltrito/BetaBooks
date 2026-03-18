package com.betacom.betabooks.dto.outputs;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class WishlistDTO {
    private Long id;
    private LibroDTO libro; // Restituiamo il dettaglio del libro salvato
}