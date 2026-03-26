package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.security.JwtUtil;
import com.betacom.betabooks.services.interfaces.IUtenteServices;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;
import com.betacom.betabooks.dto.outputs.UtenteDTO;


import io.swagger.v3.oas.annotations.security.SecurityRequirement;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/utenti")
public class UtenteController {

    private final IUtenteServices utenteService; // Usiamo solo il service!
    private final PasswordEncoder passwordEncoder; 
    private final IUtenteRepository utenteRepository;
    

    public UtenteController(IUtenteServices utenteService, 
                            PasswordEncoder passwordEncoder,
                            IUtenteRepository utenteRepository) {
        this.utenteService = utenteService;
        this.passwordEncoder = passwordEncoder;
        this.utenteRepository = utenteRepository;
    }

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody UtenteReq req) {
        // Deve corrispondere al nome della variabile sopra!
        Map<String, Object> response = utenteService.login(req); 
        return ResponseEntity.ok(response);
    }

    @PostMapping("/register")
    @SecurityRequirement(name = "") 
    public ResponseEntity<UtenteDTO> register(@RequestBody UtenteReq req) {
        if (utenteRepository.existsByEmail(req.getEmail())) {
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        Utente utente = new Utente();
        utente.setEmail(req.getEmail());
        utente.setPassword(passwordEncoder.encode(req.getPassword()));

        Utente salvato = utenteRepository.save(utente);

        UtenteDTO dto = UtenteDTO.builder()
                .id(salvato.getId())
                .email(salvato.getEmail())
                .ruolo(salvato.getRuolo().name())
                .build();

        return ResponseEntity.status(HttpStatus.CREATED).body(dto);
    }

   
    @GetMapping
    public List<UtenteDTO> getAll() {
        return utenteRepository.findAll().stream()
                .map(u -> UtenteDTO.builder()
                        .id(u.getId())
                        .email(u.getEmail())
                        .ruolo(u.getRuolo().name())
                        .build())
                .collect(Collectors.toList());
    }

   
    @GetMapping("/{id}")
    public ResponseEntity<UtenteDTO> getById(@PathVariable Long id) {
        return utenteRepository.findById(id)
                .map(u -> ResponseEntity.ok(UtenteDTO.builder()
                        .id(u.getId())
                        .email(u.getEmail())
                        .ruolo(u.getRuolo().name())
                        .build()))
                .orElse(ResponseEntity.notFound().build());
    }

   
    @PutMapping("/{id}")
    public ResponseEntity<UtenteDTO> update(@PathVariable Long id, @RequestBody UtenteReq req) {
        return utenteRepository.findById(id).map(u -> {
            u.setEmail(req.getEmail());
            if (req.getPassword() != null && !req.getPassword().isBlank()) {
                u.setPassword(passwordEncoder.encode(req.getPassword()));
            }
            Utente salvato = utenteRepository.save(u);
            return ResponseEntity.ok(UtenteDTO.builder()
                    .id(salvato.getId())
                    .email(salvato.getEmail())
                    .ruolo(salvato.getRuolo().name())
                    .build());
        }).orElse(ResponseEntity.notFound().build());
    }

   
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        if (!utenteRepository.existsById(id)) return ResponseEntity.notFound().build();
        utenteRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}