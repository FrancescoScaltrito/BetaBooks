package com.betacom.betabooks.controllers;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.betacom.betabooks.dto.inputs.IndirizzoReq;
import com.betacom.betabooks.dto.outputs.IndirizzoDTO;
import com.betacom.betabooks.services.interfaces.IIndirizzoServices;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/indirizzi")
@RequiredArgsConstructor
public class IndirizzoController {

    private final IIndirizzoServices indirizzoService;

    @PostMapping
    public ResponseEntity<Long> create(@RequestBody IndirizzoReq req) throws Exception {
        return ResponseEntity.ok(indirizzoService.create(req));
    }

    @GetMapping
    public ResponseEntity<List<IndirizzoDTO>> findAll() throws Exception {
        return ResponseEntity.ok(indirizzoService.findAll());
    }

    @GetMapping("/{id}")
    public ResponseEntity<IndirizzoDTO> findById(@PathVariable Long id) throws Exception {
        return ResponseEntity.ok(indirizzoService.findById(id));
    }

    @GetMapping("/user/{userId}")
    public ResponseEntity<List<IndirizzoDTO>> findByUser(@PathVariable Long userId) throws Exception {
        return ResponseEntity.ok(indirizzoService.findByUtente(userId));
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Void> update(@PathVariable Long id, @RequestBody IndirizzoReq req) throws Exception {
        req.setId(id);
        indirizzoService.update(req);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) throws Exception {
        indirizzoService.delete(id);
        return ResponseEntity.noContent().build();
    }
}