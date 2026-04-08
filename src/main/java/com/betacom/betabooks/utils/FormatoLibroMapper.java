package com.betacom.betabooks.utils;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import com.betacom.betabooks.dto.outputs.FormatoLibroDTO;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.services.interfaces.IUploadServices;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class FormatoLibroMapper {
	
	private final IUploadServices upS;
	
	/*
     * FROMATO LIBRO
     */

    public  FormatoLibroDTO buildFormatoLibroDTO(FormatoLibro f) {
        return FormatoLibroDTO.builder()
        		.copertina( (f.getCopertina() == null)  ? null :  upS.buildUrl(f.getCopertina()))
                .id(f.getId())
                .tipoSupporto(f.getTipoSupporto())
                .tipoCopertina(f.getTipoCopertina())
                .isbn(f.getIsbn())
                .prezzo(f.getPrezzo())
                .quantita(f.getQuantita())
                .attivo(f.getAttivo())
                // copertina base64 non inclusa di default — usare findFormatoByIdCompleto
                
                .build();
    }

    public  List<FormatoLibroDTO> buildFormatoLibroDTO(List<FormatoLibro> formati) {
        return formati.stream()
                .map(fl -> buildFormatoLibroDTO(fl))
                .collect(Collectors.toList());
    }

}
