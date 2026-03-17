package com.betacom.betabooks.models;

import java.math.BigDecimal;

import java.util.Set;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "libri")
public class Libro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_libro")
    private Long id;
    
    @Column(name = "titolo", nullable = false)
    private String titolo;
    
    @Column(name = "codice_isbn", unique = true, length = 13)
    private String isbn;
    
    @Column(name = "prezzo_listino", precision = 10, scale = 2)
    private BigDecimal prezzo;

    @Column(name = "quantita_magazzino")
    private Integer quantita;

    @ManyToOne
    @JoinColumn(name = "id_editore", nullable = false)
    private Editore editore;

    @ManyToOne
    @JoinColumn(name = "id_autore", nullable = false)
    private Autore autore;

    @ManyToMany
    @JoinTable(
        name = "libri_categorie", 
        joinColumns = @JoinColumn(name = "id_libro"),
        inverseJoinColumns = @JoinColumn(name = "id_categoria")
    )
    private Set<Categoria> categorie;
}