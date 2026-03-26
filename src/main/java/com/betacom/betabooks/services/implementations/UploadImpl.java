package com.betacom.betabooks.services.implementations;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.betacom.betabooks.models.FormatoLibro;
import com.betacom.betabooks.repositories.IFormatoLibroRepository;
import com.betacom.betabooks.services.interfaces.IUploadServices;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UploadImpl implements IUploadServices{
	private final Path uploadPath;
	private final IFormatoLibroRepository formR;
	
	public UploadImpl(@Value("${app.upload.dir:uploads}") String uploadDir, IFormatoLibroRepository formR ) {
	        this.uploadPath = Paths.get(uploadDir).toAbsolutePath().normalize();
	        this.formR = formR;
	        init();
	}
	
	private void init() {
		try {
			if (Files.notExists(uploadPath)) {
				Files.createDirectories(uploadPath);
			}
		} catch (IOException e) {
			throw new RuntimeException("Path creatos");
		}
	}
	
	@Transactional (rollbackFor = Exception.class)
	@Override
	public String saveImage(MultipartFile file, Long id) throws Exception {
		log.debug("saveImage {}", id);
		
		Assert.isTrue(!file.isEmpty(),"caricamento vuoto"); // control file loaded
		
        String original = file.getOriginalFilename();
        String extension = "";
        String originalName = original.trim().replaceAll("\\s+", "_"); // normalize file name
 
        log.debug("originalName: {}" , originalName);
        
        extension = Optional.ofNullable(originalName)         // search extension file 
                .filter(name -> name.contains("."))
                .map(name -> name.substring(name.lastIndexOf(".")))
                .orElse("");

        // Build unique name
        String uniqueName =  originalName.substring(0, originalName.lastIndexOf(".")) + "-" +  UUID.randomUUID().toString() + extension;

        Path destinationFile = uploadPath.resolve(uniqueName);
        
        try {
            Files.copy(file.getInputStream(), destinationFile, StandardCopyOption.REPLACE_EXISTING);
            FormatoLibro fl = formR.findById(id)
            	.orElseThrow(() -> new Exception("formato libro non trovato"));	
            fl.setCopertina(uniqueName);
            
        } catch (IOException e) {
            throw new RuntimeException("errore nel caricamento e salvataggio della copertina");
        }
    
        return uniqueName;
	}

	@Override
	public void removeImage(String filename) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String buildUrl(String filename) {
		return ServletUriComponentsBuilder.fromCurrentContextPath()  // recupera la parte iniziale dell URL // localhost:8080/
                .path("/uploads/")    // il prefisse sarebbe image
                .path(filename)                 // il nome del file
                .toUriString(); 	
	
	}
	
	

}
