package com.betacom.betabooks.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.betacom.betabooks.models.Carrello;

@Repository
public interface ICarrelloRepository extends JpaRepository<Carrello, Long> {
    
    // trova il carrello di un utente specifico
    Optional<Carrello> findByUtenteId(Long idUtente);


}