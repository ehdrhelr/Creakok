package creakok.com.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

import creakok.com.domain.Contact;
import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.domain.LikeTable;
import creakok.com.service.CreatorBoardService;
import creakok.com.service.FundingService;
import creakok.com.service.GoodsService;
import creakok.com.service.IndexService;
import creakok.com.service.LikeTableService;
import creakok.com.vo.Funding_searchVo;
import creakok.com.vo.GoodsVo;
import creakok.com.vo.Goods_SearchVo;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
public class IndexController {
	@Autowired
	private CreatorBoardService boardService;
	
	@Autowired
	LikeTableService lts;
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private FundingService fundingService;

	@Autowired
	private IndexService indexService;
	
	@RequestMapping(value="/", method =RequestMethod.GET)
	public ModelAndView index(HttpSession session) {
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("index");
		
		// 상단바 크리에이터 이름 가져오기
		List<Creator> creatorList = boardService.getCreatorName();
		mv.addObject("creatorList", creatorList);
		session.setAttribute("creatorList", creatorList);
		
		// funding 프로젝트 추천(최신 프로젝트)
		List<Funding> funding_list = indexService.selectFundingByWdate();
		mv.addObject("funding_list", funding_list);
		session.setAttribute("funding_list_index", funding_list);
		
		// funding 실시간 랭킹
		List<Funding> temp = indexService.selectFundingByAmount();
		
		List<Funding> funding_ranking = new ArrayList<Funding>();
		for(Funding list : temp) {
	         //log.info("####:"+lt.getLike_content_index() );
	         double percentageDouble = 100.0*list.getFunding_amount()/list.getFunding_goal();
	         int percentageInt = (int) Math.round(percentageDouble);
	         list.setPercentage(percentageInt);  
	         funding_ranking.add(list);
	    }
		session.setAttribute("funding_ranking", funding_ranking);
		
		// 이달의 크리에이터
		List<Creator> creator_list = indexService.selectCreator();
		mv.addObject("creator_list", creator_list);
		
		// 크리에이터 검색(모든 크리에이터)
		List<Creator> all_creator = indexService.selectAllCreator();
		mv.addObject("all_creator", all_creator);
		
		//오늘의 추천 굿즈
		List<Goods> goods_list = indexService.selectGoodsByReview();
		mv.addObject("goods_list", goods_list);
		
		return mv;
	}
	
	@RequestMapping(value="/community", method =RequestMethod.GET)
	public String community() {
		return "community";
	}
	/*
	@RequestMapping(value="/funding", method =RequestMethod.GET)
	public String funding() {
		return "funding";

	}
	 */

	@GetMapping("creakok_header.do")
	public String creakok_header() {
		//log.info("### creakok_header do");
		return "creakok_header";
	}
	
	@GetMapping("creakok_footer.do")
	public String creakok_footer() {
		//log.info("### creakok_header do");
		return "creakok_footer";
	}
	
	@ResponseBody
	@RequestMapping("ranking")
	public List<Goods> ranking(HttpSession session){ //굿즈 실시간랭킹
		List<Goods> goods_ranking = goodsService.selectGoodsRanking();
		session.setAttribute("goods_ranking", goods_ranking);
				
		return goods_ranking;
	}
	
	@ResponseBody
	@RequestMapping("funding_ranking")
	public List<Funding> funding_ranking(HttpSession session){ //굿즈 실시간랭킹
		List<Funding> temp = indexService.selectFundingByAmount();
		List<Funding> funding_ranking = new ArrayList<Funding>();
		for(Funding list : temp) {
	         //log.info("####:"+lt.getLike_content_index() );
	         double percentageDouble = 100.0*list.getFunding_amount()/list.getFunding_goal();
	         int percentageInt = (int) Math.round(percentageDouble);
	         list.setPercentage(percentageInt);  
	         funding_ranking.add(list);
	    }
		session.setAttribute("funding_ranking", funding_ranking);
				
		return funding_ranking;
	}
	
	@RequestMapping("search.do")
	public String search(@RequestParam("keyword") String keyword, HttpServletRequest request, HttpSession session) {
		String funding_cpStr = request.getParameter("funding_cp");
		String funding_keyword = request.getParameter("keyword");
		
		//log.info("#######################cpStr: "+cpStr);
		//log.info("#######################psStr: "+psStr);
		
		Funding_searchVo s_funding_searchVo = (Funding_searchVo)session.getAttribute("funding_searchVo");
		//(1) cp 
		int funding_cp = 1;
		if(funding_cpStr == null) {
			funding_cp = 1;
		}else {
			funding_cpStr = funding_cpStr.trim();
			funding_cp = Integer.parseInt(funding_cpStr);
		}
	//	session.setAttribute("cp", cp);
		
		//(2) ps 
		int funding_ps = 3;		
		Funding_searchVo funding_searchVo = indexService.getSearchFundingVo(funding_cp, funding_ps, keyword);
		funding_searchVo.setFunding_cp(funding_cp);
		funding_searchVo.setFunding_ps(funding_ps);
		funding_searchVo.setKeyword(keyword);
	    
		if(funding_searchVo.getFunding_result_list().size() == 0) {
			if(funding_cp > 1) {	
				int funding_cp2 = funding_cp-1;
				funding_searchVo.setFunding_cp(funding_cp2);
			}
		}
		//log.info("@@@@@@@@@@@@@@@@@@@@@@@@search_goods: "+search_goods);
		session.setAttribute("funding_result", funding_searchVo);
		
		//검색결과 총 갯수
		long funding_result_amount = indexService.selectFundingCountBySearch(funding_keyword);
		session.setAttribute("funding_result_amount", funding_result_amount);
				
		
		
		
		/////////////////////////////////////////////////////////////////////
		///////////////////////////// 굿즈 검색  ////////////////////////////////
		/////////////////////////////////////////////////////////////////////
		
		String cpStr = request.getParameter("cp");
		
		//log.info("#######################cpStr: "+cpStr);
		
		Goods_SearchVo s_goods_searchVo = (Goods_SearchVo)session.getAttribute("goods_result");
		//(1) cp 
		int cp = 1;
		if(cpStr == null) {
				cp = 1;
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
	//	session.setAttribute("cp", cp);
		
		//(2) ps 
		int ps = 3;		
		Goods_SearchVo goods_searchVo = goodsService.getSearchGoodsVo(cp, ps, keyword);
		goods_searchVo.setCp(cp);
		goods_searchVo.setPs(ps);
		goods_searchVo.setKeyword(keyword);
	    
		if(goods_searchVo.getResult_list().size() == 0) {
			if(cp > 1) {	
				int cp2 = cp-1;
				goods_searchVo.setCp(cp2);
			}
		}
		
		//검색결과 총 갯수
		long goods_result_amount = goodsService.selectGoodsCountBySearch(keyword);
		session.setAttribute("goods_result_amount", goods_result_amount);
				
		//log.info("@@@@@@@@@@@@@@@@@@@@@@@@search_goods: "+search_goods);
		session.setAttribute("goods_result", goods_searchVo);
		
		return "search_result";
	}
	
	@PostMapping("index_qna.do")
	public String qna(HttpServletRequest request, HttpSession session) {
		String contact_name = request.getParameter("contact-name");
		String contact_email = request.getParameter("contact-email");
		String contact_subject = request.getParameter("contact-subject");
		String contact_message = request.getParameter("message");
		
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@contact_name: "+contact_name);
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@contact_email: "+contact_email);
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@contact_subject: "+contact_subject);
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@contact_message: "+contact_message);
		
		Contact contact = new Contact(-1, contact_name, contact_email, contact_subject, contact_message, null);
		indexService.insertOneQnA(contact);
		
		return "index";
	}	
}
