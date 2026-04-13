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

@Getter @Setter @Entity
@Table(name = "recensioni", uniqueConstraints = {@UniqueConstraint(columnNames = {"id_utente", "id_libro"})})
public class Recensione {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_recensione")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_utente")
    private ProfiloUtente profiloUtente;

    @ManyToOne
    @JoinColumn(name = "id_libro")
    private Libro libro;

    @Column(name = "valutazione", nullable = false)
    private Short valutazione;

    @Column(name = "testo", columnDefinition = "TEXT")
    private String descrizione;

    @Column(name = "data_pubblicazione")
    private LocalDateTime data = LocalDateTime.now();
}