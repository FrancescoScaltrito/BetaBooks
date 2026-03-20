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
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.Min;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter @Entity
@Table(name = "carrello_items", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"id_carrello", "id_formato"})
})
public class CarrelloItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_carrello_item")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_carrello", nullable = false)
    private Carrello carrello;

    @ManyToOne
    @JoinColumn(name = "id_formato", nullable = false)
    private FormatoLibro formatoLibro;

    @Column(name = "quantita", nullable = false)
    @Min(value = 1)
    private Integer quantita = 1;

    //salva il prezzo nel momento in cui viene aggiunto al carrello
    @Column(name = "prezzo_unitario_storico", precision = 10, scale = 2)
    private BigDecimal prezzoUnitario; 
}