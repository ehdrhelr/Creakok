package creakok.com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Funding;
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

	@RequestMapping("funding_list.do")
	public ModelAndView list(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("funding_cp");
	    String psStr = request.getParameter("funding_ps");
	    String filterBy = request.getParameter("funding_filterBy");	 
	    String categoryName= request.getParameter("funding_categoryName");
	    String funding_indexStr = request.getParameter("funding_index");
	    FundingVo fundingVo = new FundingVo();
	   
	    //(2) cp 
	    int cp = 1;
		if(cpStr == null) {
			Object cpObj = session.getAttribute("funding_cp");
			if(cpObj != null) {
				cp = (Integer)cpObj;
			}
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
		session.setAttribute("funding_cp", cp);
		
		//(2) ps 
		int ps = 3;
		if(psStr == null) {
			Object psObj = session.getAttribute("funding_pageSize");
			if(psObj != null) {
				ps = (Integer)psObj;
				
			}
		}else {
			psStr = psStr.trim();
			int psParam = Integer.parseInt(psStr);
			
			Object psObj = session.getAttribute("funding_pageSize");
			if(psObj != null) {
				int psSession = (Integer)psObj;
				if(psSession != psParam) {
					cp = 1;
					session.setAttribute("funding_cp", cp);
				}
			}else {
				if(ps != psParam) {
					cp = 1;
					session.setAttribute("funding_cp", cp);
				}
			}		
			ps = psParam;
		}
		session.setAttribute("funding_pageSize", ps);
		if(filterBy==null) {
			Object filterByObj = session.getAttribute("funding_filterBy");
			if(filterByObj != null) {
				filterBy = (String)filterByObj;
			}else {
				filterBy="FUNDING_LIKE_NUMBER";
			}
		}else {
			filterBy = filterBy.trim();
		}
		log.info("###########"+filterBy);
		session.setAttribute("funding_filterBy", filterBy);
		
		String categoryBy="200 or funding_category_code=201 or "
				+ "funding_category_code=202 or funding_category_code=203 or funding_category_code=204 or "
				+ "funding_category_code=205 or funding_category_code=206 or funding_category_code=207 or "
				+ "funding_category_code=208 or funding_category_code=209 or funding_category_code=210 or "
				+ "funding_category_code=211 or funding_category_code=212 or funding_category_code=213 or "
				+ "funding_category_code=214 or funding_category_code=215";	
		if(categoryName==null) {
			Object categoryByObj = session.getAttribute("funding_categoryBy");
			Object categoryNameObj = session.getAttribute("funding_categoryName");
			
			if(categoryByObj != null) {
				categoryBy = (String)categoryByObj; 
				categoryName = (String)categoryNameObj;
			}else {
				categoryName = "전체보기";
				session.setAttribute("funding_categoryName", categoryName);
			}
		}else {
			categoryName = categoryName.trim();
		
			if(categoryName.equals("테크/가전")) {
				categoryBy="200";
			}else if(categoryName.equals("패션/잡화")) {
				categoryBy="201";
			}else if(categoryName.equals("뷰티")) {
				categoryBy="202";
			}else if(categoryName.equals("홈리빙")) {
				categoryBy="203";
			}else if(categoryName.equals("디자인소품")) {
				categoryBy="204";
			}else if(categoryName.equals("여행/레저")) {
				categoryBy="205";
			}else if(categoryName.equals("스포츠/모빌리티")) {
				categoryBy="206";
			}else if(categoryName.equals("반려동물")) {
				categoryBy="207";
			}else if(categoryName.equals("모임")) {
				categoryBy="208";
			}else if(categoryName.equals("공연/컬쳐")) {
				categoryBy="209";
			}else if(categoryName.equals("소셜/캠페인")) {
				categoryBy="210";
			}else if(categoryName.equals("교육/키즈")) {
				categoryBy="211";
			}else if(categoryName.equals("게임/취미")) {
				categoryBy="212";
			}else if(categoryName.equals("출판")) {
				categoryBy="213";
			}else if(categoryName.equals("기부/후원")) {
				categoryBy="214";
			}else if(categoryName.equals("전체보기")) {
				categoryBy="200 or funding_category_code=201 or "
						+ "funding_category_code=202 or funding_category_code=203 or funding_category_code=204 or "
						+ "funding_category_code=205 or funding_category_code=206 or funding_category_code=207 or "
						+ "funding_category_code=208 or funding_category_code=209 or funding_category_code=210 or "
						+ "funding_category_code=211 or funding_category_code=212 or funding_category_code=213 or "
						+ "funding_category_code=214 or funding_category_code=215";
			}
		}
		session.setAttribute("funding_categoryBy", categoryBy);
		session.setAttribute("funding_categoryName", categoryName);

		
		fundingVo = service.getFundingVo(cp, ps, filterBy, categoryBy);//카테고리 유즈드 리스트가 전부들어감
		session.setAttribute("funding_categoryNames", fundingVo.getListCategoryUsed());
		log.info(fundingVo.getListCategoryUsed());
	
		
		//(3) ModelAndView
		ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
		
		if(fundingVo.getList().size() ==0 ) {
			if(cp>1) {
				return new ModelAndView("redirect:funding_list.do?funding_cp="+(cp-1));
			}else {
				return new ModelAndView("redirect:funding_list.do", "fundingVo", null);
			}
		}else if(funding_indexStr!=null) {
			
			int funding_indexTogo = Integer.parseInt(funding_indexStr);
			List<Funding> AllListrelatedFunding = new ArrayList<Funding>();
			List<Funding> ListrelatedFunding = new ArrayList<Funding>();	
			long categoryCode = 0L;
			
			for(Funding fundingSelected : fundingVo.getList()) {			
				if(fundingSelected.getFunding_index()==funding_indexTogo) {
					categoryCode = fundingSelected.getFunding_category_code();
				
			
					AllListrelatedFunding = service.getRelatedFunding(categoryCode);	
					Random r = new Random();
					if(AllListrelatedFunding.size()>=4) {
						int a[] = new int[AllListrelatedFunding.size()];
						for(int i=0;i<AllListrelatedFunding.size();i++) {
							a[i]=r.nextInt(AllListrelatedFunding.size());
							for(int j=0; j<i; j++) {
								if(a[i]==a[j]) {
									i--;
								}
							}
						}	
						for(int k=0;k<4;k++) {
							log.info("@@@@@@@@@@@@@@"+k);
							Funding fundingRelated = AllListrelatedFunding.get(a[k]);
							log.info("get(a[k]):" +a[k]);
							ListrelatedFunding.add(fundingRelated);
						}
					}
					
						fundingSelected.setListrelatedFunding(ListrelatedFunding);
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						
						log.info(fundingSelected.getListrelatedFunding());
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
						log.info("!!!!!!!!!!!!!!!!!!!!FundingRElated!!!!!!!!!!!!!!!!!!");
									
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info(fundingSelected);
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					log.info("!!!!!!!!!!!!!!!!!!!!FundingSet!!!!!!!!!!!!!!!!!!");
					
					return new ModelAndView("/funding_detail", "funding_detail", fundingSelected);
				
				}
			}	
			//return new ModelAndView("/funding_detail", "fundingVo", fundingVo);
		}
	  
	     return mv;
	    
	}
	
}

	
