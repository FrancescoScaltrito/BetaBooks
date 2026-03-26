package com.betacom.betabooks.security;

import java.util.List;


import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final IUtenteRepository utenteRepository;

    public CustomUserDetailsService(IUtenteRepository utenteRepository) {
        this.utenteRepository = utenteRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
    	Utente utente = utenteRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Utente non trovato: " + email));

        return new User(
                utente.getEmail(),
                utente.getPassword(),
                List.of(new SimpleGrantedAuthority("ROLE_" + utente.getRuolo().name()))
        );
    }
}