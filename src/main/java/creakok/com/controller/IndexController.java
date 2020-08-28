package creakok.com.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Creator;
import creakok.com.service.CreatorBoardService;
import creakok.com.service.LikeTableService;
import lombok.extern.log4j.Log4j;


@Log4j
@Controller
public class IndexController {
	
	@Autowired
	private CreatorBoardService boardService;
	
	@Autowired
	LikeTableService lts;
	
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
		return "test";
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
}
