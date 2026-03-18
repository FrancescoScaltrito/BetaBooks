package com.betacom.betabooks.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.Categoria;

public interface ICategoriaRepository extends JpaRepository<Categoria, Long>{

}
