package com.betacom.betabooks.services.interfaces;

import org.springframework.web.multipart.MultipartFile;

public interface IUploadServices {
	String saveImage(MultipartFile file, Long id) throws Exception;
	void removeImage(String filename) throws Exception;
	String buildUrl(String filename);
}
