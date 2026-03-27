package com.betacom.betabooks.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.Indirizzo;

public interface IIndirizzoRepository extends JpaRepository<Indirizzo, Long> {
    List<Indirizzo> findByUtenteId(Long idUtente);
    Optional<Indirizzo> findByUtenteIdAndIsDefaultTrue(Long idUtente);
}