package com.betacom.betabooks.services.implementations;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.dto.inputs.ProfiloReq;
import com.betacom.betabooks.dto.outputs.ProfiloDTO;
import com.betacom.betabooks.models.ProfiloUtente;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IProfiloUtenteRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.services.interfaces.IProfiloUtenteServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class ProfiloUtenteImpl implements IProfiloUtenteServices {

    private final IProfiloUtenteRepository profiloRepo;
    private final IUtenteRepository utenteRepo;

    @Override
    @Transactional
    public Long create(ProfiloReq req) throws Exception {
        log.debug("ProfiloUtenteImpl - create: {}", req);

        if (req.getIdUtente() == null) throw new Exception("Id utente non può essere null");

        // controllo che l'utente non abbia già un profilo
        if (profiloRepo.findByUtenteId(req.getIdUtente()).isPresent()) {
            throw new Exception("L'utente ha già un profilo");
        }

        Utente utente = utenteRepo.findById(req.getIdUtente())
                .orElseThrow(() -> new Exception("Utente non trovato"));

        ProfiloUtente profilo = new ProfiloUtente();
        profilo.setUtente(utente);
        profilo.setNome(req.getNome());
        profilo.setCognome(req.getCognome());
        profilo.setTelefono(req.getTelefono());

        ProfiloUtente salvato = profiloRepo.save(profilo);
        return salvato.getId();
    }

    @Override
    @Transactional
    public void update(ProfiloReq req) throws Exception {
        log.debug("ProfiloUtenteImpl - update: {}", req);

        if (req.getId() == null) throw new Exception("Id profilo non può essere null");

        ProfiloUtente profilo = profiloRepo.findById(req.getId())
                .orElseThrow(() -> new Exception("Profilo non trovato"));

        profilo.setNome(req.getNome());
        profilo.setCognome(req.getCognome());
        profilo.setTelefono(req.getTelefono());

        profiloRepo.save(profilo);
    }

    @Override
    @Transactional
    public void delete(Long id) throws Exception {
        log.debug("ProfiloUtenteImpl - delete id: {}", id);

        if (!profiloRepo.existsById(id)) {
            throw new Exception("Profilo non trovato con id: " + id);
        }
        profiloRepo.deleteById(id);
    }

    @Override
    @Transactional(readOnly = true)
    public ProfiloDTO findById(Long id) throws Exception {
        log.debug("ProfiloUtenteImpl - findById: {}", id);

        ProfiloUtente profilo = profiloRepo.findById(id)
                .orElseThrow(() -> new Exception("Profilo non trovato con id: " + id));

        return toDTO(profilo);
    }

    @Override
    @Transactional(readOnly = true)
    public List<ProfiloDTO> findAll() throws Exception {
        log.debug("ProfiloUtenteImpl - findAll");

        return profiloRepo.findAll()
                .stream()
                .map(this::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    @Transactional(readOnly = true)
    public ProfiloDTO findByUtente(Long idUtente) throws Exception {
        log.debug("ProfiloUtenteImpl - findByUtente idUtente: {}", idUtente);

        ProfiloUtente profilo = profiloRepo.findByUtenteId(idUtente)
                .orElseThrow(() -> new Exception("Profilo non trovato per l'utente con id: " + idUtente));

        return toDTO(profilo);
    }

    // ── Metodo privato di mappatura ──────────────────────────────────────────────
    private ProfiloDTO toDTO(ProfiloUtente p) {
        return ProfiloDTO.builder()
                .id(p.getId())
                .idUtente(p.getUtente().getId())
                .nome(p.getNome())
                .cognome(p.getCognome())
                .telefono(p.getTelefono())
                .build();
    }
}