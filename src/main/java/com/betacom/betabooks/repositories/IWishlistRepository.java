package com.betacom.betabooks.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.Wishlist;

public interface IWishlistRepository extends JpaRepository<Wishlist, Long> {
    List<Wishlist> findByUtenteId(Long idUtente);
    Optional<Wishlist> findByUtenteIdAndFormatoLibro_Id(Long idUtente, Long idFormato);
}