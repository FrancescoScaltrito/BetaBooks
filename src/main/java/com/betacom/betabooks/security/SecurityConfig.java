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
            //specifica Authorization tra gli header permessi
            config.setAllowedHeaders(java.util.List.of("Authorization", "Content-Type", "Accept")); 
            config.setAllowCredentials(true);
            return config;
        }))
            .csrf(csrf -> csrf.disable())
            .sessionManagement(sm -> sm.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
            .authorizeHttpRequests(auth -> auth
            	    // PUBBLICO
            	    .requestMatchers(HttpMethod.GET, "/uploads/**").permitAll()
            	    .requestMatchers(HttpMethod.GET, "/api/libro/**").permitAll()
            	    .requestMatchers("/api/utenti/register").permitAll()
            	    .requestMatchers("/api/auth/login").permitAll()
            	    .requestMatchers("/api/auth/**").permitAll()
            	    .requestMatchers("/swagger-ui/**", "/swagger-ui.html", "/v3/api-docs/**").permitAll()

            	    .requestMatchers("/api/utenti/sendValidation","/api/utenti/emailValidate").permitAll()
            	    .requestMatchers("/api/utenti/request-password-recovery","/api/utenti/confirm-password-recovery").permitAll()

            	    // AUTH (serve login)
            	    .requestMatchers("/api/auth/me").authenticated()
            	    .requestMatchers("/api/carrello/**").authenticated()
            	    .requestMatchers("/api/ordine/**").authenticated()
            	    .requestMatchers("/api/profili/**").authenticated()
            	    .requestMatchers("/api/indirizzi/**").authenticated()
            	    .requestMatchers("/api/wishlist/**").authenticated()

            	    // ADMIN
            	    .requestMatchers(HttpMethod.POST, "/api/libro/**").hasRole("ADMIN")
            	    .requestMatchers(HttpMethod.PUT, "/api/libro/**").hasRole("ADMIN")
            	    .requestMatchers(HttpMethod.DELETE, "/api/libro/**").hasRole("ADMIN")

            	    // resto
            	    .anyRequest().authenticated()
            	).httpBasic(basic -> basic.authenticationEntryPoint((request, response, authException) -> {
            	    // invia 401 ma senza l'header che scatena il pop-up nel browser
            	    response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            	    response.getWriter().write("Unauthorized: " + authException.getMessage());
            	}));
 

        return http.build();
    }
    
}