package com.betacom.betabooks.models;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter @Entity
@Table(name = "wishlist", uniqueConstraints = {@UniqueConstraint(columnNames = {"id_utente", "id_libro"})})
public class Wishlist {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_wishlist")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_utente")
    private Utente utente;

    @ManyToOne
    @JoinColumn(name = "id_libro")
    private Libro libro;
}