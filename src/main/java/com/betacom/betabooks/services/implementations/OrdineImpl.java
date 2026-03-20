package com.betacom.betabooks.services.implementations;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.betacom.betabooks.dto.inputs.OrdineReq;
import com.betacom.betabooks.dto.outputs.OrdineDTO;
import com.betacom.betabooks.enums.MetodoPagamento;
import com.betacom.betabooks.enums.StatoOrdine;
import com.betacom.betabooks.models.Carrello;
import com.betacom.betabooks.models.CarrelloItem;
import com.betacom.betabooks.models.Ordine;
import com.betacom.betabooks.models.OrdineItem;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.ICarrelloRepository;
import com.betacom.betabooks.repositories.IOrdineRepository;
import com.betacom.betabooks.repositories.IUtenteRepository;
import com.betacom.betabooks.services.interfaces.IOrdineServices;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class OrdineImpl implements IOrdineServices {
	
	private final IOrdineRepository ordineRepo;
    private final ICarrelloRepository carrelloRepo;
    private final IUtenteRepository utenteRepo;

	@Override
	public Long create(OrdineReq req) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(OrdineReq req) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Long id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public OrdineDTO findById(Long id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrdineDTO> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


    @Override
    @Transactional
    public Long checkout(Long idUtente, Long idIndirizzo, MetodoPagamento metodo) throws Exception {
        log.info("Inizio checkout per utente: {}", idUtente);

        // 1. Recuperiamo il carrello dell'utente con tutti i suoi item
        Carrello carrello = carrelloRepo.findByUtenteId(idUtente)
                .orElseThrow(() -> new Exception("Carrello non trovato"));

        if (carrello.getItems().isEmpty()) {
            throw new Exception("Il carrello è vuoto, impossibile procedere all'ordine");
        }

        // 2. Creiamo la testata dell'Ordine
        Ordine nuovoOrdine = new Ordine();
        nuovoOrdine.setUtente(carrello.getUtente());
        nuovoOrdine.setMetodoPagamento(metodo);
        nuovoOrdine.setStato(StatoOrdine.IN_ATTESA);
        // Qui dovresti recuperare l'oggetto Indirizzo dal suo repository se ce l'hai
        // nuovoOrdine.setIndirizzo(indirizzoRepo.findById(idIndirizzo)...);

        // 3. Trasformiamo ogni CarrelloItem in un OrdineItem
        BigDecimal totaleOrdine = BigDecimal.ZERO;
        Set<OrdineItem> itemsOrdine = new HashSet<>();

        for (CarrelloItem cItem : carrello.getItems()) {
            OrdineItem oItem = new OrdineItem();
            oItem.setOrdine(nuovoOrdine); // Colleghiamo l'item all'ordine
            oItem.setLibro(cItem.getLibro());
            oItem.setQuantita(cItem.getQuantita());
            
            // Fissiamo il prezzo storico (quello attuale del libro)
            BigDecimal prezzoAlMomento = cItem.getLibro().getPrezzo();
            oItem.setPrezzoUnitarioAcquisto(prezzoAlMomento);
            
            // Calcoliamo il subtotale per questa riga e lo aggiungiamo al totale ordine
            BigDecimal subTotale = prezzoAlMomento.multiply(new BigDecimal(cItem.getQuantita()));
            totaleOrdine = totaleOrdine.add(subTotale);
            
            itemsOrdine.add(oItem);
        }

        // 4. Completiamo l'ordine con i dati calcolati
        nuovoOrdine.setItems(itemsOrdine);
        nuovoOrdine.setTotale(totaleOrdine);

        // 5. Salviamo l'ordine (salverà anche gli item grazie a CascadeType.ALL)
        Ordine ordineSalvato = ordineRepo.save(nuovoOrdine);

        // 6. SVUOTIAMO IL CARRELLO
        // Rimuoviamo tutti gli item ma teniamo la testata del carrello vuota
        carrello.getItems().clear();
        carrelloRepo.save(carrello);

        log.info("Ordine {} creato con successo e carrello svuotato", ordineSalvato.getId());
        return ordineSalvato.getId();
    }

}
