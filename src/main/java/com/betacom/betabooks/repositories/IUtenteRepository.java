package com.betacom.betabooks.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.betacom.betabooks.models.Utente;

@Repository
public interface IUtenteRepository extends JpaRepository<Utente, Long>{

}