package creakok.com.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String list(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		String gCodeStr = request.getParameter("gCode");
		String filterByStr = request.getParameter("filterBy");
		
		log.info("#######################filterBy: "+filterByStr);
		log.info("#######################cpStr: "+cpStr);
		log.info("#######################psStr: "+psStr);
		log.info("#######################gCodeStr: "+gCodeStr);	

		
		//굿즈 카테고리 리스팅
		List<Goods_Category> gCategory = categoryService.listS();
		session.setAttribute("gCategory", gCategory);	
		
		
		GoodsVo tempGoods = (GoodsVo)session.getAttribute("goods");
		//(1) cp 
		int cp = 1;
		if(cpStr == null) {
			Object cpObj = tempGoods.getCp();
			if(cpObj != null) {
				cp = (Integer)cpObj;
			} else {
				cp = 1;
			}
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
	//	session.setAttribute("cp", cp);
		
		//(2) ps 
		int ps = 3;		
		if(psStr == null) {
			//Object psObj = session.getAttribute("ps");
			Object psObj = tempGoods.getPs();
			if(psObj != null) {
				ps = (Integer)psObj;
			} else {
				ps = 3;
			}
		}else { 
			psStr = psStr.trim();
			ps = Integer.parseInt(psStr);
		}
		
	
		 String filterBy = "goods_sale_number";
		 if(filterByStr==null) {
	            Object filterByObj = tempGoods.getFilterBy();
	            if(filterByObj != null) {
	            	filterBy = (String)filterByObj;
	            }else {
	            	filterBy="goods_sale_number";
	            }
	     }else {
	            filterBy = filterByStr.trim();
	     }

		
		if( gCodeStr == null ) { //카테고리 코드 없을때
			log.info("#######################filterBy: "+filterBy);
			log.info("#######################cp: "+cp);
			log.info("#######################ps: "+ps);
		    GoodsVo goodsVo = goodsService.listS(cp, ps, filterBy);
		    goodsVo.setCp(cp);
		    goodsVo.setPs(ps);
		    goodsVo.setFilterBy(filterBy);
		   
		    
		    goodsVo.setGCode(0);
			if(goodsVo.getList().size() == 0) {
				if(cp > 1) {	
					int cp2 = cp-1;
					goodsVo.setCp(cp2);
				}
			}
			session.setAttribute("goods", goodsVo);

			
		} else if( gCodeStr != null )  { //카테고리 코드 있을때    
			long gCode = Long.parseLong(gCodeStr);
			
			log.info("#######################g filterBy: "+filterBy);
			log.info("#######################g cp: "+cp);
			log.info("#######################g ps: "+ps);
			log.info("#######################g gCode: "+gCode);	
			
			GoodsVo list = goodsService.getGoodsVo(cp, ps, gCode, filterBy);
			list.setCp(cp);
			list.setPs(ps);
			list.setFilterBy(filterBy);
			list.setGCode(gCode);
			   
			session.setAttribute("goods", list);
		}

		return "goods";
	}
	
	

}
