package creakok.com.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Funding_payinfo;
import creakok.com.domain.Funding_qna;
import creakok.com.domain.Goods;
import creakok.com.service.FundingService;
import creakok.com.service.PayService;
import creakok.com.vo.FundingVo;
import creakok.com.vo.Funding_qnaVo;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
public class FundingController {
	@Autowired
	private FundingService service;
	
	@Autowired
	private PayService payservice;
	
	int cp =1;
	int ps =3;
	
	//fundingVo sortig 메소드분리함
	public FundingVo fundingVo(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("funding_cp");
	    String psStr = request.getParameter("funding_ps");
	    String filterBy = request.getParameter("funding_filterBy");	 
	    String categoryName= request.getParameter("funding_categoryName");
	    FundingVo fundingVo = new FundingVo();
	    //(1) cp 
	   cp = 1;
		if(cpStr == null) {
			/*
			Object cpObj = session.getAttribute("funding_cp");
			if(cpObj != null) {
				cp = (Integer)cpObj;
			*/
			cp=1;
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
		if(filterBy.equals("FUNDING_EDATE")) { //마감일순은 as 이용해야하므로 따로 분류 sorting
			fundingVo = service.getFundingByEdate(cp, ps, filterBy, categoryBy);
		}else {
			fundingVo = service.getFundingVo(cp, ps, filterBy, categoryBy);
		}
		
		
		//펀딩 마감일 지난 펀딩들
		List<Funding> fundingListCheck = service.selectPerPageFinished();
		log.info(fundingListCheck);
		for(Funding funding : fundingListCheck) {
			double percentageDouble = 100.0*funding.getFunding_amount()/funding.getFunding_goal();
			int percentageInt = (int) Math.round(percentageDouble);
			funding.setPercentage(percentageInt);		
			
			funding.setRestdays((funding.getFunding_edate().getTime()-System.currentTimeMillis())/(1000*60*60*24));
			
			//목표금 도달한 펀딩 찾아서 funding_payinfo 펀딩 진행여부 변경
			if(funding.getPercentage()>=100) {
				long funding_index = funding.getFunding_index();
				payservice.changeFunding_ok(funding_index);
				List<Funding_payinfo> funding_payinfoList = payservice.selectByFundingindex(funding_index);
				for(Funding_payinfo funding_payinfo : funding_payinfoList) {
					funding_payinfo.setFunding_ok("true");
				}
			}
		}
		
		session.setAttribute("funding_categoryNames", fundingVo.getListCategoryUsed());
		session.setAttribute("fundingVo", fundingVo);
		return fundingVo;
	}
	
	@RequestMapping("funding_list.do")
	public ModelAndView list(HttpServletRequest request, HttpSession session) {
		FundingVo fundingVo = fundingVo(request, session);
		session.setAttribute("funding_categoryNames", fundingVo.getListCategoryUsed());
		session.setAttribute("fundingVo", fundingVo);
		if(fundingVo.getList().size() ==0 ) {
			if(cp>1) {
				return new ModelAndView("redirect:funding_list.do?funding_cp="+(cp-1));
			}else {
				ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
				return mv;
			}
		}
		ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
		return mv;
	}
	
	@RequestMapping("funding_detail.do")
	public ModelAndView detail(HttpServletRequest request, HttpSession session) {
	    String funding_indexStr = request.getParameter("funding_index");
	    
		//크리에이터 프로필 이미지
	    long funding_index2 = Long.parseLong(funding_indexStr);
	    Funding funding = service.getFunding(funding_index2);
		String creator_name = funding.getCreator_name();
		String creator_profile_photo = service.getCreatorProfilPhoto(creator_name);
		session.setAttribute("creator_profile_photo", creator_profile_photo);
		
		FundingVo fundingVo = (FundingVo) session.getAttribute("fundingVo");
		
			if(funding_indexStr!=null) {
				long funding_index = Long.parseLong(funding_indexStr);
				Funding fundingSelected = service.getFunding(funding_index);
				long categoryCode = fundingSelected.getFunding_category_code();
				
				List<Funding> AllListrelatedFunding = service.getRelatedFunding(categoryCode);
				List<Funding> ListrelatedFunding = new ArrayList<Funding>();
				//Related Fundings 같은 카테고리 펀딩 랜덤 추출
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
				//Related Fundings 셋팅완료
				fundingSelected.setFunding_category_name(service.selectCategoryName(categoryCode));
				fundingSelected.setCreator_profil_content(service.getCreatorProfilContent(fundingSelected.getCreator_name()));
				long qna_totalCount = service.getTotalCount_qna(funding_index);
				fundingSelected.setFunding_qna_totalCount(qna_totalCount);
				//session.setAttribute("qna_totalCount", qna_totalCount);
				session.setAttribute("funding_detail", fundingSelected);
				return new ModelAndView("/funding_detail", "funding_detail", fundingSelected);
			}else {
				ModelAndView mv = new ModelAndView("/funding", "fundingVo", fundingVo);
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
		
		//QnA 글 번호
		long list_number;
		for(int i=0; i<funding_qna_list.size(); i++) {
			list_number = funding_qnaVo_temp.getTotalCount() - ((funding_qnaVo_temp.getCurrentPage()-1)*funding_qnaVo_temp.getPageSize())-i;
			
			funding_qna_list.get(i).setList_number(list_number);
		}		
		
		funding_qnaVo_temp.setList(funding_qna_list);
		funding.setFunding_qnaVo(funding_qnaVo_temp);
		

		
		session.setAttribute("funding_detail", funding);
		session.setAttribute("qna_totalCount", qna_totalCount);
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
	    
	    Funding_qna funding_qna = new Funding_qna(-1, funding_index, review_writer, null, review_content, null, null, null, null, review_subject, -1);
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
	    
	    //문의글 번호
	    String list_number = request.getParameter("list_number");
	    mv.addObject("list_number", list_number);
	    
	   
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
		
		Funding_qna funding_qna = new Funding_qna(funding_qna_index, funding_index, member_name, null, funding_qna_content, null, null, null, null, funding_qna_subject, -1);
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
		Funding_qna funding_qna = new Funding_qna(funding_qna_index, funding_index, null, null, null,null, funding_qna_answer, funding.getCreator_name(), null, null, -1);
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
		Funding_qna funding_qna = new Funding_qna(funding_qna_index, -1, null, null, null, null, answer, creator_name, null, null, -1);

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
	@RequestMapping("funding_about.do")
	public ModelAndView about(HttpServletRequest request, HttpSession session) {
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		long qna_totalCount = service.getTotalCount_qna(funding_index);
		Funding funding = (Funding)session.getAttribute("funding_detail");
		funding.setFunding_qna_totalCount(qna_totalCount);
		
		java.util.Date funding_edate_payment = service.getFunding_edate_payment(funding_index);
		int yearPayment = funding_edate_payment.getYear()-100;
		int monthPayment = funding_edate_payment.getMonth()+1;
		int datePayment = funding_edate_payment.getDate();
		String funding_datePayment = "20"+yearPayment+"년 " + monthPayment + "월 "+ datePayment+"일 ";
		
		java.util.Date funding_edate_cancel = service.getFunding_edate_cancel(funding_index);
		int yearCancel = funding_edate_cancel.getYear()-100;
		int monthCancel = funding_edate_cancel.getMonth()+1;
		int dateCancel = funding_edate_cancel.getDate();
		String funding_dateCancel = "20"+yearCancel+"년 " + monthCancel + "월 "+ dateCancel+"일 ";
		
		session.setAttribute("aboutpay_date", funding_datePayment);
		session.setAttribute("aboutcancel_date", funding_dateCancel);
		session.setAttribute("funding_detail", funding);
		return new ModelAndView("/funding_about", "funding_detail", funding);	
	}
	@RequestMapping("funding_qna.delete")
	public String qnaDelte(HttpServletRequest request, HttpSession session) {
		String funding_qna_indexStr = request.getParameter("funding_qna_index");
		long funding_qna_index = Long.parseLong(funding_qna_indexStr);
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		//String creator_name = request.getParameter("creator_name");
		service.qnaDelete(funding_qna_index);
		return "redirect:funding_qna.do?funding_index="+funding_index+"#fix_point";
		
	}
	
	
}

	
