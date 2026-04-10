package com.betacom.betabooks.models;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "password_reset_tokens")
public class PasswordResetToken {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String token;

    @OneToOne(targetEntity = Utente.class, fetch = FetchType.EAGER)
    @JoinColumn(nullable = false, name = "utente_id")
    private Utente utente;

    @Column(nullable = false)
    private LocalDateTime dataScadenza;

    // Costruttori, Getter e Setter
    public PasswordResetToken() {}

    public PasswordResetToken(String token, Utente utente, int minutiScadenza) {
        this.token = token;
        this.utente = utente;
        this.dataScadenza = LocalDateTime.now().plusMinutes(minutiScadenza);
    }
    
    public boolean isScaduto() {
        return LocalDateTime.now().isAfter(this.dataScadenza);
    }
}
