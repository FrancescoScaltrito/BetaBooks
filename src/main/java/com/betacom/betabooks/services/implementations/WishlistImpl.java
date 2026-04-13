package com.betacom.betabooks.services.implementations;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.betacom.betabooks.dto.inputs.CarrelloReq;
import com.betacom.betabooks.dto.outputs.WishlistDTO;
import com.betacom.betabooks.dto.outputs.LibroDTO;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.models.Wishlist;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.repositories.IWishlistRepository;
import com.betacom.betabooks.services.interfaces.ICarrelloServices;
import com.betacom.betabooks.services.interfaces.IWishlistServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class WishlistImpl implements IWishlistServices {

    private final IWishlistRepository wishlistR;
    private final IUtenteRepository utenteRepository;
    private final IFormatoLibroRepository formatoLibroRepository;
    private final ICarrelloServices carrelloService;

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void addToWishlist(Long userId, Long formatId) throws Exception {
        log.debug("WishlistImpl - addToWishlist userId: {}, formatId: {}", userId, formatId);

        if (userId == null) throw new Exception("Id utente non può essere null");
        if (formatId == null) throw new Exception("Id formato non può essere null");

        if (wishlistR.findByUtenteIdAndFormatoLibroId(userId, formatId).isPresent()) {
            throw new Exception("Elemento già presente nella wishlist");
        }

        Utente utente = utenteRepository.findById(userId)
                .orElseThrow(() -> new Exception("Utente non trovato"));
        FormatoLibro formato = formatoLibroRepository.findById(formatId)
                .orElseThrow(() -> new Exception("Formato libro non trovato"));

        Wishlist w = new Wishlist();
        w.setUtente(utente);
        w.setFormatoLibro(formato);
        wishlistR.save(w);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void removeFromWishlist(Long userId, Long formatId) throws Exception {
        log.debug("WishlistImpl - removeFromWishlist userId: {}, formatId: {}", userId, formatId);

        if (userId == null || formatId == null) return;
/*
        wishlistR.findByUtenteIdAndFormatoLibroId(userId, formatId)
            .ifPresent(wishlistR::delete);*/
        wishlistR.deleteByUtenteIdAndFormatoLibroId(userId, formatId);
    }

    @Transactional(readOnly = true)
    @Override
    public boolean isInWishlist(Long userId, Long formatId) throws Exception {
        if (userId == null || formatId == null) return false;
        return wishlistR.findByUtenteIdAndFormatoLibroId(userId, formatId).isPresent();
    }

    @Override
    @Transactional(readOnly = true)
    public List<WishlistDTO> getWishlistByUser(Long userId) throws Exception {
        if (userId == null) throw new Exception("Id utente non può essere null");

        List<Wishlist> wishlist = wishlistR.findByUtenteId(userId);
        return wishlist.stream()
                       .map(this::toDTO)
                       .collect(Collectors.toList());
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void clearWishlist(Long userId) throws Exception {
        if (userId == null) throw new Exception("Id utente non può essere null");

        List<Wishlist> wishlist = wishlistR.findByUtenteId(userId);
        wishlistR.deleteAll(wishlist);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void spostaNelCarrello(Long idWishlist) throws Exception {
        log.debug("WishlistImpl - spostaNelCarrello idWishlist: {}", idWishlist);

        Wishlist wish = wishlistR.findById(idWishlist)
                .orElseThrow(() -> new Exception("Elemento wishlist non trovato"));

        CarrelloReq req = new CarrelloReq();
        req.setIdUtente(wish.getUtente().getId());
        req.setIdFormatoLibro(wish.getFormatoLibro().getId());
        req.setQuantita(1);

        carrelloService.aggiungiOAggiornaProdotto(req);
        wishlistR.delete(wish);
    }

    
    private WishlistDTO toDTO(Wishlist w) {
        FormatoLibro formato = w.getFormatoLibro();

        LibroDTO libroDTO = LibroDTO.builder()
                .id(formato.getLibro().getId())
                .titolo(formato.getLibro().getTitolo())
                .descrizione(formato.getLibro().getDescrizione())
                .build();

        return WishlistDTO.builder()
                .id(w.getId())
                .libro(libroDTO)
                .build();
    }
}