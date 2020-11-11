package creakok.com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.http.impl.execchain.MainClientExec;
import org.apache.log4j.chainsaw.Main;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.domain.Member;
import creakok.com.filesetting.Path;
import creakok.com.service.CreatorBoardService;
import creakok.com.service.ProjectService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class ProjectController {
	private ProjectService service;
	private CreatorBoardService creatorboardservice;
	
	@RequestMapping(value="/project.do", method =RequestMethod.GET)
	public String funding() {
		return "project_select";
	
	}

	@RequestMapping("/fundingwrite_form.do")
	public String fundingwrite_page() {
		return "fundingwrite";
	}
	
	@RequestMapping("/fundingwrite.do")
	public ModelAndView fundingwrite(HttpServletRequest request, HttpSession session, @RequestParam MultipartFile write_funding_repre_pic) {
		
		String write_creator = request.getParameter("write_creator");
	    String write_funding_goalStr = request.getParameter("write_funding_goal");
	    String write_funding_wdateStr = request.getParameter("write_funding_wdate");	 
	    String write_funding_edateStr= request.getParameter("write_funding_edate");
	    String write_funding_subject = request.getParameter("write_funding_subject");
	    String funding_category_codeStr = request.getParameter("funding_category_code");
	    String content = request.getParameter("content");
	    String ofname = write_funding_repre_pic.getOriginalFilename();
	    String url="";
	    	if(ofname.length() !=0) {
	    		url = service.saveStore(write_funding_repre_pic);
	    	}
	    Date write_funding_wdate = Date.valueOf(write_funding_wdateStr);
	    Date write_funding_edate = Date.valueOf(write_funding_edateStr);
	   
	    Long funding_category_code = Long.parseLong(funding_category_codeStr);
	    Long write_funding_goal = Long.parseLong(write_funding_goalStr);
	   
	   Funding funding = new Funding(-1, write_creator, write_funding_subject, funding_category_code,
			   url, content, write_funding_goal, 0, write_funding_wdate, write_funding_edate, 0, 0,
			   null, null, null, -1, -1, null, null, write_funding_goal, null,null,-1,-1, -1);

	    
	    service.writeFundingProject(funding);
		return new ModelAndView("project_write_ok", "", null);
	}
	
	@PostMapping(value="/uploadSummernoteImageFile")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file_detail_pic") MultipartFile multipartFile) {
		String fileRoot = Path.FILE_STORE;	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자			
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
	
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
		
			e.printStackTrace();
		}

		String str = "/summernoteImage/"+savedFileName;
		return str;
	}   
	
	@RequestMapping("/goods_project_write_form.do")
	public String goods_project_write_form(HttpSession session) {
		return "goods_project_write";
	}
	
	@PostMapping("/goods_project_write.do")
	public String goods_project_write(HttpServletRequest request, @RequestParam MultipartFile write_goods_repre_pic) {
		String write_creator = request.getParameter("write_creator");
		String write_goods_priceStr = request.getParameter("write_goods_price");
		String write_goods_stockStr = request.getParameter("write_goods_stock");
		String write_goods_product = request.getParameter("write_goods_product");
		String goods_category_codeStr = request.getParameter("goods_category_code");
		String content = request.getParameter("content");
		//String write_goods_repre_pic = request.getParameter("write_goods_repre_pic");
		String ofname = write_goods_repre_pic.getOriginalFilename();
	    String url="";
    	if(ofname.length() !=0) {
    		url = service.saveStoreGoods(write_goods_repre_pic);
    	}
    	
		long goods_category_code = Long.parseLong(goods_category_codeStr);
		long write_goods_price = Long.parseLong(write_goods_priceStr);
		long write_goods_stock = Long.parseLong(write_goods_stockStr);
		Goods goods = new Goods(-1, goods_category_code, write_goods_product, write_goods_price, url, content, write_creator, 0, 0, write_goods_stock, 0, null);
	    
		service.insertOneGoods(goods);
		
		return "project_write_ok";
	}
	
	@PostMapping(value="/uploadSummernoteImageFile_goods")
	@ResponseBody
	public String uploadSummernoteImageFile_goods(@RequestParam("file_detail_pic") MultipartFile multipartFile) {
		String fileRoot = Path.FILE_STORE_GOODS;	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자			
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
	
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
		
			e.printStackTrace();
		}
		
		String str = "/summernoteImageGoods/"+savedFileName;
		
		log.info("########################str: "+str);
		return str;
	}
	
	@ResponseBody
	@GetMapping("goods_nameCheck.do")
	public String goods_nameCheck(String goods_name) { //굿즈 상품명 중복 체크
		//log.info("#############################################"+goods_name);
		
		Goods goods = service.selectByGoodsName(goods_name);
		if(goods != null) return "exist";
		else return "not_exist";
	}
}	
