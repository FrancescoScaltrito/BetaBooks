package com.betacom.betabooks.models;

import java.math.BigDecimal;


import lombok.Getter;
import lombok.Setter;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Getter
@Setter
@Entity
@Table(name = "carrello", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"id_utente", "id_libro"})
})
public class Carrello {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_carrello")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_utente", nullable = false)
    private Utente utente;

    @ManyToOne
    @JoinColumn(name = "id_libro", nullable = false)
    private Libro libro;

    @Column(name = "quantita")
    private Integer quantita = 1;
    
    @Column(name = "prezzo_totale_pezzi", precision = 10, scale = 2)
    private BigDecimal prezzoPezzi;
}