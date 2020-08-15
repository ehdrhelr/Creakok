package creakok.com.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.service.GoodsDetailService;
import creakok.com.service.GoodsService;
import creakok.com.service.Goods_CategoryService;
import creakok.com.vo.GoodsVo;
import creakok.com.vo.PayInfoVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class GoodsController {
	@Resource(name="Goods_CategoryService")
	private Goods_CategoryService goods_categoryService;
	
	@Resource(name="GoodsService")
	private GoodsService goodsService;
	
	@Resource(name="GoodsDetailService")
	private GoodsDetailService goods_detailService;
	
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
		List<Goods_Category> gCategory = goods_categoryService.listS();
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
			if(gCodeStr == null) {
			//	gCodeStr = "300";
				Object select_gCodeObj = tempGoods.getGCode();
				if(select_gCodeObj != null) {
					gCodeStr = select_gCodeObj.toString();
				}else {
					gCodeStr = "300";
				}
			}
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
				if(gCodeStr == null) {
					//	gCodeStr = "300";
						Object select_gCodeObj = tempGoods.getGCode();
						if(select_gCodeObj != null) {
							gCodeStr = select_gCodeObj.toString();
						}else {
							gCodeStr = "300";
						}
					} 
	     }

		
		if( gCodeStr.equals("300") || gCodeStr == null ) { //카테고리 코드=300 (전체보기) 일때
			long gCode = Long.parseLong(gCodeStr);
			log.info("@@@@@@@@@@@@@@@@@@@@@@@@filterBy: "+filterBy);
			log.info("@@@@@@@@@@@@@@@@@@@@@@@@cp: "+cp);
			log.info("@@@@@@@@@@@@@@@@@@@@@@@@ps: "+ps);
			log.info("#######################gCodeStr: "+gCodeStr);
			log.info("#######################gCode: "+gCode);
		    GoodsVo goodsVo = goodsService.listS(cp, ps, filterBy); //전체리스트 뽑아오고
		    goodsVo.setCp(cp); //cp랑 이것저것 세팅해쥼
		    goodsVo.setPs(ps);
		    goodsVo.setFilterBy(filterBy);
		    goodsVo.setGCode(gCode);
		    
			if(goodsVo.getList().size() == 0) {
				if(cp > 1) {	
					int cp2 = cp-1;
					goodsVo.setCp(cp2);
				}
			}
			
			
			session.setAttribute("goods", goodsVo);

			
		} else if( !gCodeStr.equals("300") )  { //다른 카테고리 코드일때
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
			
			
			
			
			
			
			if(list.getList().size() == 0) {
				if(cp > 1) {	
					int cp2 = cp-1;
					list.setCp(cp2);
				}
			}   
			session.setAttribute("goods", list);
		}

		return "goods";
	}
	
	
	@RequestMapping("goods_detail.do")
	public ModelAndView goods_detail(HttpServletRequest request) {
		String goods_indexStr = request.getParameter("goods_index");
		long goods_index = Long.parseLong(goods_indexStr);
		
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$ goods_index: "+goods_index);
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$ one_goods: "+one_goods);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods_details");
		mv.addObject("one_goods", one_goods);	
		
		return mv;
	}
	@RequestMapping("goods_order.do")
	public ModelAndView goods_order(@RequestParam(name="price_amount") long price_amount, @RequestParam(name="product_name") String product_name, @RequestParam(name="product_price") long product_price, @RequestParam(name="qty") long qty) {
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&price_amount: "+price_amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_price: "+product_price);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&qty: "+qty);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("checkout");
		mv.addObject("price_amount", price_amount);
		mv.addObject("product_name", product_name);
		mv.addObject("product_price", product_price);
		mv.addObject("product_qty", qty);
		
		return mv;		
	}	
	@RequestMapping("goods_pay.do")
	public ModelAndView goods_pay(HttpServletRequest request) {
		String delivery_name = request.getParameter("delivery_name");
		String delivery_phone = request.getParameter("delivery_phone");
		String address_num = request.getParameter("address_num");
		String address_road = request.getParameter("address_road");
		String address_detail = request.getParameter("address_detail");
		String address_land = request.getParameter("address_land");
		
		String price_amount = request.getParameter("price_amount");
		String product_qty = request.getParameter("product_qty");
		String product_name = request.getParameter("product_name");
		String email =  request.getParameter("email");
		     
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&name: "+delivery_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&delivery_phone: "+delivery_phone);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_num: "+address_num);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_road: "+address_road);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_detail: "+address_detail);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&address_land: "+address_land);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&price_amount: "+price_amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_qty: "+product_qty);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		
		PayInfoVo payInfo = new PayInfoVo();
		payInfo.setDelivery_name(delivery_name);
		payInfo.setDelivery_phone(delivery_phone);
		payInfo.setAddress_num(address_num);
		payInfo.setAddress_road(address_road);
		payInfo.setAddress_detail(address_detail);
		payInfo.setAddress_land(address_land);
		payInfo.setPrice_amount(price_amount);
		payInfo.setProduct_qty(product_qty);
		payInfo.setProduct_name(product_name);
		payInfo.setEmail(email);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("import_pay");
		mv.addObject("payInfo", payInfo);	
		
		return mv;
	}
}
