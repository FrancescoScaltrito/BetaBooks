package com.betacom.betabooks.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.betacom.betabooks.models.Ordine;

@Repository
public interface IOrdineRepository extends JpaRepository<Ordine, Long>{

}
