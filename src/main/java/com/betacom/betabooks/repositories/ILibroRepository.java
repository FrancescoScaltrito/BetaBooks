package com.betacom.betabooks.repositories;


import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.Libro;

public interface ILibroRepository extends JpaRepository<Libro, Long>{
	
	@Query(name="libro.search")
	List<Libro> search(
	    @Param("query") String query,
	    @Param("categorie") List<String> categorie,
	    @Param("prezzoMin") BigDecimal prezzoMin,
	    @Param("prezzoMax") BigDecimal prezzoMax,
	    @Param("tipoSupporto") TipoSupporto tipoSupporto,
	    @Param("tipoCopertina") TipoCopertina tipoCopertina
	);
	
}
