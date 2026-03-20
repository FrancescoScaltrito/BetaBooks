package com.betacom.betabooks.utils;

import java.util.List;
import java.util.stream.Collectors;

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

public class Mapper {

    /*
     * AUTORE
     */

    public static AutoreDTO buildAutoreDTO(Autore a) {
        return AutoreDTO.builder()
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
     * FROMATO LIBRO
     */

    public static FormatoLibroDTO buildFormatoLibroDTO(FormatoLibro f) {
        return FormatoLibroDTO.builder()
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

    public static List<FormatoLibroDTO> buildFormatoLibroDTO(List<FormatoLibro> formati) {
        return formati.stream()
                .map(Mapper::buildFormatoLibroDTO)
                .collect(Collectors.toList());
    }

    /*
     * LIBRO
     */

    public static LibroDTO buildLibroDTO(Libro l) {
        return LibroDTO.builder()
                .id(l.getId())
                .titolo(l.getTitolo())
                .descrizione(l.getDescrizione())
                .autore(buildAutoreDTO(l.getAutore()))
                .editore(buildEditoreDTO(l.getEditore()))
                .categorie(buildCategoriaDTO(
                        l.getCategorie().stream().collect(Collectors.toList())))
                .formati(l.getFormati() != null
                        ? buildFormatoLibroDTO(l.getFormati())
                        : List.of())
                .build();
    }

    public static List<LibroDTO> buildLibroDTO(List<Libro> libri) {
        return libri.stream()
                .map(Mapper::buildLibroDTO)
                .collect(Collectors.toList());
    }
}
