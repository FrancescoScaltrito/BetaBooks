package com.betacom.betabooks.controllers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.betacom.betabooks.services.interfaces.IWishlistServices;

@RestController
@RequestMapping("/api/wishlist")
public class WishlistController {

    private final IWishlistServices wishlistService;

    public WishlistController(IWishlistServices wishlistService) {
        this.wishlistService = wishlistService;
    }

    // Aggiungi un elemento alla wishlist
    @PostMapping("/add")
    public ResponseEntity<String> add(@RequestParam Long userId, @RequestParam Long formatId) {
        try {
            wishlistService.addToWishlist(userId, formatId);
            return ResponseEntity.status(HttpStatus.CREATED).body("Elemento aggiunto alla wishlist");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    // Rimuovi un elemento dalla wishlist
    @DeleteMapping("/remove")
    public ResponseEntity<String> remove(@RequestParam Long userId, @RequestParam Long formatId) {
        try {
            wishlistService.removeFromWishlist(userId, formatId);
            return ResponseEntity.ok("Elemento rimosso dalla wishlist");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }

    // Controlla se un elemento è presente nella wishlist
    @GetMapping("/check")
    public ResponseEntity<Boolean> isInWishlist(@RequestParam Long userId, @RequestParam Long formatId) {
        try {
            boolean exists = wishlistService.isInWishlist(userId, formatId);
            return ResponseEntity.ok(exists);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(false);
        }
    }

    // Recupera tutti gli ID dei formati nella wishlist di un utente
    @GetMapping("/user/{userId}")
    public ResponseEntity<List<Long>> getUserWishlist(@PathVariable Long userId) {
        try {
            List<Long> wishlist = wishlistService.getWishlistByUser(userId);
            return ResponseEntity.ok(wishlist);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    // Svuota tutta la wishlist di un utente
    @DeleteMapping("/user/{userId}/clear")
    public ResponseEntity<String> clearWishlist(@PathVariable Long userId) {
        try {
            wishlistService.clearWishlist(userId);
            return ResponseEntity.ok("Wishlist svuotata");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(e.getMessage());
        }
    }
}