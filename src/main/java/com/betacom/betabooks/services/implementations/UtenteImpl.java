package com.betacom.betabooks.services.implementations;

import com.betacom.betabooks.dto.inputs.MailReq;
import com.betacom.betabooks.dto.inputs.PasswordRecoveryReq;
import com.betacom.betabooks.dto.inputs.PasswordReq;
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import com.betacom.betabooks.models.PasswordResetToken;
import com.betacom.betabooks.models.Utente;
import com.betacom.betabooks.repositories.IPasswordResetTokenRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.services.interfaces.IMailServices;
import com.betacom.betabooks.services.interfaces.IUtenteServices;

import jakarta.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@Slf4j
public class UtenteImpl implements IUtenteServices {

	@Value("${mail.validation}")
	private String validationURL;

	@Value("${mail.resetPassword}")
	private String resetPasswordURL;

	private final IUtenteRepository utenteRepository;
	private final PasswordEncoder passwordEncoder;
	private final AuthenticationManager authenticationManager;
	private final IMailServices mailS;
	private final IPasswordResetTokenRepository tokenRepository;

	public UtenteImpl(IUtenteRepository utenteRepository, PasswordEncoder passwordEncoder,
			AuthenticationManager authenticationManager, IMailServices mailS,
			IPasswordResetTokenRepository tokenRepository) {
		this.utenteRepository = utenteRepository;
		this.passwordEncoder = passwordEncoder;
		this.authenticationManager = authenticationManager;
		this.mailS = mailS;
		this.tokenRepository = tokenRepository;

	}

	@Override
	public UtenteDTO register(UtenteReq req) {
		if (utenteRepository.existsByEmail(req.getEmail())) {
			throw new ResponseStatusException(HttpStatus.CONFLICT, "Email già in uso");
		}

		Utente utente = new Utente();
		utente.setEmail(req.getEmail());
		utente.setPassword(passwordEncoder.encode(req.getPassword()));

		Utente salvato = utenteRepository.save(utente);
		return toDTO(salvato);
	}

	@Override
	public List<UtenteDTO> getAll() {
		return utenteRepository.findAll().stream().map(this::toDTO).collect(Collectors.toList());
	}

	@Override
	public UtenteDTO getById(Long id) {
		Utente utente = utenteRepository.findById(id).orElseThrow(
				() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato con id: " + id));
		return toDTO(utente);
	}

	@Override
	public UtenteDTO update(Long id, UtenteReq req) {
		Utente utente = utenteRepository.findById(id).orElseThrow(
				() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato con id: " + id));

		utente.setEmail(req.getEmail());
		if (req.getPassword() != null && !req.getPassword().isBlank()) {
			utente.setPassword(passwordEncoder.encode(req.getPassword()));
		}

		Utente salvato = utenteRepository.save(utente);
		return toDTO(salvato);
	}

	@Override
	public void delete(Long id) {
		if (!utenteRepository.existsById(id)) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato con id: " + id);
		}
		utenteRepository.deleteById(id);
	}

	// ── Metodo privato di mappatura ──────────────────────────────────────────────
	private UtenteDTO toDTO(Utente u) {
		return UtenteDTO.builder().id(u.getId()).email(u.getEmail()).ruolo(u.getRuolo().name())
				.validato(u.getValidato()).build();
	}

	@Override
	public Map<String, Object> login(UtenteReq req) {
		// 1. Autentica l'utente (Spring controlla email e password)
		// Se le credenziali sono sbagliate, lancia AuthenticationException qui
		Authentication auth = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(req.getEmail(), req.getPassword()));

		// 2. Recuperiamo l'utente dal DB
		Utente utente = utenteRepository.findByEmail(req.getEmail())
				.orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Utente non trovato"));

		// 3. Prepariamo la risposta (Senza Token!)
		Map<String, Object> response = new HashMap<>();
		response.put("utente", toDTO(utente));

		return response;
	}
	
	/*
	 * VALIDAZIONE EMAIL
	 */

	@Override
	public void sendValidation(String email) throws Exception {
		log.debug("sendValidation {}", email);

		Utente ut = utenteRepository.findByEmail(email).orElseThrow(() -> new Exception("Utente non trovato"));
		sendMailValidation(ut);

	}

	@Override
	public void emailValidate(String email) throws Exception {
		log.debug("emailValidate {}", email);

		Utente ut = utenteRepository.findByEmail(email).orElseThrow(() -> new Exception("Utente non trovato"));
		ut.setValidato(true);
		utenteRepository.save(ut);

	}

	private void sendMailValidation(Utente acc) throws Exception {
		
		if(acc.getValidato()==true) return;
		
	    StringBuilder body = new StringBuilder();
	    body.append("<!DOCTYPE html><html><body style='font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0;'>");
	    body.append("<div style='max-width: 600px; margin: 40px auto; background-color: #ffffff; border-radius: 8px; overflow: hidden; box-shadow: 0 2px 8px rgba(0,0,0,0.1);'>");
	    
	    // Header
	    body.append("<div style='background-color: #1a1a2e; padding: 30px; text-align: center;'>");
	    body.append("<h1 style='color: #ffffff; margin: 0; font-size: 28px;'>📚 BetaBooks</h1>");
	    body.append("</div>");
	    
	    // Body
	    body.append("<div style='padding: 40px 30px;'>");
	    body.append("<h2 style='color: #1a1a2e;'>Benvenuto su BetaBooks!</h2>");
	    body.append("<p style='color: #555; font-size: 16px;'>Ciao <strong>").append(acc.getEmail()).append("</strong>,</p>");
	    body.append("<p style='color: #555; font-size: 16px;'>Grazie per esserti registrato! Per completare la registrazione e attivare il tuo account, clicca sul pulsante qui sotto:</p>");
	    
	    // Button
	    body.append("<div style='text-align: center; margin: 35px 0;'>");
	    body.append("<a href='").append(validationURL).append(acc.getEmail()).append("'");
	    body.append(" style='background-color: #e94560; color: #ffffff; padding: 14px 32px; text-decoration: none; border-radius: 6px; font-size: 16px; font-weight: bold;'>");
	    body.append("✅ Valida il tuo account</a>");
	    body.append("</div>");
	    
	    body.append("<p style='color: #999; font-size: 13px;'>Se non hai creato un account su BetaBooks, puoi ignorare questa email.</p>");
	    body.append("</div>");
	    
	    // Footer
	    body.append("<div style='background-color: #f0f0f0; padding: 20px; text-align: center;'>");
	    body.append("<p style='color: #aaa; font-size: 12px; margin: 0;'>© 2025 BetaBooks — Tutti i diritti riservati</p>");
	    body.append("</div>");
	    
	    body.append("</div></body></html>");

	    sendMail(acc, "✉️ Conferma il tuo account BetaBooks", body.toString());
	}

	private void sendMail(Utente account, String oggetto, String body) throws Exception {

		mailS.sendMail(MailReq.builder().to(account.getEmail()).oggetto(oggetto).body(body).build());

	}
	
	/*
	 * CAMBIO PASSWORD - RECUPERO PASSWORD
	 */

	@Override
	public void cambiaPassword(PasswordReq req) throws Exception {
		log.debug("richiesta cambio pwd per l'utente ",req.getEmail());

		Utente user = utenteRepository.findByEmail(req.getEmail()).orElseThrow( () -> new Exception("Utente non trovato"));
		
		if( checkPwd(user.getEmail(), req.getOldPwd()) ) {
			user.setPassword(passwordEncoder.encode(req.getNewPwd()));
		}else {
			throw new Exception("Password errata...");
		}
		
		utenteRepository.save(user);
	}

	@Transactional
	@Override
	public void emailCambioPassword(String email) throws Exception {
	    log.debug("Richiesta recupero password per: " + email);
	    
	    Utente user = utenteRepository.findByEmail(email)
	        .orElseThrow(() -> new Exception("Utente non trovato"));

	    tokenRepository.deleteByUtente(user);
	    
	    String token = UUID.randomUUID().toString();
	    PasswordResetToken resetToken = new PasswordResetToken(token, user, 30); // Scade in 30 min
	    
	    tokenRepository.save(resetToken);
	    
	    sendMailPasswordRecovery(user, token);
	}
	
	@Transactional
	@Override
	public void confermaRecuperoPassword(PasswordRecoveryReq req) throws Exception {
	    log.debug("Conferma recupero password per token: {}", req.getToken());
	    
	    PasswordResetToken resetToken = tokenRepository.findByToken(req.getToken())
	            .orElseThrow(() -> new Exception("Il link di recupero non è valido o è inesistente."));

	    if (resetToken.isScaduto()) {
	        tokenRepository.delete(resetToken);
	        throw new Exception("Il link di recupero è scaduto. Richiedine uno nuovo.");
	    }

	    Utente utente = resetToken.getUtente();

	    utente.setPassword(passwordEncoder.encode(req.getNuovaPassword()));
	    utenteRepository.save(utente);

	    tokenRepository.delete(resetToken);
	    
	    log.debug("Password aggiornata con successo per l'utente: {}", utente.getEmail());
	}
	
	private boolean checkPwd(String email, String pwd) throws Exception {
		
		boolean validation = false;
		
	    Utente user = utenteRepository.findByEmail(email)
	        .orElseThrow(() -> new Exception("Utente non trovato"));
	    
	    if (!passwordEncoder.matches(pwd, user.getPassword())) {
	        throw new Exception("Password non corretta");
	    }else {
	    	validation = true;
	    }
	    
	    return validation;
	}
	
	private void sendMailPasswordRecovery(Utente acc, String token) throws Exception {
		
	    StringBuilder body = new StringBuilder();
	    body.append("<!DOCTYPE html><html><body style='font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0;'>");
	    body.append("<div style='max-width: 600px; margin: 40px auto; background-color: #ffffff; border-radius: 8px; overflow: hidden; box-shadow: 0 2px 8px rgba(0,0,0,0.1);'>");
	    
	    // Header
	    body.append("<div style='background-color: #1a1a2e; padding: 30px; text-align: center;'>");
	    body.append("<h1 style='color: #ffffff; margin: 0; font-size: 28px;'>📚 BetaBooks</h1>");
	    body.append("</div>");
	    
	    // Body
	    body.append("<div style='padding: 40px 30px;'>");
	    body.append("<h2 style='color: #1a1a2e;'>Recupero Password</h2>");
	    body.append("<p style='color: #555; font-size: 16px;'>Ciao <strong>").append(acc.getEmail()).append("</strong>,</p>");
	    body.append("<p style='color: #555; font-size: 16px;'>Abbiamo ricevuto una richiesta di reset della password per il tuo account. Clicca sul pulsante qui sotto per procedere alla scelta di una nuova password:</p>");
	    
	    // Button
	    body.append("<div style='text-align: center; margin: 35px 0;'>");
	    // Esempio URL: https://tuosito.it/auth/cambio-password?token=XYZ
	    body.append("<a href='").append(resetPasswordURL).append("?token=").append(token).append("'");
	    body.append(" style='background-color: #e94560; color: #ffffff; padding: 14px 32px; text-decoration: none; border-radius: 6px; font-size: 16px; font-weight: bold;'>");
	    body.append("🔒 Resetta la mia Password</a>");
	    body.append("</div>");
	    
	    body.append("<p style='color: #555; font-size: 14px;'>Il link scadrà tra 24 ore.</p>");
	    body.append("<p style='color: #999; font-size: 13px;'>Se non hai richiesto tu il reset, puoi ignorare questa email in tutta sicurezza. La tua password attuale non verrà modificata.</p>");
	    body.append("</div>");
	    
	    // Footer
	    body.append("<div style='background-color: #f0f0f0; padding: 20px; text-align: center;'>");
	    body.append("<p style='color: #aaa; font-size: 12px; margin: 0;'>© 2025 BetaBooks — Supporto Tecnico</p>");
	    body.append("</div>");
	    
	    body.append("</div></body></html>");

	    sendMail(acc, "🔑 Recupero Password BetaBooks", body.toString());
	}

	
}