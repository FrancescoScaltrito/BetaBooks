package com.betacom.betabooks.services.interfaces;

import com.betacom.betabooks.dto.inputs.MailReq;

public interface IMailServices {
	void sendMail(MailReq req) throws Exception;
}
