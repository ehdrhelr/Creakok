package creakok.com.controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Creator;
import creakok.com.service.BoardService;

@Controller
public class IndexController {
	
	@Resource
	private BoardService boardService;
	
	@RequestMapping(value="/", method =RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv  = new ModelAndView();
		mv.setViewName("index");
		
		// ũ�������� �̸� ���
		List<Creator> creatorList = boardService.getCreatorName();
		mv.addObject("creatorList", creatorList);
		
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

}
