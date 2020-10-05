package creakok.com.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.filesetting.Path;
import creakok.com.mapper.ProjectMapper;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
public class ProjectServiceImpl implements ProjectService {
	@Autowired
	private ProjectMapper mapper;
	
	
	@Override
	public void writeFundingProject(Funding funding) {
		int result = mapper.writeFundingProject(funding);
	}


	@Override
	public String saveStore(MultipartFile f) {
		String ofname = f.getOriginalFilename();
		int idx = ofname.lastIndexOf(".");
		String ofheader = ofname.substring(0,idx);
		String ext = ofname.substring(idx);
		long ms = System.currentTimeMillis();
		StringBuilder sb = new StringBuilder();
		sb.append(ofheader);
		sb.append("_");
		sb.append(ms);
		sb.append(ext);
		String saveFileName = sb.toString();
		long fsize = f.getSize();
		
		boolean flag = writeFile(f, saveFileName);
		if(flag) {
			log.info("파일 업로드 성공");
		}else {
			log.info("파일 업로드 실패");
		}
		
		return Path.FILE_STORE_SHORT + saveFileName;
	}


	@Override
	public boolean writeFile(MultipartFile f, String saveFileName) {
		File dir = new File(Path.FILE_STORE);
		if(!dir.exists()) dir.mkdirs();
		
		FileOutputStream fos = null;
		try {
			byte data[] = f.getBytes();
			fos = new FileOutputStream(Path.FILE_STORE + saveFileName);
			fos.write(data);
			fos.flush();
			
			return true;		
		}catch(IOException ie) {
			return false;
		}finally {
			try {
				fos.close();
			}catch(IOException ie){
			}
		}
	}
	
	@Override
	public void insertOneGoods(Goods goods) {
		mapper.insertOneGoods(goods);
	}
	
	@Override
	public Goods selectByGoodsName(String goods_name) {
		return mapper.selectByGoodsName(goods_name);
	}
}
