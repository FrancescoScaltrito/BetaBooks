package com.betacom.betabooks.models;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.StatoOrdine;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter @Entity
@Table(name = "ordini")
public class Ordine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ordine")
    private Long id;

    @Column(name = "data_creazione_ordine")
    private LocalDateTime dataOrdine = LocalDateTime.now();

    @Enumerated(EnumType.STRING)
    @Column(name = "stato_ordine", nullable = false)
    private StatoOrdine stato = StatoOrdine.IN_ATTESA;

    @Column(name = "prezzo_totale", nullable = false, precision = 10, scale = 2)
    private BigDecimal totale;

    @ManyToOne
    @JoinColumn(name = "id_utente", nullable = false)
    private Utente utente;

    @ManyToOne
    @JoinColumn(name = "id_indirizzo")
    private Indirizzo indirizzo;

    @Enumerated(EnumType.STRING)
    @Column(name = "metodo_pagamento", nullable = false)
    private MetodoPagamento metodoPagamento;
    
    @OneToMany(mappedBy = "ordine", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<OrdineItem> items = new HashSet<>();
}
