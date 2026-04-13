package com.betacom.betabooks.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.betacom.betabooks.models.Wishlist;
import org.springframework.transaction.annotation.Transactional;

public interface IWishlistRepository extends JpaRepository<Wishlist, Long> {
    List<Wishlist> findByUtenteId(Long idUtente);
    Optional<Wishlist> findByUtenteIdAndFormatoLibroId(Long idUtente, Long idFormato);
    
    @Modifying
    @Transactional
    @Query("DELETE FROM Wishlist w WHERE w.utente.id = :userId AND w.formatoLibro.id = :formatId")
    void deleteByUtenteIdAndFormatoLibroId(@Param("userId") Long userId, @Param("formatId") Long formatId);
}