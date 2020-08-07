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
	    String categoryBy = request.getParameter("categoryBy");
	    log.info("$$$$$$$$$$$$$$$$$$$$$$"+categoryBy);
	    FundingVo fundingVo = new FundingVo();
	   
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
			
			if(categoryBy==null) {
				//Object categoryByObj = session.getAttribute("categoryBy");
				//if(categoryByObj != null) {
				//	categoryBy = (String)categoryByObj;
				//}else {
					
			
					categoryBy="200 or funding_category_code=201 or "
							+ "funding_category_code=202 or funding_category_code=203 or funding_category_code=204 or "
							+ "funding_category_code=205 or funding_category_code=206 or funding_category_code=207 or "
							+ "funding_category_code=208 or funding_category_code=209 or funding_category_code=210 or "
							+ "funding_category_code=211 or funding_category_code=212 or funding_category_code=213 or "
							+ "funding_category_code=214 or funding_category_code=215";
							
						
					fundingVo = service.getFundingVo(cp, ps, filterBy, categoryBy);//카테고리 유즈드 리스트가 전부들어감
					session.setAttribute("list_funding_category", fundingVo.getListCategoryUsed());
			//	}
			}else {
				if(categoryBy.equals("테크/가전")) {
					categoryBy="200";
				}else if(categoryBy.equals("패션/잡화")) {
					categoryBy="201";
				}else if(categoryBy.equals("뷰티")) {
					categoryBy="202";
				}else if(categoryBy.equals("홈리빙")) {
					categoryBy="203";
				}else if(categoryBy.equals("디자인소품")) {
					categoryBy="204";
				}else if(categoryBy.equals("여행/레저")) {
					categoryBy="205";
				}else if(categoryBy.equals("스포츠/모빌리티")) {
					categoryBy="206";
				}else if(categoryBy.equals("반려동물")) {
					categoryBy="207";
				}else if(categoryBy.equals("모임")) {
					categoryBy="208";
				}else if(categoryBy.equals("공연/컬쳐")) {
					categoryBy="209";
				}else if(categoryBy.equals("소셜/캠페인")) {
					categoryBy="210";
				}else if(categoryBy.equals("교육/키즈")) {
					categoryBy="211";
				}else if(categoryBy.equals("게임/취미")) {
					categoryBy="212";
				}else if(categoryBy.equals("출판")) {
					categoryBy="213";
				}else if(categoryBy.equals("기부/후원")) {
					categoryBy="214";
				}
				
				fundingVo = service.getFundingVo(cp, ps, filterBy, categoryBy);//카테고리 유즈드 리스트가 전부들어감
				//session.setAttribute("list_funding_category", fundingVo.getListCategoryUsed());
				
			}
			log.info("###########"+categoryBy);
			session.setAttribute("categoryBy", categoryBy);
		
		
		
		//(3) ModelAndView
		//FundingVo fundingVo = service.getFundingVo(cp, ps, filterBy, categoryBy);//카테고리 유즈드 리스트가 전부들어감
		
		//List<Funding_category> list_funding_category = service.getFunding_category();
		//session.setAttribute("list_funding_category", fundingVo.getListCategoryUsed());
			
		ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
		if(fundingVo.getList().size() ==0 ) {
			if(cp>1) {
				return new ModelAndView("redirect:funding_list.do?cp="+(cp-1));
			}else {
				return new ModelAndView("redirect:funding_list.do", "FundingVo", null);
			}
		}
	     return mv;
	}
		
}
	
