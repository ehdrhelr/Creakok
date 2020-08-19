package creakok.com.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Funding;
import creakok.com.service.ProjectService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class ProjectController {
	private ProjectService service;
	
	@RequestMapping(value="/project.do", method =RequestMethod.GET)
	public String funding() {
		//return "summernote";
		return "project_select";
	
	}
	
	
	
	@RequestMapping("/fundingwrite_form.do")
	public String fundingwrite_page() {
		return "fundingwrite";
	}
	
	
	@RequestMapping("/fundingwrite.do")
	public ModelAndView fundingwrite(HttpServletRequest request, HttpSession session) {
		
		String write_creator = request.getParameter("write_creator");
	    String write_funding_goal = request.getParameter("write_funding_goal");
	    String write_funding_wdate = request.getParameter("write_funding_wdate");	 
	    String write_funding_edate= request.getParameter("write_funding_edate");
	    String write_funding_subject = request.getParameter("write_funding_subject");
	    String funding_category_code = request.getParameter("funding_category_code");
	    String content = request.getParameter("content");
	   
	   
		System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
		System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
		System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
	    System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
	    
	    System.out.println(funding_category_code);
	    System.out.println(write_creator);
	    System.out.println(write_funding_edate);
	    System.out.println(content);
	    

		System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
		System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
		System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
	    System.out.println("!!!!!!!!!!!!!!!!!!!fundingwrite.do넘어");
	    
	    
	    
	    /*
	    long funding_index;
		String creator_name="subsub";
		String funding_subject="펀딩프로젝트제";
		long funding_category_code=200;
		String funding_repre_pic="/img/funding/a.png";
		String funding_detail_pic="디테일";
		long funding_goal=10000;
		long funding_amount=0;
		Date funding_wdate;
		Date funding_edate;
		long funding_people=0;
		long funding_like_number=0;
		String funding_keyword="";
		String funding_option="";
		String funding_category_name="";
		double percentage=0;
		long restdays=0; 
		List<Funding> listrelatedFunding=null;
		
		
		Funding funding = new Funding(-1,creator_name,funding_subject,funding_category_code,funding_repre_pic,
				 funding_detail_pic,funding_goal,funding_amount,null,null,funding_people,funding_like_number,
	   funding_keyword,funding_option,funding_category_name,percentage,restdays,listrelatedFunding);
				
				
		
		service.writeFundingProject(-1, creator_name, funding_subject, funding_category_code, 
				funding_repre_pic, funding_detail_pic, funding_goal, funding_amount, null, null, 
				funding_people, funding_like_number, funding_keyword, funding_option);
		*/
		return new ModelAndView("/index", "", null);
	}
	
	@RequestMapping("/goodswrite_form.do")
	public String goodswrite() {
		
		return "goodswrite";
	}
	
}