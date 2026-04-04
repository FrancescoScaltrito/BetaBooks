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
    private final JwtUtil jwtUtil;

    public UtenteImpl(IUtenteRepository utenteRepository, 
                      PasswordEncoder passwordEncoder,
                      AuthenticationManager authenticationManager,
                      JwtUtil jwtUtil) {
        this.utenteRepository = utenteRepository;
        this.passwordEncoder = passwordEncoder;
        this.authenticationManager = authenticationManager;
        this.jwtUtil = jwtUtil;
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
        Authentication auth = authenticationManager.authenticate(
            new UsernamePasswordAuthenticationToken(req.getEmail(), req.getPassword())
        );

        // 2. Se l'autenticazione fallisce, Spring lancia un'eccezione qui sopra.
        // Se continua, recuperiamo l'utente dal DB
        Utente utente = utenteRepository.findByEmail(req.getEmail())
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato"));

        // 3. Generiamo il Token
        String token = jwtUtil.generateToken(utente.getEmail(), utente.getRuolo().name());

        // 4. Prepariamo la risposta per il Controller (e per Angular)
        Map<String, Object> response = new HashMap<>();
        response.put("token", token);
        response.put("utente", toDTO(utente)); // Usiamo il DTO per non mandare la password al front-end!

        return response;
    }
}