package creakok.com.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.service.GoodsService;
import creakok.com.service.Goods_CategoryService;
import creakok.com.vo.GoodsVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class GoodsController {
	@Resource(name="Goods_CategoryService")
	private Goods_CategoryService categoryService;
	
	@Resource(name="GoodsService")
	private GoodsService goodsService;
	
	@RequestMapping("goods_list.do")
	public ModelAndView list(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		String filterBy = request.getParameter("filterBy");
		log.info("dddddddddddddddddddddddddddddddddddd: "+cpStr);
		//(1) cp 
		int cp = 1;
		if(cpStr == null) {
			Object cpObj = session.getAttribute("cp");
			log.info("ffffffffffffffffffffffffffffffffffffffffff: "+cpObj.toString());
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
		session.setAttribute("ps", ps);
		

		 if(filterBy==null) {
	            Object filterByObj = session.getAttribute("filterBy");
	            if(filterByObj != null) {
	               filterBy = (String)filterByObj;
	            }else {
	               filterBy="goods_sale_number";
	            }
	         }else {
	            filterBy = filterBy.trim();
	         }
	   log.info("###########"+filterBy);
	   session.setAttribute("filterBy", filterBy);

	   GoodsVo list = goodsService.getGoodsVo(cp, ps, filterBy);
		
		//굿즈 카테고리
		List<Goods_Category> gCategory = categoryService.listS();
		
		
		if(list.getList().size() ==0 ) {
	         if(cp>1) {
	            return new ModelAndView("redirect:goods_list.do?cp="+(cp-1));
	         }else {
	            return new ModelAndView("redirect:goods_list.do", "goodsVo", null);
	         }
	      }
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods");
		mv.addObject("gCategory", gCategory);
		mv.addObject("goods", list);
		
		return mv;
	}
	
	@ResponseBody
	@PostMapping("gCategory_Sorting")
	public GoodsVo gCategory_Sorting(@RequestBody long gCode, HttpServletRequest request, HttpSession session){
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
	
		//(1) cp 
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
		session.setAttribute("ps", ps);
		log.info("####################gCategory_Sorting gCode: "+gCode);

		GoodsVo goodsVo = categoryService.getGoodsVo(cp, ps, gCode, null);
		goodsVo.setCp(1);
		log.info("QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ: "+goodsVo.getCp());
		//ModelAndView mv = new ModelAndView();
		//mv.setViewName("goods");
 		//mv.addObject("goods", goodsVo);
 		/*
		if(goodsVo.getList().size() ==0 ) {
	         if(cp>1) {
	        	mv.setViewName("goods_list.do?cp="+(cp-1));
	     		mv.addObject("goods", goodsVo);
	      
	         }else {
	        	mv.setViewName("goods_list.do");
		     	mv.addObject("goods", goodsVo);
		        
	         }
	      }
		*/
	
		
		
		session.setAttribute("GoodsCategory", goodsVo);
		return goodsVo;
	}
}
