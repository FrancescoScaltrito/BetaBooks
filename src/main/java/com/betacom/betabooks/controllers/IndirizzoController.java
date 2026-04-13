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
@CrossOrigin(origins = "http://localhost:4200")
public class IndirizzoController {

    private final IIndirizzoServices indirizzoService;

    @PostMapping
    public ResponseEntity<?> create(@RequestBody IndirizzoReq req) {
        try {
            return ResponseEntity.ok(indirizzoService.create(req));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @GetMapping
    public ResponseEntity<List<IndirizzoDTO>> findAll() {
        try {
            return ResponseEntity.ok(indirizzoService.findAll());
        } catch (Exception e) {
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id) {
        try {
            return ResponseEntity.ok(indirizzoService.findById(id));
        } catch (Exception e) {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/user/{userId}")
    public ResponseEntity<List<IndirizzoDTO>> findByUser(@PathVariable Long userId) {
        try {
            return ResponseEntity.ok(indirizzoService.findByUtente(userId));
        } catch (Exception e) {
            return ResponseEntity.notFound().build();
        }
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<?> update(@PathVariable Long id, @RequestBody IndirizzoReq req) {
        try {
            req.setId(id);
            indirizzoService.update(req);
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> delete(@PathVariable Long id) {
        try {
            indirizzoService.delete(id);
            return ResponseEntity.noContent().build();
        } catch (Exception e) {
            return ResponseEntity.notFound().build();
        }
    }
}