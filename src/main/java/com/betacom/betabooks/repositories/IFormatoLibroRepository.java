package com.betacom.betabooks.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.betacom.betabooks.enums.TipoCopertina;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.FormatoLibro;
import org.springframework.transaction.annotation.Transactional;

public interface IFormatoLibroRepository extends JpaRepository<FormatoLibro, Long> {

    List<FormatoLibro> findByLibroId(Long idLibro);

    List<FormatoLibro> findByLibroIdAndAttivoTrue(Long idLibro);

    Optional<FormatoLibro> findByIsbn(String isbn);

    boolean existsByIsbn(String isbn);

    boolean existsByLibroIdAndTipoSupportoAndTipoCopertina(
        Long idLibro, TipoSupporto tipoSupporto, TipoCopertina tipoCopertina
    );
    
    @Modifying
    @Transactional
    @Query("UPDATE FormatoLibro f SET f.quantita = f.quantita - :q " +
           "WHERE f.id = :id AND f.quantita >= :q")
    int decrementaSeDisponibile(@Param("id") Long id, @Param("q") int q);
    //se restituisce 1, lo scalo è avvenuto. Se restituisce 0, significa che nel frattempo qualcuno ha comprato i libri e non ce n'erano a sufficienza (Hard Check fallito).

    @Modifying
    @Transactional
    @Query("UPDATE FormatoLibro f SET f.quantita = f.quantita + :quantita WHERE f.id = :id")
    void incrementaDisponibilita(@Param("id") Long id, @Param("quantita") Integer quantita);
    

}
