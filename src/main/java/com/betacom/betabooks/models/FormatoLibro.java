package com.betacom.betabooks.models;

import java.math.BigDecimal;

import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
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
@Table(
    name = "formato_libro",
    uniqueConstraints = @UniqueConstraint(columnNames = {"id_libro", "tipo_supporto", "tipo_copertina"})
)
public class FormatoLibro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_formato")
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(name = "tipo_supporto", nullable = false, length = 20)
    private TipoSupporto tipoSupporto;

    @Enumerated(EnumType.STRING)
    @Column(name = "tipo_copertina", length = 20)
    private TipoCopertina tipoCopertina;  // NULL per ebook

    @Column(name = "codice_isbn", unique = true, length = 13)
    private String isbn;

    @Column(name = "prezzo_listino", nullable = false, precision = 10, scale = 2)
    private BigDecimal prezzo;

    @Column(name = "quantita_magazzino")
    private Integer quantita;  // NULL per ebook

    @Column(name = "copertina")
    private String copertina;

    @Column(name = "attivo")
    private Boolean attivo = true;

    @ManyToOne
    @JoinColumn(name = "id_libro", nullable = false)
    private Libro libro;

}
