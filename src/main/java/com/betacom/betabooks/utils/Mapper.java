package com.betacom.betabooks.utils;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Component;

import com.betacom.betabooks.dto.outputs.AutoreDTO;
import com.betacom.betabooks.dto.outputs.CategoriaDTO;
import com.betacom.betabooks.dto.outputs.EditoreDTO;
import com.betacom.betabooks.dto.outputs.FormatoLibroDTO;
import com.betacom.betabooks.dto.outputs.LibroDTO;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Categoria;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.services.interfaces.ILibroServices;
import com.betacom.betabooks.services.interfaces.IUploadServices;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
public class Mapper {
	private final FormatoLibroMapper flM;
	

    /*
     * AUTORE
     */

    public static AutoreDTO buildAutoreDTO(Autore a) {
        return AutoreDTO.builder()
        		.id(a.getId())
                .biografia(a.getBiografia())
                .nome(a.getNome())
                .cognome(a.getCognome())
                .nazionalita(a.getNazionalita())
                .build();
    }

    public static List<AutoreDTO> buildAutoreDTO(List<Autore> autori) {
        return autori.stream()
                .map(Mapper::buildAutoreDTO)
                .collect(Collectors.toList());
    }

    /*
     * EDITORE
     */

    public static EditoreDTO buildEditoreDTO(Editore e) {
        return EditoreDTO.builder()
        		.id(e.getId())
                .descrizione(e.getDescrizione())
                .nome(e.getNome())
                .build();
    }

    public static List<EditoreDTO> buildEditoreDTO(List<Editore> editori) {
        return editori.stream()
                .map(Mapper::buildEditoreDTO)
                .collect(Collectors.toList());
    }

    /*
     * CATEGORIA
     */

    public static CategoriaDTO buildCategoriaDTO(Categoria c) {
        return CategoriaDTO.builder()
        		.id(c.getId())
                .descrizione(c.getDescrizione())
                .nome(c.getNome())
                .build();
    }

    public static List<CategoriaDTO> buildCategoriaDTO(List<Categoria> categorie) {
        return categorie.stream()
                .map(Mapper::buildCategoriaDTO)
                .collect(Collectors.toList());
    }

    

    /*
     * LIBRO
     */

    public  LibroDTO buildLibroDTO(Libro l) {
        return LibroDTO.builder()
                .id(l.getId())
                .titolo(l.getTitolo())
                .descrizione(l.getDescrizione())
                .autore(buildAutoreDTO(l.getAutore()))
                .editore(buildEditoreDTO(l.getEditore()))
                .categorie(buildCategoriaDTO(
                        l.getCategorie().stream().collect(Collectors.toList())))
                .formati(l.getFormati() != null
                        ? flM.buildFormatoLibroDTO(l.getFormati())
                        : List.of())
                .build();
    }

    public  List<LibroDTO> buildLibroDTO(List<Libro> libri) {
        return libri.stream()
                .map( l->buildLibroDTO(l))
                .collect(Collectors.toList());
    }
    

    
    
}
