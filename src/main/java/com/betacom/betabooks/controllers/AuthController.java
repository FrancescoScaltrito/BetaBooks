package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:4200")
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final IUtenteRepository utenteRepository;
    
    @GetMapping("/me")
    public ResponseEntity<UtenteDTO> getMe(Authentication authentication) {
        if (authentication == null || !authentication.isAuthenticated()) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }

        // Il 'name' dell'authentication è l'email (o username) usata nel login
        Utente utente = utenteRepository.findByEmail(authentication.getName())
                .orElseThrow(() -> new RuntimeException("Utente non trovato"));

        UtenteDTO dto = UtenteDTO.builder()
                .id(utente.getId())
                .email(utente.getEmail())
                .ruolo(utente.getRuolo().name())
                // Aggiungi qui nome e cognome se li hai nel DTO per mostrarli in Angular!
                .build();

        return ResponseEntity.ok(dto);
    }

    @PostMapping("/login")
    public ResponseEntity<UtenteDTO> login(@RequestBody UtenteReq req) {
    	
    	System.out.println("--- TENTATIVO LOGIN ---");
        System.out.println("Email ricevuta: " + req.getEmail());
        System.out.println("Password ricevuta: " + req.getPassword());
        
        try {
        	System.out.println("--- INIZIO AUTENTICAZIONE PER: " + req.getEmail());
        	
            authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(req.getEmail(), req.getPassword())
            );
            
            System.out.println("--- AUTENTICAZIONE RIUSCITA! ---");

            Utente utente = utenteRepository.findByEmail(req.getEmail())
                    .orElseThrow(() -> new RuntimeException("Utente non trovato dopo autenticazione"));

            UtenteDTO dto = UtenteDTO.builder()
                    .id(utente.getId())
                    .email(utente.getEmail())
                    .ruolo(utente.getRuolo().name())
                    .build();

            return ResponseEntity.ok(dto);

        } /*catch (AuthenticationException e) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }*/
        catch (AuthenticationException e) {
            System.out.println("--- ERRORE AUTENTICAZIONE: " + e.getMessage());
            e.printStackTrace(); // <--- QUESTO CI DICE TUTTO
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        }
    }
}