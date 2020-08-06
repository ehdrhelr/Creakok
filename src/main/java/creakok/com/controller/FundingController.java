package creakok.com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Funding_category;
import creakok.com.service.FundingService;
import creakok.com.vo.FundingVo;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@AllArgsConstructor
@Controller
public class FundingController {
	
	private FundingService service;
	/*
	@RequestMapping(value="/list", method =RequestMethod.GET)
	public String funding() {
		return "funding";
	}
	
	*/
	@RequestMapping("funding_list.do")
	public ModelAndView list(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("cp");
	    String psStr = request.getParameter("ps");
	    String filterBy = request.getParameter("filterBy");
	    String categoryBy = request.getParameter("cb");
	  
	    //(2) cp 
	    int cp = 1;
		if(cpStr == null) {
			Object cpObj = session.getAttribute("cp");
			if(cpObj != null) {
				cp = (Integer)cpObj;
			}
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
		session.setAttribute("cp", cp);
		
		//(2) ps 
		int ps = 3;
		if(psStr == null) {
			Object psObj = session.getAttribute("ps");
			if(psObj != null) {
				ps = (Integer)psObj;
			}
		}else {
			psStr = psStr.trim();
			int psParam = Integer.parseInt(psStr);
			
			Object psObj = session.getAttribute("ps");
			if(psObj != null) {
				int psSession = (Integer)psObj;
				if(psSession != psParam) {
					cp = 1;
					session.setAttribute("cp", cp);
				}
			}else {
				if(ps != psParam) {
					cp = 1;
					session.setAttribute("cp", cp);
				}
			}		
			ps = psParam;
		}
		session.setAttribute("pageSize", ps);
		log.info("###########"+ps); 
		
		
			if(filterBy==null) {
				Object filterByObj = session.getAttribute("filterBy");
				if(filterByObj != null) {
					filterBy = (String)filterByObj;
				}else {
					filterBy="FUNDING_LIKE_NUMBER";
				}
			}else {
				filterBy = filterBy.trim();
			}
			log.info("###########"+filterBy);
			session.setAttribute("filterBy", filterBy);
		
		
		
		//(3) ModelAndView
		FundingVo fundingVo = service.getFundingVo(cp, ps, filterBy, categoryBy);
		
		List<Funding_category> list_funding_category = service.getFunding_category();
		session.setAttribute("list_funding_category", list_funding_category);
			
		ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
		if(fundingVo.getList().size() ==0 ) {
			if(cp>1) {
				return new ModelAndView("redirect:list.do?cp="+(cp-1));
			}else {
				return new ModelAndView("redirect:list.do", "FundingVo", null);
			}
		}
	     return mv;
	}
		
}
	
