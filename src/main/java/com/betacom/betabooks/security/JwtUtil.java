package com.betacom.betabooks.security;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.stereotype.Component;

import javax.crypto.SecretKey;
import java.nio.charset.StandardCharsets;
import java.util.Date;

@Component
public class JwtUtil {

    // 1. LA CHIAVE SEGRETA
    // Questa chiave serve a "firmare" i token. Deve essere lunga almeno 32 caratteri!
    // In un progetto reale, non si scrive nel codice ma si mette nell'application.properties
    private final String SECRET_KEY_STRING = "QuestaEUnaChiaveSegretaMoltoLungaPerBetaBooks2026!!!";
    
    // Trasformiamo la stringa in una chiave crittografica vera e propria
    private final SecretKey secretKey = Keys.hmacShaKeyFor(SECRET_KEY_STRING.getBytes(StandardCharsets.UTF_8));
    
    // 2. TEMPO DI SCADENZA
    // Quanto dura il token prima di scadere? (Es. 24 ore = 86.400.000 millisecondi)
    private final long EXPIRATION_TIME = 86400000;

    // ──────────────────────────────────────────────────────────────────────────
    // METODO 1: CREA IL TOKEN (Viene chiamato dall' AuthController durante il Login)
    // ──────────────────────────────────────────────────────────────────────────
    public String generateToken(String email, String ruolo) {
        return Jwts.builder()
                .subject(email)                                     // Chi è l'utente? (Email)
                .claim("ruolo", ruolo)                              // Informazione extra (Admin/User)
                .issuedAt(new Date(System.currentTimeMillis()))     // Quando è stato creato? (Adesso)
                .expiration(new Date(System.currentTimeMillis() + EXPIRATION_TIME)) // Quando scade?
                .signWith(secretKey)                                // Firma il tutto con la chiave segreta
                .compact();                                         // Comprimi e trasforma in stringa
    }

    // ──────────────────────────────────────────────────────────────────────────
    // METODO 2: ESTRAI L'EMAIL (Viene chiamato dal JwtFilter per capire chi sta facendo la richiesta)
    // ──────────────────────────────────────────────────────────────────────────
    public String extractEmail(String token) {
        return Jwts.parser()
                .verifyWith(secretKey)       // Verifica che la firma sia la nostra
                .build()
                .parseSignedClaims(token)    // Leggi il contenuto del token
                .getPayload()                // Prendi i dati (Payload)
                .getSubject();               // Estrai il soggetto (che è l'email che abbiamo inserito prima)
    }

    // ──────────────────────────────────────────────────────────────────────────
    // METODO 3: VERIFICA SE È VALIDO (Viene chiamato dal JwtFilter per bloccare gli hacker)
    // ──────────────────────────────────────────────────────────────────────────
    public boolean isTokenValid(String token) {
        try {
            // Proviamo a leggerlo usando la nostra chiave
            Jwts.parser()
                .verifyWith(secretKey)
                .build()
                .parseSignedClaims(token);
            
            // Se Spring riesce a leggerlo senza che esploda nessun errore, il token è perfetto!
            return true; 
            
        } catch (Exception e) {
            // Se il token è scaduto, inventato, o modificato da un hacker, la lettura fallisce
            // e finiamo qui dentro, restituendo 'false' (Token non valido).
            return false; 
        }
    }
}