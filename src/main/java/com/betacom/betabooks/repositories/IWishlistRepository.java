package com.betacom.betabooks.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.models.Wishlist;

public interface IWishlistRepository extends JpaRepository<Wishlist, Long>{

	Optional<Wishlist> findByUtenteAndFormatoLibro(Utente utente, FormatoLibro formato);

}
