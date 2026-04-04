package com.betacom.betabooks.services.implementations;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.IndirizzoReq;
import com.betacom.betabooks.dto.outputs.IndirizzoDTO;
import com.betacom.betabooks.models.Indirizzo;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IIndirizzoRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.services.interfaces.IIndirizzoServices;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class IndirizzoImpl implements IIndirizzoServices {

    private final IIndirizzoRepository indirizzoR;
    private final IUtenteRepository utenteR;

    
    @Transactional(rollbackOn = Exception.class)
    @Override
    public Long create(IndirizzoReq req) throws Exception {

        log.debug("IndirizzoImpl - create {}", req);

        if (req.getIdUtente() == null)
            throw new Exception("Id utente non può essere null");

       
        Utente utente = utenteR.findById(req.getIdUtente())
                .orElseThrow(() -> new Exception("Utente non trovato"));

        Indirizzo i = new Indirizzo();
        i.setUtente(utente);
        i.setVia(req.getVia());
        i.setCivico(req.getCivico());
        i.setComune(req.getComune());
        i.setCap(req.getCap());
        i.setProvincia(req.getProvincia());
        i.setPaese(req.getPaese());
        i.setIsDefault(req.getIsDefault());
        i.setNoteConsegna(req.getNoteConsegna());

        return indirizzoR.save(i).getId();
    }

        @Transactional(rollbackOn = Exception.class)
    @Override
    public void update(IndirizzoReq req) throws Exception {

        if (req.getId() == null)
            throw new Exception("Id indirizzo obbligatorio");

        Indirizzo i = indirizzoR.findById(req.getId())
                .orElseThrow(() -> new Exception("Indirizzo non trovato"));

        i.setVia(req.getVia());
        i.setCivico(req.getCivico());
        i.setComune(req.getComune());
        i.setCap(req.getCap());
        i.setProvincia(req.getProvincia());
        i.setPaese(req.getPaese());
        i.setIsDefault(req.getIsDefault());
        i.setNoteConsegna(req.getNoteConsegna());

        indirizzoR.save(i);
    }

    
    @Override
    public void delete(Long id) throws Exception {
        if (!indirizzoR.existsById(id))
            throw new Exception("Indirizzo non trovato");

        indirizzoR.deleteById(id);
    }

    
    @Override
    public IndirizzoDTO findById(Long id) throws Exception {

        Indirizzo i = indirizzoR.findById(id)
                .orElseThrow(() -> new Exception("Indirizzo non trovato"));

        return toDTO(i);
    }

    
    @Override
    public List<IndirizzoDTO> findAll() throws Exception {
        return indirizzoR.findAll()
                .stream()
                .map(this::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<IndirizzoDTO> findByUtente(Long idUtente) throws Exception {

        if (idUtente == null)
            throw new Exception("Id utente non può essere null");

        List<Indirizzo> list = indirizzoR.findByUtenteId(idUtente);
        
        log.debug("Indirizzi trovati per utente {}: {}", idUtente, list.size());

        return list.stream()
                .map(this::toDTO)
                .collect(Collectors.toList());
    }

    
    @Override
    public IndirizzoDTO findPredefinitoByUtente(Long idUtente) throws Exception {
        Indirizzo i = indirizzoR.findByUtenteIdAndIsDefaultTrue(idUtente)
                .orElseThrow(() -> new Exception("Nessun indirizzo predefinito trovato"));

        return toDTO(i);
    }

    
    private IndirizzoDTO toDTO(Indirizzo i) {
        return IndirizzoDTO.builder()
                .id(i.getId())
                .via(i.getVia())
                .civico(i.getCivico())
                .comune(i.getComune())
                .cap(i.getCap())
                .provincia(i.getProvincia())
                .paese(i.getPaese())
                .isDefault(i.getIsDefault())
                .noteConsegna(i.getNoteConsegna())
                .build();
    }
}