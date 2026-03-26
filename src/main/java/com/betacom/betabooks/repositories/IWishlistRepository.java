package com.betacom.betabooks.repositories;

<<<<<<< HEAD
import java.util.List;
=======
>>>>>>> b6958696fca92aae3663669efbc0fbe4ce9d6687
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

<<<<<<< HEAD
import com.betacom.betabooks.models.Wishlist;

public interface IWishlistRepository extends JpaRepository<Wishlist, Long> {
    List<Wishlist> findByUtenteId(Long idUtente);
    Optional<Wishlist> findByUtenteIdAndFormatoLibro_Id(Long idUtente, Long idFormato);
}
=======
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.models.Wishlist;

public interface IWishlistRepository extends JpaRepository<Wishlist, Long>{

	Optional<Wishlist> findByUtenteAndFormatoLibro(Utente utente, FormatoLibro formato);

}
>>>>>>> b6958696fca92aae3663669efbc0fbe4ce9d6687
