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
@Table(name = "indirizzi")
public class Indirizzo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_indirizzo")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_utente", nullable = false)
    private Utente utente;

    @Column(name = "is_predefinito")
    private Boolean isDefault = false;

    @Column(name = "via")
    private String via;

    @Column(name = "civico")
    private String civico;

    @Column(name = "comune")
    private String comune;

    @Column(name = "cap", length = 5)
    private String cap;

    @Column(name = "provincia", length = 2)
    private String provincia;

    @Column(name = "paese")
    private String paese = "Italia";

    @Column(name = "note_consegna", columnDefinition = "TEXT")
    private String noteConsegna;
}