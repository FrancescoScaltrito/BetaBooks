package com.betacom.betabooks.models;

import java.time.LocalDateTime;

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

@Getter
@Setter
@Entity
@Table(name = "recensione", uniqueConstraints = {@UniqueConstraint(columnNames = {"id_utente", "id_libro"})})
public class Recensione {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_utente")
    private Utente utente;

    @ManyToOne
    @JoinColumn(name = "id_libro")
    private Libro libro;

    @Column(nullable = false)
    private Short valutazione; // tra 1 e 5

    @Column(columnDefinition = "TEXT")
    private String descrizione;

    private LocalDateTime data = LocalDateTime.now();
}