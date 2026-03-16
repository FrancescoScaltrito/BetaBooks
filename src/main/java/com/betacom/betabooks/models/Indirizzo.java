package com.betacom.betabooks.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "indirizzo")
public class Indirizzo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_utente", nullable = false)
    private Utente utente;

    @Column(name = "is_default")
    private Boolean isDefault = false;

    private String via;
    private String civico;
    private String comune;
    private String cap;
    private String provincia;
    private String paese = "Italia";

    @Column(name = "note_consegna", columnDefinition = "TEXT")
    private String noteConsegna;
}