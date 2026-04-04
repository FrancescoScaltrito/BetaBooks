package com.betacom.betabooks.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.models.OrdineItem;

@Repository
public interface IOrdineItemRepository extends JpaRepository<OrdineItem, Long>{
	
	boolean existsByOrdine_Utente_IdAndFormatoLibro_Libro_IdAndOrdine_Stato(Long idUtente, Long idLibro, StatoOrdine stato);
}