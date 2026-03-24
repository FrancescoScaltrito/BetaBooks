package com.betacom.betabooks.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.ProfiloUtente;

public interface IProfiloUtenteRepository extends JpaRepository<ProfiloUtente, Long> {
    Optional<ProfiloUtente> findByUtenteId(Long idUtente);
}
