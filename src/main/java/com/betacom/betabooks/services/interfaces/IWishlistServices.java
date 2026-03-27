package com.betacom.betabooks.services.interfaces;


import java.util.List;

import com.betacom.betabooks.dto.outputs.WishlistDTO;
import com.betacom.betabooks.models.Wishlist;

public interface IWishlistServices {

    void addToWishlist(Long userId, Long formatId) throws Exception;

    void removeFromWishlist(Long userId, Long formatId) throws Exception;

    boolean isInWishlist(Long userId, Long formatId) throws Exception;

    List<WishlistDTO> getWishlistByUser(Long userId) throws Exception;

    void clearWishlist(Long userId) throws Exception;
    
    void spostaNelCarrello(Long idWishlist) throws Exception;
}