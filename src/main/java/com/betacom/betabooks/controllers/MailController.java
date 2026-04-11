package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.betacom.betabooks.dto.inputs.MailReq;
import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.IMailServices;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RestController
@RequestMapping ("rest/mail")
public class MailController {

	private final IMailServices mailS;
	
	@PostMapping("/send")
	public ResponseEntity<Resp> send(@RequestBody (required = true) MailReq req) {
		Resp r = new Resp(); 
		HttpStatus status = HttpStatus.OK;
		try {
			mailS.sendMail(req);
			r.setMessage("");
		} catch (Exception e) {
			r.setMessage(e.getMessage());
			status = HttpStatus.BAD_REQUEST;
		}
		return ResponseEntity.status(status).body(r);
	}

}
