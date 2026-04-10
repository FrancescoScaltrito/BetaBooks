package com.betacom.betabooks.services.interfaces;

import com.betacom.betabooks.dto.inputs.PasswordRecoveryReq;
import com.betacom.betabooks.dto.inputs.PasswordReq;
import com.betacom.betabooks.dto.inputs.UtenteReq;
import com.betacom.betabooks.dto.outputs.UtenteDTO;
import java.util.List;
import java.util.Map; // <-- Importante aggiungere questo import!

public interface IUtenteServices {
    
    UtenteDTO register(UtenteReq req);
    
    // AGGIUNGI QUESTA RIGA:
    Map<String, Object> login(UtenteReq req); 

    List<UtenteDTO> getAll();
    UtenteDTO getById(Long id);
    UtenteDTO update(Long id, UtenteReq req);
    void delete(Long id);
    
    void sendValidation(String email) throws Exception;
	void emailValidate(String email) throws Exception;
	
	void cambiaPassword(PasswordReq req) throws Exception;
	void emailCambioPassword(String email) throws Exception;
	void confermaRecuperoPassword(PasswordRecoveryReq req) throws Exception;
}