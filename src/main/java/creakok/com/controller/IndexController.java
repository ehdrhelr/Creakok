package creakok.com.controller;
import java.io.IOException;
import java.io.PrintWriter;
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

import creakok.com.domain.Creator;
import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.service.CreatorBoardService;
import creakok.com.service.GoodsService;
import creakok.com.service.LikeTableService;
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
	
	@RequestMapping(value="/", method =RequestMethod.GET)
	public ModelAndView index(HttpSession session) {
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("index");
		
		// 상단바 크리에이터 이름 가져오기
		List<Creator> creatorList = boardService.getCreatorName();
		mv.addObject("creatorList", creatorList);
		session.setAttribute("creatorList", creatorList);
		
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
	
	@RequestMapping("about.do")
	public String about() {
		return "about";
	}

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
	
	@RequestMapping("search.do")
	public String search(@RequestParam("keyword") String keyword, HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		
		log.info("#######################cpStr: "+cpStr);
		log.info("#######################psStr: "+psStr);
		
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
}
