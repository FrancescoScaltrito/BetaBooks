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
@Table(name = "carrello_item", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"id_utente", "id_libro"})
})
public class CarrelloItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_utente")
    private Utente utente;

    @ManyToOne
    @JoinColumn(name = "id_libro")
    private Libro libro;

    private Integer quantita = 1;
    
    @Column(name = "prezzo_pezzi")
    private BigDecimal prezzoPezzi;
}