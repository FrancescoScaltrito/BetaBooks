package com.betacom.betabooks.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.betacom.betabooks.models.Ordine;

@Repository
public interface IOrdineRepository extends JpaRepository<Ordine, Long>{
	
	// Recupera la lista di ordini di un utente, ordinati dal più recente al più vecchio
    List<Ordine> findByUtenteIdOrderByDataOrdineDesc(Long idUtente);

}
