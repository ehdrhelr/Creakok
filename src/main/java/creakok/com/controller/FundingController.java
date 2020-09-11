package creakok.com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_qna;
import creakok.com.service.FundingService;
import creakok.com.vo.FundingVo;
import creakok.com.vo.Funding_qnaVo;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
public class FundingController {
	@Autowired
	private FundingService service;
	
	int cp =1;
	int ps =3;
	@RequestMapping("funding_list.do")
	public ModelAndView list(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("funding_cp");
	    String psStr = request.getParameter("funding_ps");
	    String filterBy = request.getParameter("funding_filterBy");	 
	    String categoryName= request.getParameter("funding_categoryName");
	    String funding_indexStr = request.getParameter("funding_index");
	    FundingVo fundingVo = new FundingVo();
	    //(1) cp 
	   cp = 1;
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
		ps = 3;
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
				log.info("테가전 들어옴");
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
		session.setAttribute("fundingVo", fundingVo);
		
		if(fundingVo.getList().size() ==0 ) {
			if(cp>1) {
				return new ModelAndView("redirect:funding_list.do?funding_cp="+(cp-1));
			}else {
				return new ModelAndView("redirect:funding_list.do", "fundingVo", null);
			}
		}
		
			
		//(3) ModelAndView
		ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
		return mv;
	}
		
		@RequestMapping("funding_detail.do")
		public ModelAndView detail(HttpServletRequest request, HttpSession session) {
			
		  
		    String funding_indexStr = request.getParameter("funding_index");
		    String cpStr_qna = request.getParameter("qna_cp");
			int cp_qna = 1;
				if(cpStr_qna == null) {
					Object cp_qnaObj = session.getAttribute("fundingQna_cp");
					if(cp_qnaObj != null) {
						cp_qna = (Integer)cp_qnaObj;
					}
				}else {
					cpStr_qna = cpStr_qna.trim();
					cp_qna = Integer.parseInt(cpStr_qna);
				}
			session.setAttribute("fundingQna_cp", cp_qna);
			FundingVo fundingVo = (FundingVo) session.getAttribute("fundingVo");
	
			if(fundingVo.getList().size() ==0 ) {
				if(cp>1) {
					return new ModelAndView("redirect:funding_list.do?funding_cp="+(cp-1));
				}else {
					return new ModelAndView("redirect:funding_list.do", "fundingVo", null);
				}
			}else if(funding_indexStr!=null) {
				
				long funding_index = Long.parseLong(funding_indexStr);
				List<Funding> AllListrelatedFunding = new ArrayList<Funding>();
				List<Funding> ListrelatedFunding = new ArrayList<Funding>();	
				long categoryCode = 0L;
				
				for(Funding fundingSelected : fundingVo.getList()) {			
					if(fundingSelected.getFunding_index()==funding_index) {
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
								Funding fundingRelated = AllListrelatedFunding.get(a[k]);
								ListrelatedFunding.add(fundingRelated);
							}
						}
						fundingSelected.setListrelatedFunding(ListrelatedFunding);
						long funding_index_qna = fundingSelected.getFunding_index();
						long totalCount_qna = service.getTotalCount_qna(funding_index_qna);
						
						Funding_qnaVo funding_qnaVo_temp = new Funding_qnaVo(funding_index_qna, cp_qna, totalCount_qna, 5, null);
						
						List<Funding_qna> funding_qna_list = service.getFunding_qna(funding_qnaVo_temp);
						funding_qnaVo_temp.setList(funding_qna_list);
						fundingSelected.setFunding_qnaVo(funding_qnaVo_temp);	
						long qna_totalCount = service.getTotalCount_qna(funding_index);
						fundingSelected.setFunding_qna_totalCount(qna_totalCount);
						
						session.setAttribute("funding_detail", fundingSelected);
						return new ModelAndView("/funding_detail", "funding_detail", fundingSelected);
						
				
					}
				}	
			//return new ModelAndView("/funding_detail", "fundingVo", fundingVo);
		}
	  
		ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
		return mv;
	    
	}
	@RequestMapping("funding_qna.do")
	public ModelAndView list_qna(HttpServletRequest request, HttpSession session) {
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		String cpStr_qna = request.getParameter("qna_cp");
		int cp_qna = 1;
				if(cpStr_qna == null) {
					Object cp_qnaObj = session.getAttribute("fundingQna_cp");
					if(cp_qnaObj != null) {
						cp_qna = (Integer)cp_qnaObj;
					}
				}else {
					cpStr_qna = cpStr_qna.trim();
					cp_qna = Integer.parseInt(cpStr_qna);
				}
		session.setAttribute("fundingQna_cp", cp_qna);
				
		long qna_totalCount = service.getTotalCount_qna(funding_index);
		Funding funding = (Funding)session.getAttribute("funding_detail");
		funding.setFunding_qna_totalCount(qna_totalCount);
		Funding_qnaVo funding_qnaVo_temp = new Funding_qnaVo(funding_index, cp_qna, qna_totalCount, 5, null);
		List<Funding_qna> funding_qna_list = service.getFunding_qna(funding_qnaVo_temp);
		log.info("@#@#@#@##");
		log.info(funding_qna_list);
		log.info(funding);
		funding_qnaVo_temp.setList(funding_qna_list);
		funding.setFunding_qnaVo(funding_qnaVo_temp);
		session.setAttribute("funding_detail", funding);
		return new ModelAndView("/funding_qna", "funding_detail", funding);	
	}
	
	@RequestMapping("funding_qna.writeForm")
	public String write_qnaForm(HttpServletRequest request, HttpSession session) {
		 String funding_index = request.getParameter("funding_index");
		 return "/funding_qna_write";
	
	}
	
	@PostMapping("funding_qna.writedo")
	public String write_qna(HttpServletRequest request, HttpSession session) {
		  
	    String funding_indexStr = request.getParameter("!funding_index");
	    long funding_index = Long.parseLong(funding_indexStr);
	    String review_writer = request.getParameter("!funding_qna_writer");
	    String review_subject = request.getParameter("!funding_qna_subject");
	    String review_content = request.getParameter("!funding_qna_content");
	    Funding_qna funding_qna = new Funding_qna(-1, funding_index, review_writer, null, review_content, null, null, null, null, review_subject);
	    service.write_qna(funding_qna);
	   return "redirect:funding_qna.do?funding_index="+funding_index+"#fix_point";
	}
	
	@RequestMapping("funding_qna.detail")
	public ModelAndView detail_qna(HttpServletRequest request, HttpSession session) {

	    String funding_qna_indexStr = request.getParameter("funding_qna_index");
	    String funding_indexStr = request.getParameter("funding_index");
	    long funding_qna_index = Long.parseLong(funding_qna_indexStr);
	    long funding_index = Long.parseLong(funding_indexStr);
	    Funding_qna funding_qna = service.getFunding_qna_detail(funding_qna_index);
	    Funding funding = (Funding)session.getAttribute("funding_detail");
	   // Funding funding = service.getFunding(funding_index);
	    session.setAttribute("funding_qna_detail", funding_qna);
	    ModelAndView mv =  new ModelAndView("/funding_qna_detail", "funding_qna_detail", funding_qna);
	    mv.addObject("funding_detail", funding);
	    
	   
	    return mv;
	}
	
	@RequestMapping("funding_qna.editForm")
	public ModelAndView edit_qnaForm(HttpServletRequest request, HttpSession session) {
		Funding_qna funding_qna = (Funding_qna)session.getAttribute("funding_qna_detail");
		ModelAndView mv =  new ModelAndView("/funding_qna_write_edit", "funding_qna_detail", funding_qna);
		return mv;
	}
	
	@RequestMapping("funding_qna.edit")
	public String edit_qna(HttpServletRequest request, HttpSession session) {
		String funding_qna_indexStr = request.getParameter("funding_qna_index");
		long funding_qna_index = Long.parseLong(funding_qna_indexStr);
		String member_name = request.getParameter("review_writer");
		String funding_qna_subject = request.getParameter("review_subject");
		String funding_qna_content = request.getParameter("review_content");
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		
		Funding_qna funding_qna = new Funding_qna(funding_qna_index, funding_index, member_name, null, funding_qna_content, null, null, null, null, funding_qna_subject);
		service.editQna(funding_qna);
		
		return "redirect:funding_qna.do?funding_index="+funding_index+"#fix_point";
	}
	
	@RequestMapping("funding_qna.answer")
	public String answer_qna(HttpServletRequest request, HttpSession session) {
		String funding_qna_indexStr = request.getParameter("funding_qna_index");
		long funding_qna_index = Long.parseLong(funding_qna_indexStr);
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		String funding_qna_answer = request.getParameter("funding_qna_answer");
		 
		Funding funding = (Funding)session.getAttribute("funding_detail");
		Funding_qna funding_qna = new Funding_qna(funding_qna_index, funding_index, null, null, null,null, funding_qna_answer, funding.getCreator_name(), null, null);
		
		service.answerQna(funding_qna);
		return "redirect:funding_qna.detail?funding_index="+funding_index+"&funding_qna_index="+funding_qna_index+"#fix_point";
	}
	
	@RequestMapping("funding_qna.answerEdit")
	public String answer_qnaEdit(HttpServletRequest request, HttpSession session) {
		String funding_qna_indexStr = request.getParameter("funding_qna_index");
		long funding_qna_index = Long.parseLong(funding_qna_indexStr);
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		String creator_name = request.getParameter("creator_name");
		String answer = request.getParameter("answer");
		Funding_qna funding_qna = new Funding_qna(funding_qna_index, -1, null, null, null, null, answer, creator_name, null, null);

		service.answerEditQna(funding_qna);
		return "redirect:funding_qna.detail?funding_index="+funding_index+"&funding_qna_index="+funding_qna_index+"#fix_point";
		
	}
	@RequestMapping("funding_qna.answerDelete")
	public String answer_qnaDelte(HttpServletRequest request, HttpSession session) {
		String funding_qna_indexStr = request.getParameter("funding_qna_index");
		long funding_qna_index = Long.parseLong(funding_qna_indexStr);
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		String creator_name = request.getParameter("creator_name");
		service.answerDelete(funding_qna_index);
		return "redirect:funding_qna.detail?funding_index="+funding_index+"&funding_qna_index="+funding_qna_index+"#fix_point";
		
	}
	
	
	
}

	
