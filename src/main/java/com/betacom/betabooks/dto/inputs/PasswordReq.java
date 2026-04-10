package com.betacom.betabooks.dto.inputs;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Setter
@Getter
@ToString
@NoArgsConstructor
public class PasswordReq {
	private String email;
	private String oldPwd;
	private String newPwd;

}
