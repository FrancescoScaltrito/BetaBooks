package com.betacom.betabooks.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfiguration implements WebMvcConfigurer {
/*
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("http://localhost:4200")
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS", "PATCH")
                .allowedHeaders("Authorization", "Content-Type", "Accept") 
                .allowCredentials(true); 
    }*/
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Permette di accedere alle immagini via URL senza filtri di sicurezza
        registry.addResourceHandler("/uploads/**")
                .addResourceLocations("file:uploads/");
                //.setCachePeriod(0); // Forza il browser a non usare la cache
    }
}