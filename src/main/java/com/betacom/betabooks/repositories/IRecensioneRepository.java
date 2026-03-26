package com.betacom.betabooks.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.Recensione;

public interface IRecensioneRepository extends JpaRepository<Recensione, Long> {
    List<Recensione> findByProfiloUtenteId(Long idUtente);
    List<Recensione> findByLibroId(Long idLibro);
    Optional<Recensione> findByProfiloUtenteIdAndLibro_Id(Long idUtente, Long idLibro);
}
