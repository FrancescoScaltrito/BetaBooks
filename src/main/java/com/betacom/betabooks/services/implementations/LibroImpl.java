package com.betacom.betabooks.services.implementations;

import java.io.IOException;
import java.util.Base64;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.dto.outputs.LibroDTO;
import com.betacom.betabooks.models.Autore;
import com.betacom.betabooks.models.Categoria;
import com.betacom.betabooks.models.Editore;
import com.betacom.betabooks.models.Libro;
import com.betacom.betabooks.repositories.IAutoreRepository;
import com.betacom.betabooks.repositories.ICategoriaRepository;
import com.betacom.betabooks.repositories.IEditoreRepository;
import com.betacom.betabooks.repositories.ILibroRepository;
import com.betacom.betabooks.services.interfaces.ILibroServices;
import com.betacom.betabooks.utils.Mapper;

import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
@RequiredArgsConstructor
public class LibroImpl implements ILibroServices{
	private final ILibroRepository libR;
	private final IAutoreRepository autoreRepository;
	private final IEditoreRepository editoreRepository;
	private final ICategoriaRepository categoriaRepository;

	@Override
	public Long create(LibroReq req) throws Exception {
	    
	    // Controlla se esiste già un libro con lo stesso ISBN
	    if (libR.existsByIsbn(req.getIsbn()))
	        throw new Exception("Libro con ISBN " + req.getIsbn() + " già esistente");

	    // Recupera le entità collegate
	    Autore autore = autoreRepository.findById(req.getIdAutore())
	            .orElseThrow(() -> new Exception("Autore non trovato"));

	    Editore editore = editoreRepository.findById(req.getIdEditore())
	            .orElseThrow(() -> new Exception("Editore non trovato"));

	    Set<Categoria> categorie = new HashSet<>(categoriaRepository.findAllById(req.getIdCategorie()));

	    // Crea e popola l'entity
	    Libro libro = new Libro();
	    libro.setTitolo(req.getTitolo());
	    libro.setIsbn(req.getIsbn());
	    libro.setPrezzo(req.getPrezzo());
	    libro.setQuantita(req.getQuantita());
	    libro.setAutore(autore);
	    libro.setEditore(editore);
	    libro.setCategorie(categorie);

	    libR.save(libro);
	    return libro.getId();
	}

	@Override
	public void update(LibroReq req) throws Exception {
	    Libro libro = libR.findById(req.getId())
	            .orElseThrow(() -> new Exception("Libro non trovato"));

	    Autore autore = autoreRepository.findById(req.getIdAutore())
	            .orElseThrow(() -> new Exception("Autore non trovato"));

	    Editore editore = editoreRepository.findById(req.getIdEditore())
	            .orElseThrow(() -> new Exception("Editore non trovato"));

	    Set<Categoria> categorie = new HashSet<>(categoriaRepository.findAllById(req.getIdCategorie()));

	    libro.setTitolo(req.getTitolo());
	    libro.setIsbn(req.getIsbn());
	    libro.setPrezzo(req.getPrezzo());
	    libro.setQuantita(req.getQuantita());
	    libro.setAutore(autore);
	    libro.setEditore(editore);
	    libro.setCategorie(categorie);

	    libR.save(libro);
	}

	@Override
	public void delete(Long id) throws Exception {
	    Libro libro = libR.findById(id)
	            .orElseThrow(() -> new Exception("Libro non trovato"));
	    libR.delete(libro);
	}

	@Override
	public LibroDTO findById(Long id) throws Exception {
	    Libro libro = libR.findById(id)
	            .orElseThrow(() -> new Exception("Libro non trovato"));
	    return Mapper.buildLibroDTO(libro);
	}

	@Override
	public List<LibroDTO> findAll() throws Exception {
	    return Mapper.buildLibroDTO(libR.findAll());
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void salvaCopertina(Long libroId, MultipartFile file) throws Exception {
	    Libro libro = libR.findById(libroId)
	            .orElseThrow(() -> new Exception("Libro non trovato"));

	    libro.setCopertina(file.getBytes());
	    libro.setCopertinaMimeType(file.getContentType());
	    libR.save(libro);
	}

	/*
	 * stamap il libro/libri con la copertina come testo tutto in Json
	 */
	
	@Override
	public LibroDTO findByIdCompleto(Long id) throws Exception {
	    Libro libro = libR.findById(id)
	            .orElseThrow(() -> new Exception("Libro non trovato"));
	    return toDTOConCopertina(libro);
	}

	@Override
	public List<LibroDTO> findAllCompleto() throws Exception {
	    return libR.findAll().stream()
	            .map(this::toDTOConCopertina)
	            .collect(Collectors.toList());
	}
	
	
	
	// metodo per dto
	
	private LibroDTO toDTOConCopertina(Libro libro) {
	    LibroDTO dto = Mapper.buildLibroDTO(libro);
	    if (libro.getCopertina() != null) {
	        dto.setCopertina("data:" + libro.getCopertinaMimeType() + ";base64,"
	                + Base64.getEncoder().encodeToString(libro.getCopertina()));
	    }
	    return dto;
	}
	
	
}
