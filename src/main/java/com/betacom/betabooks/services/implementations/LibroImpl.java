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
import com.betacom.betabooks.enums.TipoCopertina;
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
import com.betacom.betabooks.services.interfaces.IUploadServices;
import com.betacom.betabooks.utils.FormatoLibroMapper;
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

	private final Mapper mapper;
	private final FormatoLibroMapper FLmapper;

	private final IUploadServices upS;

	/*
	 * libro
	 */

	@Transactional(rollbackFor = Exception.class)
	@Override
	public Long create(LibroReq req) throws Exception {
		log.debug("LibroImpl - create {}", req);
		if (req.getTitolo() == null)
			throw new Exception("Titolo non può essere null");
		if (req.getIdAutore() == null)
			throw new Exception("Autore non può essere null");
		if (req.getIdEditore() == null)
			throw new Exception("Editore non può essere null");

		Autore autore = autoreR.findById(req.getIdAutore()).orElseThrow(() -> new Exception("Autore non trovato"));
		Editore editore = editoreR.findById(req.getIdEditore()).orElseThrow(() -> new Exception("Editore non trovato"));
		Set<Categoria> categorie = req.getIdCategorie() != null
				? new HashSet<>(categoriaR.findAllById(req.getIdCategorie()))
				: new HashSet<>();

		Libro libro = new Libro();
		libro.setTitolo(req.getTitolo());
		libro.setDescrizione(req.getDescrizione());
		libro.setAutore(autore);
		libro.setEditore(editore);
		libro.setCategorie(categorie);

		return libR.save(libro).getId();
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void update(LibroReq req) throws Exception {
		log.debug("LibroImpl - update {}", req);
		Libro libro = libR.findById(req.getId()).orElseThrow(() -> new Exception("Libro non trovato"));

		if (req.getTitolo() != null)
			libro.setTitolo(req.getTitolo());
		if (req.getDescrizione() != null)
			libro.setDescrizione(req.getDescrizione());
		if (req.getIdAutore() != null)
			libro.setAutore(autoreR.findById(req.getIdAutore()).orElseThrow(() -> new Exception("Autore non trovato")));
		if (req.getIdEditore() != null)
			libro.setEditore(
					editoreR.findById(req.getIdEditore()).orElseThrow(() -> new Exception("Editore non trovato")));
		if (req.getIdCategorie() != null)
			libro.setCategorie(new HashSet<>(categoriaR.findAllById(req.getIdCategorie())));

		libR.save(libro);
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void delete(Long id) throws Exception {
		log.debug("LibroImpl - delete {}", id);
		Libro libro = libR.findById(id).orElseThrow(() -> new Exception("Libro non trovato"));
		// Soft delete: disattiva tutti i formati prima di eliminare
		formatoR.findByLibroId(id).forEach(f -> f.setAttivo(false));
		formatoR.saveAll(formatoR.findByLibroId(id));
		libR.delete(libro);
	}

	@Override
	public LibroDTO findById(Long id) throws Exception {
		log.debug("LibroImpl - findById {}", id);
		Libro libro = libR.findById(id).orElseThrow(() -> new Exception("Libro non trovato"));
		return mapper.buildLibroDTO(libro);
	}

	@Override
	public List<LibroDTO> findAll() throws Exception {
		log.debug("LibroImpl - findAll");
		return mapper.buildLibroDTO(libR.findAll());
	}

	/*
	 * FORMATO
	 */
	
	@Transactional(rollbackFor = Exception.class)
	@Override
	public Long createFormatoLibro(Long idLibro, LibroReq req) throws Exception {
	    log.debug("LibroImpl - createFormatoLibro {}", req);

	    if (req.getPrezzo() == null) throw new Exception("Prezzo non può essere null");
	    if (req.getTipoSupporto() == null) throw new Exception("Tipo supporto non può essere null");
	    if (req.getIsbn() != null && formatoR.existsByIsbn(req.getIsbn()))
	        throw new Exception("ISBN " + req.getIsbn() + " già presente");
	    
	    String isbnRegex = "^[0-9]{13}$";

	    if (req.getIsbn() == null || !req.getIsbn().matches(isbnRegex)) {
	        throw new Exception("ISBN non valido: deve contenere esattamente 13 cifre numeriche");
	    }

	    Libro libro = libR.findById(idLibro).orElseThrow( () -> new Exception("Libro non trovato"));

	    FormatoLibro formato = new FormatoLibro();
	    formato.setLibro(libro);
	    formato.setTipoSupporto(req.getTipoSupporto());
	    formato.setIsbn(req.getIsbn());
	    formato.setPrezzo(req.getPrezzo());
	    formato.setAttivo(true);

	    if (req.getTipoSupporto() == TipoSupporto.CARTACEO) {
	        if (req.getTipoCopertina() == null) throw new Exception("Tipo copertina obbligatorio per CARTACEO");
	        if (req.getQuantita() == null)      throw new Exception("Quantità obbligatoria per CARTACEO");
	        formato.setTipoCopertina(req.getTipoCopertina());
	        formato.setQuantita(req.getQuantita());
	    } else {
	        formato.setTipoCopertina(null);
	        formato.setQuantita(null);
	    }

	    return formatoR.save(formato).getId();
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void updateFormato(FormatoLibroReq req) throws Exception {
		log.debug("LibroImpl - updateFormato {}", req);
		FormatoLibro formato = formatoR.findById(req.getId()).orElseThrow(() -> new Exception("Formato non trovato"));

		if (req.getIsbn() != null && !req.getIsbn().equals(formato.getIsbn()) && formatoR.existsByIsbn(req.getIsbn()))
			throw new Exception("ISBN " + req.getIsbn() + " già presente");

		if (req.getPrezzo() != null)
			formato.setPrezzo(req.getPrezzo());
		if (req.getIsbn() != null)
			formato.setIsbn(req.getIsbn());
		if (req.getQuantita() != null)
			formato.setQuantita(req.getQuantita());
		if (req.getAttivo() != null)
			formato.setAttivo(req.getAttivo());
		
		if((req.getPrezzo().compareTo( new BigDecimal(0) )) == -1 )	throw new Exception("Costo non può essere <0");
		
		if(req.getTipoSupporto() == TipoSupporto.CARTACEO &&
				req.getQuantita()<0
				)throw new Exception("Quantità non può essere <0 per i cartacei");
		if(req.getTipoSupporto() == TipoSupporto.EBOOK)
			formato.setQuantita(null);
			
		formatoR.save(formato);
	}

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void disattivaFormato(Long idFormato) throws Exception {
		log.debug("LibroImpl - disattivaFormato {}", idFormato);
		FormatoLibro formato = formatoR.findById(idFormato).orElseThrow(() -> new Exception("Formato non trovato"));
		formato.setAttivo(false);
		formatoR.save(formato);
	}

	@Override
	public List<FormatoLibroDTO> findFormatiByLibro(Long idLibro) throws Exception {
		log.debug("LibroImpl - findFormatiByLibro {}", idLibro);
		if (!libR.existsById(idLibro))
			throw new Exception("Libro non trovato");
		return formatoR.findByLibroIdAndAttivoTrue(idLibro).stream().map(l -> FLmapper.buildFormatoLibroDTO(l))
				.collect(Collectors.toList());
	}

	@Override
	public FormatoLibroDTO findFormatoById(Long idFormato) throws Exception {
		log.debug("LibroImpl - findFormatoById {}", idFormato);
		FormatoLibro formato = formatoR.findById(idFormato).orElseThrow(() -> new Exception("Formato non trovato"));
		return FLmapper.buildFormatoLibroDTO(formato);
	}

	/*
	 * COPERTINA
	 */

	@Transactional(rollbackFor = Exception.class)
	@Override
	public void salvaCopertina(Long idFormato, MultipartFile file) throws Exception {
		log.debug("LibroImpl - salvaCopertina formato {}", idFormato);
		FormatoLibro formato = formatoR.findById(idFormato).orElseThrow(() -> new Exception("Formato non trovato"));

		formato.setCopertina(upS.saveImage(file, idFormato));
		formatoR.save(formato);
	}

	@Override
	public FormatoLibroDTO findFormatoByIdCompleto(Long idFormato) throws Exception {
		log.debug("LibroImpl - findFormatoByIdCompleto {}", idFormato);
		FormatoLibro formato = formatoR.findById(idFormato).orElseThrow(() -> new Exception("Formato non trovato"));
		FormatoLibroDTO dto = FLmapper.buildFormatoLibroDTO(formato);
		return dto;
	}

	@Override
	public List<LibroDTO> find(String query, List<String> categorie, BigDecimal prezzoMin, BigDecimal prezzoMax,
			TipoCopertina tipoCopertina, TipoSupporto tipoSupporto) throws Exception {
		
		String q = (query != null && !query.isBlank()) ? query : null;
		
		List<Libro> libri = libR.search(q, categorie, prezzoMin, prezzoMax, tipoSupporto, tipoCopertina);
		return libri.stream().map(
				l -> mapper.buildLibroDTO(l)
				).toList();
	}




}