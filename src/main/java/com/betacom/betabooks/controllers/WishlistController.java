package com.betacom.betabooks.controllers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.outputs.WishlistDTO;
import com.betacom.betabooks.services.interfaces.IWishlistServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/wishlist")
@CrossOrigin(origins = "http://localhost:4200")
public class WishlistController {

    private final IWishlistServices wishlistService;

    // Aggiungi libro alla wishlist
    @PostMapping("/aggiungi")
    public ResponseEntity<Void> addToWishlist(
            @RequestParam Long userId,
            @RequestParam Long formatId) {
        try {
            wishlistService.addToWishlist(userId, formatId);
            return ResponseEntity.status(HttpStatus.CREATED).build();
        } catch (Exception e) {
            log.error("Errore addToWishlist: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }

    // Rimuovi libro dalla wishlist
    @DeleteMapping("/rimuovi")
    public ResponseEntity<Void> removeFromWishlist(
            @RequestParam Long userId,
            @RequestParam Long formatId) {
        try {
            wishlistService.removeFromWishlist(userId, formatId);
            return ResponseEntity.noContent().build();
        } catch (Exception e) {
            log.error("Errore removeFromWishlist: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }

    // Controlla se un libro è in wishlist
    @GetMapping("/controlla")
    public ResponseEntity<Boolean> isInWishlist(
            @RequestParam Long userId,
            @RequestParam Long formatId) {
        try {
            boolean result = wishlistService.isInWishlist(userId, formatId);
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            log.error("Errore isInWishlist: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }

    // Recupera tutti i libri in wishlist di un utente
    @GetMapping("/utente/{userId}")
    public ResponseEntity<List<WishlistDTO>> getWishlistByUser(@PathVariable Long userId) {
        try {
            return ResponseEntity.ok(wishlistService.getWishlistByUser(userId));
        } catch (Exception e) {
            log.error("Errore getWishlistByUser: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    // Svuota tutta la wishlist di un utente
    @DeleteMapping("/pulisci/{userId}")
    public ResponseEntity<Void> clearWishlist(@PathVariable Long userId) {
        try {
            wishlistService.clearWishlist(userId);
            return ResponseEntity.noContent().build();
        } catch (Exception e) {
            log.error("Errore clearWishlist: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }

    // Sposta un elemento dalla wishlist al carrello
    @PostMapping("/{idWishlist}/sposta-carrello")
    public ResponseEntity<Void> spostaNelCarrello(@PathVariable Long idWishlist) {
        try {
            wishlistService.spostaNelCarrello(idWishlist);
            return ResponseEntity.ok().build();
        } catch (Exception e) {
            log.error("Errore spostaNelCarrello: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }
}