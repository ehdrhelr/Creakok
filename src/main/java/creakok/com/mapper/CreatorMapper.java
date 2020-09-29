package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Creator;

public interface CreatorMapper {
	List<Creator> selectAll_standby();
	Creator selectByName(String creator_name);
	Creator selectByEmail(String member_email);
	Creator selectByName_standby(String creator_name);
	Creator selectByEmail_standby(String member_email);
	int insertCreator_standby(Creator creator);
	int updateCreatorImages(Creator creator);
	
	int updateCreatorProfileImages(Creator creator);
	int updateCreatorBannerImages(Creator creator);
	int updateCreatorProfileImagesInCreator(Creator creator);
	int updateCreatorBannerImagesInCreator(Creator creator);

	int insertCreator(Creator creator);
	int deleteCreator_standby(Creator creator);
	
	int updateCreator_standby(Creator creator);
	int updateCreator(Creator creator);
} 