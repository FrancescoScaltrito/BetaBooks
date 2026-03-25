package com.betacom.betabooks.services.implementations;

import java.math.BigDecimal;
import java.util.Base64;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.betacom.betabooks.dto.inputs.FormatoLibroReq;
import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.dto.outputs.FormatoLibroDTO;
import com.betacom.betabooks.dto.outputs.LibroDTO;
import com.betacom.betabooks.enums.TipoSupporto;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Categoria;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.ICategoriaRepository;
import com.betacom.betabooks.repositories.IEditoreRepository;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.services.interfaces.ILibroServices;
import com.betacom.betabooks.utils.Mapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class LibroImpl implements ILibroServices {

    private final ILibroRepository libR;
    private final IFormatoLibroRepository formatoR;
    private final IAutoreRepository autoreR;
    private final IEditoreRepository editoreR;
    private final ICategoriaRepository categoriaR;

    /*
     * libro
     */

//    @Transactional(rollbackFor = Exception.class)
//    @Override
//    public Long create(LibroReq req) throws Exception {						
//        log.debug("LibroImpl - create {}", req);
//        if (req.getTitolo() == null)
//            throw new Exception("Titolo non può essere null");
//        if (req.getIdAutore() == null)
//            throw new Exception("Autore non può essere null");
//        if (req.getIdEditore() == null)
//            throw new Exception("Editore non può essere null");
//
//        Autore autore = autoreR.findById(req.getIdAutore())
//                .orElseThrow(() -> new Exception("Autore non trovato"));
//        Editore editore = editoreR.findById(req.getIdEditore())
//                .orElseThrow(() -> new Exception("Editore non trovato"));
//        Set<Categoria> categorie = req.getIdCategorie() != null
//                ? new HashSet<>(categoriaR.findAllById(req.getIdCategorie()))
//                : new HashSet<>();
//
//        Libro libro = new Libro();
//        libro.setTitolo(req.getTitolo());
//        libro.setDescrizione(req.getDescrizione());
//        libro.setAutore(autore);
//        libro.setEditore(editore);
//        libro.setCategorie(categorie);
//
//        return libR.save(libro).getId();
//    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void update(LibroReq req) throws Exception {
        log.debug("LibroImpl - update {}", req);
        Libro libro = libR.findById(req.getId())
                .orElseThrow(() -> new Exception("Libro non trovato"));

        if (req.getTitolo() != null)
            libro.setTitolo(req.getTitolo());
        if (req.getDescrizione() != null)
            libro.setDescrizione(req.getDescrizione());
        if (req.getIdAutore() != null)
            libro.setAutore(autoreR.findById(req.getIdAutore())
                    .orElseThrow(() -> new Exception("Autore non trovato")));
        if (req.getIdEditore() != null)
            libro.setEditore(editoreR.findById(req.getIdEditore())
                    .orElseThrow(() -> new Exception("Editore non trovato")));
        if (req.getIdCategorie() != null)
            libro.setCategorie(new HashSet<>(categoriaR.findAllById(req.getIdCategorie())));

        libR.save(libro);
    }
    
    
    @Transactional(rollbackFor = Exception.class)
    @Override
    public void delete(Long id) throws Exception {
        log.debug("LibroImpl - delete {}", id);
        Libro libro = libR.findById(id)
                .orElseThrow(() -> new Exception("Libro non trovato"));

        // Blocca la delete se esistono formati attivi
        boolean hasFormatiAttivi = formatoR.findByLibroIdAndAttivoTrue(id).size() > 0;
        if (hasFormatiAttivi)
            throw new Exception("Impossibile eliminare il libro: esistono formati attivi. Disattivali prima.");

        // Nessun formato attivo: elimina prima i formati (anche quelli inattivi) poi il libro
        formatoR.deleteAll(formatoR.findByLibroId(id));
        libR.delete(libro);
    }

    @Override
    public LibroDTO findById(Long id) throws Exception {
        log.debug("LibroImpl - findById {}", id);
        Libro libro = libR.findById(id)
                .orElseThrow(() -> new Exception("Libro non trovato"));
        return Mapper.buildLibroDTO(libro);
    }

    @Override
    public List<LibroDTO> findAll() throws Exception {
        log.debug("LibroImpl - findAll");
        return Mapper.buildLibroDTO(libR.findAll());
    }

    /*
     * FORMATO
     */

//    @Transactional(rollbackFor = Exception.class)
//    @Override
//    public Long createFormato(FormatoLibroReq req) throws Exception {	//da impl. controlli per inserimento ebook o fisico
//        log.debug("LibroImpl - createFormato {}", req);
//        if (req.getIdLibro() == null)
//            throw new Exception("idLibro non può essere null");
//        if (req.getTipoSupporto() == null)
//            throw new Exception("tipoSupporto non può essere null");
//        if (req.getPrezzo() == null)
//            throw new Exception("prezzo non può essere null");
//        if (req.getTipoSupporto().name().equals("CARTACEO") && req.getTipoCopertina() == null)
//            throw new Exception("tipoCopertina obbligatoria per formato CARTACEO");
//        if (req.getIsbn() != null && formatoR.existsByIsbn(req.getIsbn()))
//            throw new Exception("ISBN " + req.getIsbn() + " già presente");
//        if (formatoR.existsByLibroIdAndTipoSupportoAndTipoCopertina(
//                req.getIdLibro(), req.getTipoSupporto(), req.getTipoCopertina()))
//            throw new Exception("Formato già esistente per questo libro");
//
//        Libro libro = libR.findById(req.getIdLibro())
//                .orElseThrow(() -> new Exception("Libro non trovato"));
//
//        if(req.getTipoSupporto().name().equals("EBOOK") && req.getQuantita() != null) 
//        	throw new Exception("Impossibile inserire quantità di magazzino per gli EBOOK");
//       
//        if(req.getTipoSupporto().name().equals("EBOOK") && req.getTipoCopertina() != null) 
//        	throw new Exception("Impossibile inserire tipo di copertina per gli EBOOK");
//        
//        
//        	
//        
//        FormatoLibro formato = new FormatoLibro();
//        formato.setLibro(libro);
//        formato.setTipoSupporto(req.getTipoSupporto());
//        formato.setTipoCopertina(req.getTipoCopertina());
//        formato.setIsbn(req.getIsbn());
//        formato.setPrezzo(req.getPrezzo());
//        
//        if(req.getTipoSupporto().name().equals("EBOOK")) 
//        	formato.setQuantita(-1);
//        if(req.getTipoSupporto().name().equals("CARTACEO")) 
//        	formato.setQuantita(req.getQuantita());
//        
//        
//        formato.setAttivo(req.getAttivo() != null ? req.getAttivo() : true);
//
//        return formatoR.save(formato).getId();
//    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void updateFormato(FormatoLibroReq req) throws Exception {
        log.debug("LibroImpl - updateFormato {}", req);
        FormatoLibro formato = formatoR.findById(req.getId())
                .orElseThrow(() -> new Exception("Formato non trovato"));

        if (req.getIsbn() != null && !req.getIsbn().equals(formato.getIsbn())
                && formatoR.existsByIsbn(req.getIsbn()))
            throw new Exception("ISBN " + req.getIsbn() + " già presente");

        if (req.getPrezzo() != null)   formato.setPrezzo(req.getPrezzo());
        if (req.getIsbn() != null)     formato.setIsbn(req.getIsbn());
        if (req.getQuantita() != null) formato.setQuantita(req.getQuantita());
        if (req.getAttivo() != null)   formato.setAttivo(req.getAttivo());

        formatoR.save(formato);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void disattivaFormato(Long idFormato) throws Exception {
        log.debug("LibroImpl - disattivaFormato {}", idFormato);
        FormatoLibro formato = formatoR.findById(idFormato)
                .orElseThrow(() -> new Exception("Formato non trovato"));
        formato.setAttivo(false);
        formatoR.save(formato);
    }

    @Override
    public List<FormatoLibroDTO> findFormatiByLibro(Long idLibro) throws Exception {
        log.debug("LibroImpl - findFormatiByLibro {}", idLibro);
        if (!libR.existsById(idLibro))
            throw new Exception("Libro non trovato");
        return formatoR.findByLibroIdAndAttivoTrue(idLibro)
                .stream()
                .map(Mapper::buildFormatoLibroDTO)
                .collect(Collectors.toList());
    }

    @Override
    public FormatoLibroDTO findFormatoById(Long idFormato) throws Exception {
        log.debug("LibroImpl - findFormatoById {}", idFormato);
        FormatoLibro formato = formatoR.findById(idFormato)
                .orElseThrow(() -> new Exception("Formato non trovato"));
        return Mapper.buildFormatoLibroDTO(formato);
    }

    /* 
     * COPERTINA
     */
      
    

    @Transactional(rollbackFor = Exception.class)
    @Override
    public void salvaCopertina(Long idFormato, MultipartFile file) throws Exception {
        log.debug("LibroImpl - salvaCopertina formato {}", idFormato);
        FormatoLibro formato = formatoR.findById(idFormato)
                .orElseThrow(() -> new Exception("Formato non trovato"));
        formato.setCopertina(file.getBytes());
        formato.setCopertinaMimeType(file.getContentType());
        formatoR.save(formato);
    }

    @Override
    public LibroDTO findFormatoByIdCompleto(Long idFormato) throws Exception {
        log.debug("LibroImpl - findFormatoByIdCompleto {}", idFormato);
        FormatoLibro formato = formatoR.findById(idFormato)
                .orElseThrow(() -> new Exception("Formato non trovato"));

        FormatoLibroDTO formatoDTO = Mapper.buildFormatoLibroDTO(formato);
        if (formato.getCopertina() != null) {
            formatoDTO.setCopertina("data:" + formato.getCopertinaMimeType() + ";base64,"
                    + Base64.getEncoder().encodeToString(formato.getCopertina()));
        }

        LibroDTO libroDTO = Mapper.buildLibroDTO(formato.getLibro());
        libroDTO.setFormati(List.of(formatoDTO));

        return libroDTO;
    }

    /*
     * 	creazione libro cartaceo o ebook
     */
    
    
    @Transactional(rollbackFor = Exception.class)
    @Override
    public Long creaCartaceo(LibroReq req) throws Exception {
        log.debug("LibroImpl - creaCartaceo {}", req);

        if (req.getTitolo() == null) throw new Exception("Titolo non può essere null");
        if (req.getIdAutore() == null) throw new Exception("Autore non può essere null");
        if (req.getIdEditore() == null) throw new Exception("Editore non può essere null");
        if (req.getPrezzo() == null) throw new Exception("Prezzo non può essere null");
        if (req.getTipoCopertina() == null) throw new Exception("Tipo copertina obbligatorio per CARTACEO");
        if (req.getQuantita() == null) throw new Exception("Quantità obbligatoria per CARTACEO");
        if (req.getIsbn() != null && formatoR.existsByIsbn(req.getIsbn()))
            throw new Exception("ISBN " + req.getIsbn() + " già presente");

        Autore autore   = autoreR.findById(req.getIdAutore())
                            .orElseThrow(() -> new Exception("Autore non trovato"));
        Editore editore = editoreR.findById(req.getIdEditore())
                            .orElseThrow(() -> new Exception("Editore non trovato"));
        Set<Categoria> categorie = req.getIdCategorie() != null
                ? new HashSet<>(categoriaR.findAllById(req.getIdCategorie()))
                : new HashSet<>();

        Libro libro = new Libro();
        libro.setTitolo(req.getTitolo());
        libro.setDescrizione(req.getDescrizione());
        libro.setAutore(autore);
        libro.setEditore(editore);
        libro.setCategorie(categorie);
        libro = libR.save(libro);

        FormatoLibro formato = new FormatoLibro();
        formato.setLibro(libro);
        formato.setTipoSupporto(TipoSupporto.CARTACEO);
        formato.setTipoCopertina(req.getTipoCopertina());
        formato.setIsbn(req.getIsbn());
        formato.setPrezzo(req.getPrezzo());
        formato.setQuantita(req.getQuantita());
        formato.setAttivo(true);

        return formatoR.save(formato).getId();
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public Long creaEbook(LibroReq req) throws Exception {
        log.debug("LibroImpl - creaEbook {}", req);

        if (req.getTitolo() == null)    throw new Exception("Titolo non può essere null");
        if (req.getIdAutore() == null)  throw new Exception("Autore non può essere null");
        if (req.getIdEditore() == null) throw new Exception("Editore non può essere null");
        if (req.getPrezzo() == null)    throw new Exception("Prezzo non può essere null");
        if (req.getIsbn() != null && formatoR.existsByIsbn(req.getIsbn()))
            throw new Exception("ISBN " + req.getIsbn() + " già presente");

        Autore autore   = autoreR.findById(req.getIdAutore())
                            .orElseThrow(() -> new Exception("Autore non trovato"));
        Editore editore = editoreR.findById(req.getIdEditore())
                            .orElseThrow(() -> new Exception("Editore non trovato"));
        Set<Categoria> categorie = req.getIdCategorie() != null
                ? new HashSet<>(categoriaR.findAllById(req.getIdCategorie()))
                : new HashSet<>();

        Libro libro = new Libro();
        libro.setTitolo(req.getTitolo());
        libro.setDescrizione(req.getDescrizione());
        libro.setAutore(autore);
        libro.setEditore(editore);
        libro.setCategorie(categorie);
        libro = libR.save(libro);

        FormatoLibro formato = new FormatoLibro();
        formato.setLibro(libro);
        formato.setTipoSupporto(TipoSupporto.EBOOK);
        formato.setTipoCopertina(null);
        formato.setIsbn(req.getIsbn());
        formato.setPrezzo(req.getPrezzo());
        formato.setQuantita(null);
        formato.setAttivo(true);

        return formatoR.save(formato).getId();
    }
    
    

}
