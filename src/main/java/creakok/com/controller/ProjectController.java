package creakok.com.controller;

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
		return "makeProject";
	
	}
	
	
	
	@RequestMapping("/projectwrite.do")
	public ModelAndView fundingwrite(HttpServletRequest request, HttpSession session) {
		/*
		String fundingWriter = request.getParameter("fundingWriter");
	    String psStr = request.getParameter("funding_ps");
	    String filterBy = request.getParameter("funding_filterBy");	 
	    String categoryName= request.getParameter("funding_categoryName");
	    String funding_indexStr = request.getParameter("funding_index");
	    */
		
	
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
		String funding_keyword=null;
		String funding_option=null;
		String funding_category_name=null;
		double percentage=0;
		long restdays=0; 
		List<Funding> listrelatedFunding=null;
		
		Funding funding = new Funding(-1, creator_name, funding_subject, funding_category_code, funding_repre_pic,
				funding_detail_pic, funding_goal, funding_amount, null, null, funding_people,funding_like_number, funding_keyword, 
				funding_option, null, -1, -1, null);
		
		service.writeFundingProject(-1, creator_name, funding_subject, funding_category_code, 
				funding_repre_pic, funding_detail_pic, funding_goal, funding_amount, null, null, 
				funding_people, funding_like_number, funding_keyword, funding_option);
		
		return new ModelAndView("/index", "", null);
	}
}