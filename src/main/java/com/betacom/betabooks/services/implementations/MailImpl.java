package com.betacom.betabooks.services.implementations;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.MailReq;
import com.betacom.betabooks.services.interfaces.IMailServices;

import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class MailImpl implements IMailServices{
	
	@Value("${mail.sender}")
	private String from;
	
	private final JavaMailSender mailSender;
	
	@Override
	public void sendMail(MailReq req) throws Exception {
		log.debug("sendMail {}", req);
		
		if (req.getTo() == null || req.getOggetto() == null || req.getBody() == null) throw new Exception("errore mail");
		
		MimeMessage mimeMessage = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,true, "UTF-8");
		
		helper.setTo(req.getTo());
		helper.setFrom(from);
		helper.setSubject(req.getOggetto());
		helper.setText(req.getBody(), true);
		mailSender.send(mimeMessage);
		log.debug("SEND OK");
	}

}
