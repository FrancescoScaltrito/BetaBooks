package com.betacom.betabooks.models;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "editori")
public class Editore {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_editore")
    private Long id;
    
    @Column(name = "nome", unique = true, nullable = false)
    private String nome;
    
    @Column(name = "descrizione", columnDefinition = "TEXT")
    private String descrizione;
}
