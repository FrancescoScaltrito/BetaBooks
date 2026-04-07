package com.betacom.betabooks.services.implementations;

import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.security.JwtUtil;
import com.betacom.betabooks.services.interfaces.IUtenteServices;

import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class UtenteImpl implements IUtenteServices {

	private final IUtenteRepository utenteRepository;
    private final PasswordEncoder passwordEncoder;
    private final AuthenticationManager authenticationManager;


    public UtenteImpl(IUtenteRepository utenteRepository, 
                      PasswordEncoder passwordEncoder,
                      AuthenticationManager authenticationManager) {
        this.utenteRepository = utenteRepository;
        this.passwordEncoder = passwordEncoder;
        this.authenticationManager = authenticationManager;

    }

    @Override
    public UtenteDTO register(UtenteReq req) {
        if (utenteRepository.existsByEmail(req.getEmail())) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Email già in uso");
        }

        Utente utente = new Utente();
        utente.setEmail(req.getEmail());
        utente.setPassword(passwordEncoder.encode(req.getPassword()));

        Utente salvato = utenteRepository.save(utente);
        return toDTO(salvato);
    }

    @Override
    public List<UtenteDTO> getAll() {
        return utenteRepository.findAll()
                .stream()
                .map(this::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public UtenteDTO getById(Long id) {
        Utente utente = utenteRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato con id: " + id));
        return toDTO(utente);
    }

    @Override
    public UtenteDTO update(Long id, UtenteReq req) {
        Utente utente = utenteRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato con id: " + id));

        utente.setEmail(req.getEmail());
        if (req.getPassword() != null && !req.getPassword().isBlank()) {
            utente.setPassword(passwordEncoder.encode(req.getPassword()));
        }

        Utente salvato = utenteRepository.save(utente);
        return toDTO(salvato);
    }

    @Override
    public void delete(Long id) {
        if (!utenteRepository.existsById(id)) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato con id: " + id);
        }
        utenteRepository.deleteById(id);
    }

    // ── Metodo privato di mappatura ──────────────────────────────────────────────
    private UtenteDTO toDTO(Utente u) {
        return UtenteDTO.builder()
                .id(u.getId())
                .email(u.getEmail())
                .ruolo(u.getRuolo().name())
                .build();
    }

    @Override
    public Map<String, Object> login(UtenteReq req) {
        // 1. Autentica l'utente (Spring controlla email e password)
        // Se le credenziali sono sbagliate, lancia AuthenticationException qui
        Authentication auth = authenticationManager.authenticate(
            new UsernamePasswordAuthenticationToken(req.getEmail(), req.getPassword())
        );

        // 2. Recuperiamo l'utente dal DB
        Utente utente = utenteRepository.findByEmail(req.getEmail())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato"));

        // 3. Prepariamo la risposta (Senza Token!)
        Map<String, Object> response = new HashMap<>();
        response.put("utente", toDTO(utente)); 

        return response;
    }
}