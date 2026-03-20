package com.betacom.betabooks.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.betacom.betabooks.models.CarrelloItem;

@Repository
public interface ICarrelloItemRepository extends JpaRepository<CarrelloItem, Long>{
	
     //elimina tutti gli item associati a un carrello specifico. Utile per l'operazione di "Svuota Carrello".
    void deleteByCarrelloId(Long idCarrello);

    //elimina un item specifico dal carrello
    void deleteById(Long id);
}
