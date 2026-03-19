package com.betacom.betabooks.services.interfaces;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.dto.outputs.LibroDTO;

public interface ILibroServices {
	Long create(LibroReq req) throws Exception;
	void update(LibroReq req) throws Exception;
	void delete(Long id) throws Exception;
	LibroDTO findById(Long id) throws Exception;
	List<LibroDTO> findAll() throws Exception;
	
	void salvaCopertina(Long libroId, MultipartFile file) throws Exception;
	
	LibroDTO findByIdCompleto(Long id) throws Exception;
	List<LibroDTO> findAllCompleto() throws Exception;

}
