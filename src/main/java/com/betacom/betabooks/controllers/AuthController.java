package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final IUtenteRepository utenteRepository;

    @PostMapping("/login")
    public ResponseEntity<UtenteDTO> login(@RequestBody UtenteReq req) {
        try {
            authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(req.getEmail(), req.getPassword())
            );

            Utente utente = utenteRepository.findByEmail(req.getEmail())
                    .orElseThrow(() -> new Exception("Utente non trovato"));

            UtenteDTO dto = UtenteDTO.builder()
                    .id(utente.getId())
                    .email(utente.getEmail())
                    .ruolo(utente.getRuolo().name())
                    .build();

            return ResponseEntity.ok(dto);

        } catch (AuthenticationException e) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }
}