package com.betacom.betabooks.dto.inputs;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
public class PasswordRecoveryReq {
    private String token;
    private String nuovaPassword;
}
