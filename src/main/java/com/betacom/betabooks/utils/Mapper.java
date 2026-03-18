package com.betacom.betabooks.utils;

import java.util.List;
import java.util.stream.Collectors;

import com.betacom.betabooks.dto.outputs.AutoreDTO;
import com.betacom.betabooks.dto.outputs.CategoriaDTO;
import com.betacom.betabooks.dto.outputs.EditoreDTO;
import com.betacom.betabooks.dto.outputs.LibroDTO;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Categoria;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.Libro;

public class Mapper {
	/*
	 * 		AUTORE BUILDER
	 */
	public static AutoreDTO buildAutoreDTO(Autore a) {
		return AutoreDTO.builder()
					.biografia(a.getBiografia())
					.nome(a.getNome())
					.cognome(a.getCognome())
					.nazionalita(a.getNazionalita())
					.build();
			
	}
	
	public static List<AutoreDTO> buildAutoreDTO(List<Autore> aut) {
		return aut.stream().map( a -> AutoreDTO.builder()
				.biografia(a.getBiografia())
				.nome(a.getNome())
				.cognome(a.getCognome())
				.nazionalita(a.getNazionalita())
				.build()).collect(Collectors.toList());
	}
	
	/*
	 * 		EDITORE BUILDER
	 */
	
	
	public static EditoreDTO buildEditoreDTO(Editore e) {
		return EditoreDTO.builder()
					.descrizione(e.getDescrizione())
					.nome(e.getNome())
					.build();
	}
	
	public static List<EditoreDTO> buildEditoreDTO( List<Editore> edi) {
		return edi.stream().map( e -> EditoreDTO.builder()
				.descrizione(e.getDescrizione())
				.nome(e.getNome())
				.build()).collect(Collectors.toList());
	}
	
	/*
	 * 		CATEGORIA BUILDER
	 */
	
	public static CategoriaDTO buildCategoriaDTO(Categoria c) {
		return CategoriaDTO.builder()
					.descrizione(c.getDescrizione())
					.nome(c.getNome())
					.build();
	}
	
	public static List<CategoriaDTO> buildCategoriaDTO(List<Categoria> cat) {
		return cat.stream().map(c ->
				CategoriaDTO.builder()
				.descrizione(c.getDescrizione())
				.nome(c.getNome())
				.build()
				).collect(Collectors.toList());
	}
	
	/*
	 *      LIBRO BUILDER
	 */

	public static LibroDTO buildLibroDTO(Libro l) {
	    return LibroDTO.builder()
	            .id(l.getId())
	            .titolo(l.getTitolo())
	            .isbn(l.getIsbn())
	            .prezzo(l.getPrezzo())
	            .quantita(l.getQuantita())
	            .autore(buildAutoreDTO(l.getAutore()))
	            .editore(buildEditoreDTO(l.getEditore()))
	            .categorie(buildCategoriaDTO(l.getCategorie().stream().collect(Collectors.toList())))
	            .build();
	}

	public static List<LibroDTO> buildLibroDTO(List<Libro> libri) {
	    return libri.stream()
	            .map(l -> buildLibroDTO(l))
	            .collect(Collectors.toList());
	}
}
