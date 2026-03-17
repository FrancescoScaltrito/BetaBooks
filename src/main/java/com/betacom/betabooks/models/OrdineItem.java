package com.betacom.betabooks.models;

import java.math.BigDecimal;

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

@Getter @Setter @Entity
@Table(name = "ordine_items")
public class OrdineItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ordine_item")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_libro", nullable = false)
    private Libro libro;

    @Column(name = "quantita_ordinata", nullable = false)
    private Integer quantita;

    @ManyToOne
    @JoinColumn(name = "id_ordine", nullable = false)
    private Ordine ordine;

    @Column(name = "prezzo_unitario_storico", nullable = false, precision = 10, scale = 2)
    private BigDecimal prezzoUnitarioAcquisto;
}