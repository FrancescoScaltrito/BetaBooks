package com.betacom.betabooks.security;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
public class JwtFilter extends OncePerRequestFilter {

    private final JwtUtil jwtUtil;
    private final CustomUserDetailsService userDetailsService;

    public JwtFilter(JwtUtil jwtUtil, CustomUserDetailsService userDetailsService) {
        this.jwtUtil = jwtUtil;
        this.userDetailsService = userDetailsService;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        
        // 1. Cerca l'header "Authorization" che Angular ci ha mandato
        final String authHeader = request.getHeader("Authorization");

        // Se non c'è, o non inizia con "Bearer ", passiamo oltre (magari è un login o roba pubblica)
        if (authHeader == null || !authHeader.startsWith("Bearer ")) {
            filterChain.doFilter(request, response);
            return;
        }

        // 2. Estraiamo il token vero e proprio (togliendo i primi 7 caratteri "Bearer ")
        final String jwt = authHeader.substring(7);

        // 3. Se il token è valido, diciamo a Spring Security chi è l'utente
        if (jwtUtil.isTokenValid(jwt)) {
            String email = jwtUtil.extractEmail(jwt);
            
            // Se l'email c'è e l'utente non è ancora stato autenticato in questa richiesta
            if (email != null && SecurityContextHolder.getContext().getAuthentication() == null) {
                UserDetails userDetails = userDetailsService.loadUserByUsername(email);
                
                UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                        userDetails, null, userDetails.getAuthorities());
                authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                
                // Mettiamo il "timbro" ufficiale di Spring Security!
                SecurityContextHolder.getContext().setAuthentication(authToken);
            }
        }
        
        // 4. Continua con la richiesta (ora che l'utente è autenticato)
        filterChain.doFilter(request, response);
    }
}