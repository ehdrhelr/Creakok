package creakok.com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.service.AboutService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class AboutController {
	@Autowired
	private AboutService aboutservice;
	
	@RequestMapping("about.do")
	public ModelAndView about_goods(HttpServletRequest request, HttpSession session) {
		// Top 3 펀딩
		List<Funding> temp = aboutservice.selectFundingTop3();
		List<Funding> funding_top3 = new ArrayList<>();
		
		for(Funding list : temp) {
	         //log.info("####:"+lt.getLike_content_index() );
	         double percentageDouble = 100.0*list.getFunding_amount()/list.getFunding_goal();
	         int percentageInt = (int) Math.round(percentageDouble);
	         list.setPercentage(percentageInt);  
	         funding_top3.add(list);
	    }
		// Top 3 굿즈 
		List<Goods> goods_top3 = aboutservice.selectGoodsTop3();
		log.info("###################funding_top3: "+funding_top3);
		// 크리에이터 3
		List<Creator> creator3 = aboutservice.selectCreator3();
		
		// 펀딩프로젝트 / 굿즈 / 크리에이터 수
		long funding_count = aboutservice.selectFundingCount();
		long goods_count = aboutservice.selectGoodsCount();
		long creator_count = aboutservice.selectCreatorCount();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		mv.addObject("goods_top3", goods_top3);
		mv.addObject("funding_top3", funding_top3);
		mv.addObject("creator3", creator3);
		mv.addObject("funding_count", funding_count);
		mv.addObject("goods_count", goods_count);
		mv.addObject("creator_count", creator_count);
		
		return mv;		
	}
	
}
