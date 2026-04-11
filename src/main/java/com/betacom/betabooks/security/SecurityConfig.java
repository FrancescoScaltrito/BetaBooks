package com.betacom.betabooks.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;

import jakarta.servlet.http.HttpServletResponse;

import java.util.List;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    private final CustomUserDetailsService userDetailsService;

    public SecurityConfig(CustomUserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(HttpSecurity http) throws Exception {
        AuthenticationManagerBuilder authenticationManagerBuilder = 
            http.getSharedObject(AuthenticationManagerBuilder.class);
        
        authenticationManagerBuilder
            .userDetailsService(userDetailsService)
            .passwordEncoder(passwordEncoder());
            
        return authenticationManagerBuilder.build();
    }
    
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
        .cors(cors -> cors.configurationSource(request -> {
            var config = new org.springframework.web.cors.CorsConfiguration();
            config.setAllowedOrigins(java.util.List.of("http://localhost:4200"));
            config.setAllowedMethods(java.util.List.of("GET", "POST", "PUT", "DELETE", "OPTIONS", "PATCH"));
            // IMPORTANTE: specifica Authorization tra gli header permessi
            config.setAllowedHeaders(java.util.List.of("Authorization", "Content-Type", "Accept")); 
            config.setAllowCredentials(true);
            return config;
        }))
            .csrf(csrf -> csrf.disable())
            // Non usiamo il Bean esterno, lasciamo che il manager faccia il suo lavoro
            .sessionManagement(sm -> sm.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
            .authorizeHttpRequests(auth -> auth
            	    // PUBBLICO
            	    .requestMatchers(HttpMethod.GET, "/uploads/**").permitAll()
            	    .requestMatchers(HttpMethod.GET, "/api/libro/**").permitAll()
            	    .requestMatchers("/api/utenti/register").permitAll()
            	    .requestMatchers("/api/auth/login").permitAll()
            	    .requestMatchers("/swagger-ui/**", "/swagger-ui.html", "/v3/api-docs/**").permitAll()

            	    .requestMatchers("/api/utenti/sendValidation","/api/utenti/emailValidate").permitAll()
            	    .requestMatchers("/api/utenti/request-password-recovery","/api/utenti/confirm-password-recovery").permitAll()

            	    // AUTH (serve login)
            	    .requestMatchers("/api/auth/me").authenticated()
            	    .requestMatchers("/api/carrello/**").authenticated()
            	    .requestMatchers("/api/ordine/**").authenticated()
            	    .requestMatchers("/api/profili/**").authenticated()
            	    .requestMatchers("/api/indirizzi/**").authenticated()

            	    // ADMIN
            	    .requestMatchers(HttpMethod.POST, "/api/libro/**").hasRole("ADMIN")
            	    .requestMatchers(HttpMethod.PUT, "/api/libro/**").hasRole("ADMIN")
            	    .requestMatchers(HttpMethod.DELETE, "/api/libro/**").hasRole("ADMIN")

            	    // resto
            	    .anyRequest().authenticated()
            	).httpBasic(basic -> basic.authenticationEntryPoint((request, response, authException) -> {
            	    // Invia 401 ma SENZA l'header che scatena il pop-up nel browser
            	    response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            	    response.getWriter().write("Unauthorized: " + authException.getMessage());
            	}));
        /* Dato che non usiamo JWT usiamo l'ultima istruzione per implementare la sicurezza basata sui ruoli (RBAC) lato server.
         * Il Pop-up: Il browser riceve una sfida dal server ("Chi sei?") e, prima di darti l'errore 403, farà apparire una finestrella di sistema (quella grigia standard di Chrome/Edge).
		Sblocco: Inserisci l'email e la password dell'Admin in quella finestrella.
		Memoria: Da quel momento in poi, finché non chiudi il browser, non avrai più errori 403. Il browser invierà silenziosamente le credenziali in ogni chiamata successiva.
         */
        /*
         * Poiché non utilizziamo JWT per mantenere lo stato stateless, abbiamo attivato l'HTTP Basic Authentication come meccanismo di fallback. Questo permette al browser di gestire in modo sicuro le credenziali dell'amministratore per le operazioni sensibili, garantendo che le API di modifica siano protette da accessi non autorizzati."
         */
        /*
         * Per far sì che Angular "collabori" con questa finestra del browser, quando fai le chiamate HttpClient per le operazioni Admin (POST/DELETE), dovresti aggiungere l'opzione withCredentials: true.
         */

        return http.build();
    }
    
}