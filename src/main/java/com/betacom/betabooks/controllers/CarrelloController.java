package com.betacom.betabooks.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.dto.outputs.CarrelloDTO;
import com.betacom.betabooks.services.interfaces.IAutoreServices;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;

import io.swagger.v3.oas.annotations.parameters.RequestBody;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/carrello")
public class CarrelloController {
	
	private final ICarrelloServices carrelloService;

    @PostMapping("/aggiungi")
    public ResponseEntity<Void> aggiungiProdotto(@RequestBody CarrelloReq req) throws Exception {
        carrelloService.aggiungiOAggiornaProdotto(req);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/utente/{idUtente}")
    public ResponseEntity<CarrelloDTO> getCarrello(@PathVariable Long idUtente) throws Exception {
        return ResponseEntity.ok(carrelloService.findByUtente(idUtente));
    }

    @DeleteMapping("/item/{idItem}")
    public ResponseEntity<Void> rimuoviItem(@PathVariable Long idItem) throws Exception {
        carrelloService.rimuoviProdotto(idItem);
        return ResponseEntity.noContent().build();
    }

    @DeleteMapping("/svuota/{idUtente}")
    public ResponseEntity<Void> svuota(@PathVariable Long idUtente) throws Exception {
        carrelloService.svuotaCarrello(idUtente);
        return ResponseEntity.noContent().build();
    }

}
