package com.betacom.betabooks.enums;

import java.time.LocalDateTime;

public enum FiltroTemporale {
    ULTIMI_30_GIORNI,
    ULTIMI_3_MESI,
    ULTIMI_6_MESI,
    ULTIMO_ANNO,
    TUTTO;

    // metodo helper per calcolare la data di inizio direttamente dall'Enum
    public LocalDateTime getDataInizio() {
        LocalDateTime ora = LocalDateTime.now();
        return switch (this) {
            case ULTIMI_30_GIORNI -> ora.minusDays(30);
            case ULTIMI_3_MESI   -> ora.minusMonths(3);
            case ULTIMI_6_MESI   -> ora.minusMonths(6);
            case ULTIMO_ANNO     -> ora.minusYears(1);
            case TUTTO           -> ora.minusYears(50);
        };
    }
}