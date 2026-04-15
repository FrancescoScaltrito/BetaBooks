package com.betacom.betabooks.repositories;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.models.Ordine;

@Repository
public interface IOrdineRepository extends JpaRepository<Ordine, Long>{
	

    List<Ordine> findByUtenteIdOrderByDataOrdineDesc(Long idUtente);
        
    // Per gli ordini COMPLETATI (Stato = CONSEGNATO) dopo una certa data
    List<Ordine> findByUtenteIdAndStatoAndDataOrdineAfterOrderByDataOrdineDesc(
            Long idUtente, StatoOrdine stato, LocalDateTime data);

    // Per gli ordini non completati (Stato != CONSEGNATO) dopo una certa data
    List<Ordine> findByUtenteIdAndStatoNotAndDataOrdineAfterOrderByDataOrdineDesc(
            Long idUtente, StatoOrdine stato, LocalDateTime data);

}
