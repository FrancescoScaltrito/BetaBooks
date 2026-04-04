package com.betacom.betabooks.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.betacom.betabooks.response.Resp;
import com.betacom.betabooks.services.interfaces.IUploadServices;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@RestController
@RequestMapping("api/upload")
@CrossOrigin(origins = "http://localhost:4200")
public class UploadController {
	
	private final IUploadServices upS;
	
	@PostMapping(value = "/image", consumes = "multipart/form-data")
	public ResponseEntity<Resp> uploadImage(@RequestParam MultipartFile file,@RequestParam Long id) {
		Resp r = new Resp();
		HttpStatus status = HttpStatus.OK;
		try {
			 if (file.getContentType() == null || !file.getContentType().startsWith("image/")) {
				 r.setMessage("upload non valido");
				 return ResponseEntity.badRequest().body(r);	            
			 }
			 
			 r.setMessage(upS.saveImage(file, id));
			 
			 return ResponseEntity.status(HttpStatus.CREATED).body(r);
			 
		 } catch (Exception e) {
			 r.setMessage(e.getMessage());
			 return ResponseEntity.internalServerError().body(r);
		 }
	 }
	
	@GetMapping("getUrl")
	public ResponseEntity<Resp> getUrl(@RequestParam (required = true) String filename) {
		Resp r = new Resp();
		HttpStatus status = HttpStatus.OK;
		
		r.setMessage(upS.buildUrl(filename));
		return ResponseEntity.status(status).body(r);
	}
}
