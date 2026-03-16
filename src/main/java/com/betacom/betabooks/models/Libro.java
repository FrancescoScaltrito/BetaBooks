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

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Libro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String titolo;
    
    @Column(unique = true)
    private String isbn;
    
    private BigDecimal prezzo;
    private Integer quantita;

    @ManyToOne
    @JoinColumn(name = "id_editore")
    private Editore editore;

    @ManyToOne
    @JoinColumn(name = "id_autore")
    private Autore autore;

    @ManyToMany
    @JoinTable(
        name = "libro_categoria",
        joinColumns = @JoinColumn(name = "id_libro"),
        inverseJoinColumns = @JoinColumn(name = "id_categoria")
    )
    private Set<Categoria> categorie;
}