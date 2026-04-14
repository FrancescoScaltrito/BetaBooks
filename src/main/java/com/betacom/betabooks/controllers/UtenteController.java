package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.PasswordRecoveryReq;
import com.betacom.betabooks.dto.inputs.PasswordReq;
import com.betacom.betabooks.dto.inputs.Registrazione;
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.enums.RuoloUtente;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.IUtenteServices;

import io.swagger.v3.oas.annotations.security.SecurityRequirement;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/utenti")
@CrossOrigin(origins = "http://localhost:4200")
public class UtenteController {

    private final IUtenteRepository utenteRepository;
    private final IUtenteServices utS;
    private final PasswordEncoder passwordEncoder;

    public UtenteController(IUtenteRepository utenteRepository, PasswordEncoder passwordEncoder, IUtenteServices utS) {
        this.utenteRepository = utenteRepository;
        this.passwordEncoder = passwordEncoder;
        this.utS=utS;
    }


    @PostMapping("/register")
    @SecurityRequirement(name = "") 
    public ResponseEntity<UtenteDTO> register(@RequestBody Registrazione req) {
        UtenteDTO utenteCreato = utS.register(req);
       
        return ResponseEntity.status(HttpStatus.CREATED).body(utenteCreato);
    }
   
    @GetMapping
    public List<UtenteDTO> getAll() {
        return utenteRepository.findAll().stream()
                .map(u -> UtenteDTO.builder()
                        .id(u.getId())
                        .email(u.getEmail())
                        .ruolo(u.getRuolo().name())
                        .validato(u.getValidato())
                        .build())
                .collect(Collectors.toList());
    }

   
    @GetMapping("/{id}")
    public ResponseEntity<UtenteDTO> getById(@PathVariable Long id) {
        return utenteRepository.findById(id)
                .map(u -> ResponseEntity.ok(UtenteDTO.builder()
                        .id(u.getId())
                        .email(u.getEmail())
                        .ruolo(u.getRuolo().name())
                        .validato(u.getValidato())
                        .build()))
                .orElse(ResponseEntity.notFound().build());
    }

   
    @PutMapping("/{id}")
    public ResponseEntity<UtenteDTO> update(@PathVariable Long id, @RequestBody UtenteReq req) {
        return utenteRepository.findById(id).map(u -> {
            u.setEmail(req.getEmail());
            if (req.getPassword() != null && !req.getPassword().isBlank()) {
                u.setPassword(passwordEncoder.encode(req.getPassword()));
            }
            Utente salvato = utenteRepository.save(u);
            return ResponseEntity.ok(UtenteDTO.builder()
                    .id(salvato.getId())
                    .email(salvato.getEmail())
                    .ruolo(salvato.getRuolo().name())
                    
                    .build());
        }).orElse(ResponseEntity.notFound().build());
    }

   
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        if (!utenteRepository.existsById(id)) return ResponseEntity.notFound().build();
        utenteRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
    
    @GetMapping("/sendValidation")
	public ResponseEntity<Resp> sendValidation (@RequestParam (required = true)  String email){
		Resp r = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			utS.sendValidation(email);
			r.setMessage("");
		} catch (Exception e) {
			r.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST; 
		}
		return ResponseEntity.status(status).body(r);
		
	}


	@GetMapping("/emailValidate")
	public ResponseEntity<Resp> emailValidate (@RequestParam (required = true)  String email){
		Resp r = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			utS.emailValidate(email);
			r.setMessage("EMAIL CONVALIDATA  "+email);
		} catch (Exception e) {
			r.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST; 
		}
		return ResponseEntity.status(status).body(r);
		
	}
	
	@PostMapping("/cambiaPassword")		//per il cambio dal pannello profilo
	public ResponseEntity<Resp> cambiaPassword(@RequestBody PasswordReq req) {
	    Resp r = new Resp();
	    HttpStatus status = HttpStatus.OK;
	    try {
	        utS.cambiaPassword(req);
	        r.setMessage("Password aggiornata con successo");
	    } catch (Exception e) {
	        r.setMessage(e.getMessage());
	        status = HttpStatus.BAD_REQUEST;
	    }
	    return ResponseEntity.status(status).body(r);
	}
	
	@GetMapping("/request-password-recovery")		//per il recupero tramite mail, invia la mail
    public ResponseEntity<Resp> forgotPassword(@RequestParam(required = true) String email) {
        Resp r = new Resp();
        HttpStatus status = HttpStatus.OK;
        try {
            utS.emailCambioPassword(email); 
            r.setMessage("Email di recupero inviata a " + email);
        } catch (Exception e) {
            r.setMessage(e.getMessage());
            status = HttpStatus.BAD_REQUEST; 
        }
        return ResponseEntity.status(status).body(r);
    }
	
	@PostMapping("/confirm-password-recovery")
	public ResponseEntity<Resp> confirmPasswordRecovery(@RequestBody PasswordRecoveryReq req) {
	    Resp r = new Resp();
	    HttpStatus status = HttpStatus.OK;
	    try {
	        utS.confermaRecuperoPassword(req);
	        r.setMessage("Password aggiornata correttamente.");
	    } catch (Exception e) {
	        r.setMessage(e.getMessage());
	        status = HttpStatus.BAD_REQUEST;
	    }
	    return ResponseEntity.status(status).body(r);
	}
}