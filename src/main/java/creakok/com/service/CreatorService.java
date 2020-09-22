package creakok.com.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import creakok.com.domain.Creator;

public interface CreatorService {
	
	List<Creator> readAllCreatorStandby();

	Creator checkNameExist(String creator_name);
	Creator checkNameExist_standby(String creator_name);
	Creator checkEmailExist_standby(String member_email);

	int addCreatorStandby(Creator creator);
	
	String saveImage(MultipartFile f, String path);
	boolean deleteImage(String path, String filename);
	
	int updateCreatorImages(Creator creator);
	int updateCreatorProfileImages(Creator creator);
	int updateCreatorBannerImages(Creator creator);
	
	int addCreator(Creator creator);
	int deleteCreator_standby(Creator creator);

	int updateCreator_standby(Creator creator);

}
