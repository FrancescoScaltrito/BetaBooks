package com.betacom.betabooks.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfiguration implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Permette di accedere alle immagini via URL senza filtri di sicurezza
        registry.addResourceHandler("/uploads/**")
                .addResourceLocations("file:uploads/");
    }
}