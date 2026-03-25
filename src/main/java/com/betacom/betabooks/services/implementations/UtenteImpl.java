package com.betacom.betabooks.services.implementations;

import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.services.interfaces.IUtenteServices;

import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UtenteImpl implements IUtenteServices {

    private final IUtenteRepository utenteRepository;
    private final PasswordEncoder passwordEncoder;

    public UtenteImpl(IUtenteRepository utenteRepository, PasswordEncoder passwordEncoder) {
        this.utenteRepository = utenteRepository;
        this.passwordEncoder = passwordEncoder;
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
}