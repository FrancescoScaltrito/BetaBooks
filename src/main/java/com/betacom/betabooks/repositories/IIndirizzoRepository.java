package com.betacom.betabooks.repositories;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> b6958696fca92aae3663669efbc0fbe4ce9d6687
import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.Indirizzo;

<<<<<<< HEAD
public interface IIndirizzoRepository extends JpaRepository<Indirizzo, Long> {
    List<Indirizzo> findByUtenteId(Long idUtente);
}
=======

public interface IIndirizzoRepository extends JpaRepository<Indirizzo, Long>{
	
	

}
>>>>>>> b6958696fca92aae3663669efbc0fbe4ce9d6687
