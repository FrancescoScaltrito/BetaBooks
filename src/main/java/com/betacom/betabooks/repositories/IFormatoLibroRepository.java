package com.betacom.betabooks.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.FormatoLibro;

public interface IFormatoLibroRepository extends JpaRepository<FormatoLibro, Long> {

    List<FormatoLibro> findByLibroId(Long idLibro);

    List<FormatoLibro> findByLibroIdAndAttivoTrue(Long idLibro);

    Optional<FormatoLibro> findByIsbn(String isbn);

    boolean existsByIsbn(String isbn);

    boolean existsByLibroIdAndTipoSupportoAndTipoCopertina(
        Long idLibro, TipoSupporto tipoSupporto, TipoCopertina tipoCopertina
    );
    

}
