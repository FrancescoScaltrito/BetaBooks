package com.betacom.betabooks.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.Libro;

public interface ILibroRepository extends JpaRepository<Libro, Long>{
	boolean existsByIsbn(String isbn);
}
