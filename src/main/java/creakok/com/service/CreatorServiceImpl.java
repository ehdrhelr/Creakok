package creakok.com.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import creakok.com.domain.Creator;
import creakok.com.mapper.CreatorMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CreatorServiceImpl implements CreatorService {

	@Autowired
	private CreatorMapper creatorMapper;
	
	@Override
	public int updateCreator_standby(Creator creator) {
		return creatorMapper.updateCreator_standby(creator);
	}

	
	@Override
	public int deleteCreator_standby(Creator creator) {
		return creatorMapper.deleteCreator_standby(creator);
	}
	
	@Override
	public int addCreator(Creator creator) {
		return creatorMapper.insertCreator(creator);
	}

	
	@Override
	public List<Creator> readAllCreatorStandby() {
		return creatorMapper.selectAll_standby();
	}
	
	@Override
	public int updateCreatorImages(Creator creator) {
		return creatorMapper.updateCreatorImages(creator);
	}
	
	@Override
	public int updateCreatorProfileImages(Creator creator){
		return creatorMapper.updateCreatorProfileImages(creator);
	}
	
	@Override
	public int updateCreatorBannerImages(Creator creator) {
		return creatorMapper.updateCreatorBannerImages(creator);
	}
	
	@Override
	public boolean deleteImage(String path, String filename) {
		
		return false;
	}
	
	@Override
	public String saveImage(MultipartFile f, String path) {
		String ofname = f.getOriginalFilename();
		int idx = ofname.lastIndexOf(".");
		if(idx<0) return null;
		String ofheader = ofname.substring(0,idx);
		String ext = ofname.substring(idx);
		long ms = System.currentTimeMillis();
		StringBuilder sb = new StringBuilder();
		sb.append(ofheader);
		sb.append("_");
		sb.append(ms);
		sb.append(ext);
		String saveFileName = sb.toString();
		
		File dir = new File(path);
		if(!dir.exists()) dir.mkdirs();
		
		FileOutputStream fos = null;
		try {
			byte data[] = f.getBytes();
			fos = new FileOutputStream(path + saveFileName);
			fos.write(data);
			fos.flush();
			
			log.info("파일 업로드 성공");
		}catch(IOException ie) {
			log.info("파일 업로드 실패");
		}finally {
			try {
				fos.close();
			}catch(IOException ie){
			}
		}
		
		return saveFileName;
	}
	
	@Override
	public Creator checkNameExist(String creator_name) {
		return creatorMapper.selectByName(creator_name);
	}
	
	@Override
	public Creator checkNameExist_standby(String creator_name) {
		return creatorMapper.selectByName_standby(creator_name);
	}
	
	@Override
	public Creator checkEmailExist_standby(String member_email) {
		return creatorMapper.selectByEmail_standby(member_email);
	}

	@Override
	public int addCreatorStandby(Creator creator) {
		return creatorMapper.insertCreator_standby(creator);
	}
}
