package com.betacom.betabooks.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.Utente;

public interface IUtenteRepository extends JpaRepository<Utente, Long> {
    
	Optional<Utente> findByEmail(String email);
	boolean existsByEmail(String email);
}
