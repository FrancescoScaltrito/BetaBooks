package com.betacom.betabooks.services.interfaces;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.betacom.betabooks.dto.inputs.FormatoLibroReq;
import com.betacom.betabooks.dto.inputs.LibroReq;
import com.betacom.betabooks.dto.outputs.FormatoLibroDTO;
import com.betacom.betabooks.dto.outputs.LibroDTO;

public interface ILibroServices {

	Long create(LibroReq req) throws Exception;
    void update(LibroReq req) throws Exception;
    void delete(Long id) throws Exception;
    LibroDTO findById(Long id) throws Exception;
    List<LibroDTO> findAll() throws Exception;

    void updateFormato(FormatoLibroReq req) throws Exception;
    void disattivaFormato(Long idFormato) throws Exception;
    List<FormatoLibroDTO> findFormatiByLibro(Long idLibro) throws Exception;
    FormatoLibroDTO findFormatoById(Long idFormato) throws Exception;

    void salvaCopertina(Long idFormato, MultipartFile file) throws Exception;
    FormatoLibroDTO findFormatoByIdCompleto(Long idFormato) throws Exception;
    
    Long createFormatoLibro(Long idLibro, LibroReq req) throws Exception;
    
    
    
//    Long creaCartaceo(LibroReq req) throws Exception;
//    Long creaEbook(LibroReq req) throws Exception;
    
    
}
