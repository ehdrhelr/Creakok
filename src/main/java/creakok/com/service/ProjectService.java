package creakok.com.service;

import java.sql.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import creakok.com.domain.Funding;
import creakok.com.domain.Goods;

public interface ProjectService {

	
	void writeFundingProject(Funding funding);
	String saveStore(MultipartFile f);
	boolean writeFile(MultipartFile f, String saveFileName);
	//writeGoodsProject();
	
	//editProject
	//deleteProject
	
	void insertOneGoods(Goods goods);
	Goods selectByGoodsName(String goods_name);
	
	String saveStoreGoods(MultipartFile f);
	boolean writeFileGoods(MultipartFile f, String saveFileName);
}
