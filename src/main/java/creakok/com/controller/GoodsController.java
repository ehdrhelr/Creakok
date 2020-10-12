package creakok.com.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.domain.Goods_QnA;
import creakok.com.domain.Goods_Review;
import creakok.com.domain.Order_Info;
import creakok.com.filesetting.Path;
import creakok.com.service.CreatorBoardService;
import creakok.com.service.GoodsDetailService;
import creakok.com.service.GoodsQnAService;
import creakok.com.service.GoodsReviewService;
import creakok.com.service.GoodsService;
import creakok.com.service.Goods_CategoryService;
import creakok.com.service.MemberService;

import creakok.com.vo.GoodsVo;
import creakok.com.vo.Goods_QnAVo;
import creakok.com.vo.Goods_ReviewVo;
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

	@Resource(name="GoodsReviewService")
	private GoodsReviewService goods_reviewservice;
	
	@Resource(name="GoodsQnAService")
	private GoodsQnAService goods_qnaservice;
	
	@Autowired
	private CreatorBoardService creatorBoardService;

	@Autowired
	private MemberService memberservice;

	private List<Goods> makeRelatedGoodsList(long goods_index, List<Goods> related_goods, Random r){
		List<Goods> four_goods = new ArrayList<Goods>();

		for(int j=0; j<related_goods.size(); j++) {
			Goods g = related_goods.get(j);
			if(g.getGoods_index() == goods_index) {
				related_goods.remove(j);
			}
		}

		if(related_goods.size()>=1) {
			int a[] = new int[related_goods.size()];
			for(int i=0;i<related_goods.size();i++) {
				a[i]=r.nextInt(related_goods.size());
				for(int j=0; j<i; j++) {
					if(a[i]==a[j]) {
						i--;
					}
				}
			}	
			for(int k=0;k<related_goods.size();k++) {
				Goods related_goods2 = related_goods.get(a[k]);
				four_goods.add(related_goods2);
			}
		}
		return four_goods;
	}
	
	@RequestMapping("goods_list.do")
	public ModelAndView list(HttpServletRequest request, HttpSession session) {
		String cpStr = request.getParameter("cp");
		String psStr = request.getParameter("ps");
		String gCodeStr = request.getParameter("gCode");
		String filterByStr = request.getParameter("goods_filterBy");
		
		log.info("#######################filterBy: "+filterByStr);
		log.info("#######################cpStr: "+cpStr);
		log.info("#######################psStr: "+psStr);
		log.info("#######################gCodeStr: "+gCodeStr);	

		
		//굿즈 카테고리 리스팅
		List<Goods_Category> gCategory = goods_categoryService.listS();
		session.setAttribute("gCategory", gCategory);	
		
		
		//GoodsVo tempGoods = (GoodsVo)session.getAttribute("goods");
		//(1) cp 
		int cp = 1;
		if(cpStr == null) {
			//Object cpObj = tempGoods.getCp();
			Object cpObj = session.getAttribute("goods_cp");
			if(cpObj != null) {
				cp = (Integer)cpObj;
			} else if(cpObj == null){
				cp = 1;
			}
		}else {
			cpStr = cpStr.trim();
			cp = Integer.parseInt(cpStr);
		}
		session.setAttribute("goods_cp", cp);
		
		//(2) ps 
		int ps = 3;		
		if(psStr == null) {
			//Object psObj = tempGoods.getPs();
			Object psObj = session.getAttribute("goods_ps");
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
				Object select_gCodeObj = session.getAttribute("gCode");
				//Object select_gCodeObj = tempGoods.getGCode();
				if(select_gCodeObj != null) {
					gCodeStr = select_gCodeObj.toString();
				}else {
					gCodeStr = "300";
				}
			}
		}
		 session.setAttribute("goods_ps", ps);
	
		 String filterBy = "goods_sale_number";
		 if(filterByStr==null) {
	            //Object filterByObj = tempGoods.getFilterBy();
			 	Object filterByObj = session.getAttribute("filterBy");
	            if(filterByObj != null) {
	            	filterBy = (String)filterByObj;
	            }else {
	            	filterBy="goods_sale_number";
	            }
	     }else {
	            filterBy = filterByStr.trim();
				if(gCodeStr == null) {
					//	gCodeStr = "300";
						//Object select_gCodeObj = tempGoods.getGCode();
						Object select_gCodeObj = session.getAttribute("gCode");
						if(select_gCodeObj != null) {
							gCodeStr = select_gCodeObj.toString();
						}else {
							gCodeStr = "300";
						}
					} 
	     }
		 session.setAttribute("goods_filterBy", filterBy);

		
		if( gCodeStr.equals("300") || gCodeStr == null ) { //카테고리 코드=300 (전체보기) 일때
			long gCode = Long.parseLong(gCodeStr);
			//log.info("@@@@@@@@@@@@@@@@@@@@@@@@filterBy: "+filterBy);
			//log.info("@@@@@@@@@@@@@@@@@@@@@@@@cp: "+cp);
			//log.info("@@@@@@@@@@@@@@@@@@@@@@@@ps: "+ps);
			//log.info("#######################gCodeStr: "+gCodeStr);
			//log.info("#######################gCode: "+gCode);
		    GoodsVo goodsVo = goodsService.listS(cp, ps, filterBy); //전체리스트 뽑아오고
		    goodsVo.setCp(cp); //cp랑 이것저것 세팅해쥼
		    goodsVo.setPs(ps);
		    goodsVo.setFilterBy(filterBy);
		    goodsVo.setGCode(gCode);
		    
			if(goodsVo.getList().size() == 0) {
				if(cp > 1) {	
					int cp2 = cp-1;
					goodsVo.setCp(cp2);
					//return new ModelAndView("goods_list.do?cp="+cp2+"&gCode="+gCode);
				} else {
					//return new ModelAndView("goods_list.do?cp="+cp+"&gCode="+gCode);
				}
			}
			
			session.setAttribute("gCode", gCode);
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
			session.setAttribute("gCode", gCode);
			session.setAttribute("goods", list);
		}

		
		//(3) ModelAndView
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods");
		return mv;
	}
	
	
	@RequestMapping("goods_detail.do")
	public ModelAndView goods_detail(HttpServletRequest request) {
		String goods_indexStr = request.getParameter("goods_index");
		long goods_index = Long.parseLong(goods_indexStr);
		long review_size = goods_reviewservice.selectGoodsReviewCountByGoodsIndex(goods_index);
		long qna_list_size = goods_qnaservice.selectGoodsQnACountByGoodsIndex(goods_index);
		
		//굿즈 정보, 크리에이터 정보
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		log.info("??????????????????????????????????goods_index: "+goods_index);
		log.info("???????????????????????????????????one_goods: "+one_goods);
		String creator_name = one_goods.getCreator_name();
		Creator goods_creator = creatorBoardService.getContentByCreator(creator_name);
		
		//카테고리 이름
		long category_code = one_goods.getGoods_category_code();
		String category_name = goods_categoryService.selectGoodsCategoryName(category_code);
		
		//관련 상품
		List<Goods> related_goods = goodsService.getRelatedGoods(category_code);
		Random r = new Random();
		List<Goods> four_goods = makeRelatedGoodsList(goods_index, related_goods, r);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods_details");
		mv.addObject("one_goods", one_goods);
		mv.addObject("review_size", review_size);
		mv.addObject("category_name", category_name);
		mv.addObject("four_goods", four_goods);
		mv.addObject("creator", goods_creator);
		mv.addObject("qna_list_size", qna_list_size);
		
		return mv;
	}



	@RequestMapping("goods_order.do")
	public ModelAndView goods_order(@RequestParam(name="price_amount") long price_amount, @RequestParam(name="product_name") String product_name, @RequestParam(name="product_price") long product_price, @RequestParam(name="qty") long qty) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("checkout");
		mv.addObject("price_amount", price_amount);
		mv.addObject("product_name", product_name);
		mv.addObject("product_price", product_price);
		mv.addObject("product_qty", qty);
		
		return mv;		
	}	

	
	@RequestMapping("goods_review.do")
	public String goods_review(HttpServletRequest request, HttpSession session) {
		String review_cp = request.getParameter("review_cp");
		String review_ps = request.getParameter("review_ps");
		String goods_indexStr = request.getParameter("goods_index");
		
		//String category_name = request.getParameter("category_name");
		long goods_index = Long.parseLong(goods_indexStr);
		
		//카테고리 이름 갖고오기
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		long category_code = one_goods.getGoods_category_code();
		String category_name = goods_categoryService.selectGoodsCategoryName(category_code);
		
		String creator_name = one_goods.getCreator_name();
		Creator goods_creator = creatorBoardService.getContentByCreator(creator_name);
		session.setAttribute("creator", goods_creator);
		
		session.setAttribute("category_name", category_name);
		session.setAttribute("one_goods", one_goods);
		
		
		Goods_ReviewVo goods_review_vo = (Goods_ReviewVo)session.getAttribute("goods_review");
		//(1) cp 
		int cp = 1;
		if(review_cp == null) {
			Object cpObj = goods_review_vo.getReview_cp();
			if(cpObj != null) {
				cp = (Integer)cpObj;
			} else if(cpObj == null) {
				cp = 1;
			}
		}else {
			review_cp = review_cp.trim();
			cp = Integer.parseInt(review_cp);
		}
		
		//(2) ps 
		int ps = 5;		
		
		
		Goods_ReviewVo review_list = goods_reviewservice.selectPerPageReview(cp, ps, goods_index);
		review_list.setReview_cp(cp);
		review_list.setReview_ps(ps);
		review_list.setGoods_index(goods_index);
		
		if(review_list.getReview_list().size() == 0) {
			if(cp > 1) {	
				int cp2 = cp-1;
				review_list.setReview_cp(cp2);
			}
		}   
		session.setAttribute("review", review_list);
		
		//연관 굿즈 추천
		List<Goods> related_goods = goodsService.getRelatedGoods(category_code);
		Random r = new Random();
		List<Goods> four_goods = makeRelatedGoodsList(goods_index, related_goods, r);

		session.setAttribute("four_goods", four_goods);
		
		long review_size = goods_reviewservice.selectGoodsReviewCountByGoodsIndex(goods_index);
		session.setAttribute("review_size", review_size);
		
		long qna_list_size = goods_qnaservice.selectGoodsQnACountByGoodsIndex(goods_index);
		session.setAttribute("qna_list_size", qna_list_size);
		
		return "goods_review_board";
	}
	
	@RequestMapping("goods_review_write.do")
	public ModelAndView goods_review_write(HttpServletRequest request) {
		String goods_indexStr = request.getParameter("goods_index");
		String category_name = request.getParameter("category_name");
		long goods_index = Long.parseLong(goods_indexStr);
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ goods_index(): "+goods_index);
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ goods_index(): "+category_name);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goodswrite");
		mv.addObject("goods_index", goods_index);
		mv.addObject("category_name", category_name);
		mv.addObject("one_goods", one_goods);
		
		return mv;
	}	

	@RequestMapping("goods_one_review.do")
	public ModelAndView goods_one_review(HttpServletRequest request) {
		String goods_indexStr = request.getParameter("goods_index");
		String goods_review_indexStr = request.getParameter("goods_review_index");
		long goods_index = Long.parseLong(goods_indexStr);
		long goods_review_index = Long.parseLong(goods_review_indexStr);
		String gName = goodsService.selectGoodsName(goods_index);
		boolean flag = goods_reviewservice.updateReviewViews(goods_review_index);
		long review_size = goods_reviewservice.selectGoodsReviewCountByGoodsIndex(goods_index);
		String category_name = request.getParameter("category_name");
		String list_number = request.getParameter("list_number");
		
		//log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@: "+goods_review_index);
		//log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@: "+gName);
		Goods_ReviewVo review = goods_reviewservice.selectPerPageReview(1, 5, goods_index);
		Goods_Review one_review = goods_reviewservice.selectOneReview(goods_review_index);
		
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		String creator_name = one_goods.getCreator_name();
		long category_code = one_goods.getGoods_category_code();
		Creator goods_creator = creatorBoardService.getContentByCreator(creator_name);
		
		
		Goods_QnAVo qna_list = goods_qnaservice.selectPerPageQnA(1, 5, goods_index);
		int qna_list_size = qna_list.getQna_list().size();
		
		List<Goods> related_goods = goodsService.getRelatedGoods(category_code);
		Random r = new Random();
		List<Goods> four_goods = makeRelatedGoodsList(goods_index, related_goods, r);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods_review_one");
		mv.addObject("one_goods", one_goods);	
		mv.addObject("review_size", review_size);
		mv.addObject("goods_name", gName);
		mv.addObject("review", review);
		mv.addObject("one_review", one_review);
		mv.addObject("category_name", category_name);
		mv.addObject("creator", goods_creator);
		mv.addObject("qna_list_size", qna_list_size);
		mv.addObject("four_goods", four_goods);
		mv.addObject("list_number", list_number);
		
		
		return mv;
	}
	@RequestMapping("goods_review_delete.do")
	public ModelAndView goods_review_delete(HttpServletRequest request) {
		String goods_review_indexStr = request.getParameter("goods_review_index");
		long goods_review_index = Long.parseLong(goods_review_indexStr);
		String goods_indexStr = request.getParameter("goods_index");
		long goods_index = Long.parseLong(goods_indexStr);
		
		goods_reviewservice.deleteOneReview(goods_review_index);
		long goods_review_count = goods_reviewservice.selectGoodsReviewCountByGoodsIndex(goods_index);
		
		// 굿즈에 리뷰 수 업데이트
		goods_reviewservice.updateReviewNumber(goods_review_count, goods_index);
		
		int cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:goods_review.do");
		mv.addObject("goods_index", goods_index);
		mv.addObject("review_cp", cp);
		
		return mv;
	}
	@RequestMapping("goods_review_insert.do")
	public ModelAndView goods_review_insert(HttpServletRequest request) {
		String review_ratingStr = request.getParameter("review_rating");
		long review_rating = Long.parseLong(review_ratingStr);
		String review_writer  = request.getParameter("review_writer"); 
		String review_subject = request.getParameter("review_subject");
		String goods_name = request.getParameter("goods_name");
		String review_content = request.getParameter("review_content");
		String goods_indexStr = request.getParameter("goods_index");
		long goods_index = Long.parseLong(goods_indexStr);
		//log.info("############################################# goods_indexStr: "+goods_indexStr);
		
		Goods_Review goods_review = new Goods_Review(-1, review_writer, goods_index, null, review_rating, null, review_subject, review_content, null, 0, -1);
		
		goods_reviewservice.insertOneReview(goods_review);
		
		long goods_review_count = goods_reviewservice.selectGoodsReviewCountByGoodsIndex(goods_index);
		// 굿즈에 리뷰 수 업데이트
		goods_reviewservice.updateReviewNumber(goods_review_count, goods_index);
		log.info("????????????????????????????????????: "+goods_review_count);
		
		int cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:goods_review.do");
		mv.addObject("goods_index", goods_index);
		mv.addObject("review_cp", cp);
		
		return mv;
	}
	@RequestMapping("goods_review_update_form.do")
	public ModelAndView goods_review_update_form(HttpServletRequest request) {
		String review_ratingStr = request.getParameter("review_rating");
		long review_rating = Long.parseLong(review_ratingStr);
		String goods_review_indexStr = request.getParameter("goods_review_index");
		String goods_indexStr = request.getParameter("goods_index");
		long goods_review_index = Long.parseLong(goods_review_indexStr);
		long goods_index = Long.parseLong(goods_indexStr);
		String gName = goodsService.selectGoodsName(goods_index);
		
		Goods_Review one_review = goods_reviewservice.selectOneReview(goods_review_index);
		//log.info("##########################################################review_rating: "+review_rating);
		//log.info("##########################################################one_review: "+one_review);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goodsupdate");
		mv.addObject("one_review", one_review);
		mv.addObject("goods_name", gName);
		
		return mv;
	}
	@RequestMapping("goods_review_update.do")
	public ModelAndView goods_review_update(HttpServletRequest request) {
		String goods_review_indexStr = request.getParameter("goods_review_index");
		long goods_review_index = Long.parseLong(goods_review_indexStr);
		String goods_indexStr = request.getParameter("goods_index");
		long goods_index = Long.parseLong(goods_indexStr);
		
		String review_subject = request.getParameter("review_subject");
		String review_content = request.getParameter("review_content");
		Goods_Review goods_review = new Goods_Review(goods_review_index, null, goods_index, null, -1, null, review_subject, review_content, null, 0, -1);
				
		goods_reviewservice.updateOneReview(goods_review);
		
		int cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:goods_review.do#fix_point");
		mv.addObject("goods_index", goods_index);
		mv.addObject("review_cp", cp);
		
		return mv;
	}
	
	@RequestMapping("goods_qna.do")
	public String goods_qna(HttpServletRequest request, HttpSession session) {
		String qna_cp = request.getParameter("qna_cp");
		String qna_ps = request.getParameter("qna_ps");
		String goods_indexStr = request.getParameter("goods_index");
		//String category_name = request.getParameter("category_name");
		long goods_index = Long.parseLong(goods_indexStr);
		
		//카테고리 이름 갖고오기
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		long category_code = one_goods.getGoods_category_code();
		String category_name = goods_categoryService.selectGoodsCategoryName(category_code);
		session.setAttribute("category_name", category_name);
		session.setAttribute("one_goods", one_goods);
		
		//크리에이터 정보 갖고오기
		String creator_name = one_goods.getCreator_name();
		Creator goods_creator = creatorBoardService.getContentByCreator(creator_name);
		session.setAttribute("creator", goods_creator);
		
		long review_size = goods_reviewservice.selectGoodsReviewCountByGoodsIndex(goods_index);
		session.setAttribute("review_size", review_size);
		
		Goods_QnAVo goods_qna_vo = (Goods_QnAVo)session.getAttribute("goods_qna");
		//(1) cp 
		int cp = 1;
		if(qna_cp == null) {
			Object cpObj = goods_qna_vo.getQna_cp();
			if(cpObj != null) {
				cp = (Integer)cpObj;
			} else {
				cp = 1;
			}
		}else {
			qna_cp = qna_cp.trim();
			cp = Integer.parseInt(qna_cp);
		}
		
		//(2) ps 
		int ps = 5;		
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ cp: "+cp);
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ ps: "+ps);
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ goods_index: "+goods_index);
		Goods_QnAVo qna_list = goods_qnaservice.selectPerPageQnA(cp, ps, goods_index);
		qna_list.setQna_cp(cp);
		qna_list.setQna_ps(ps);
		qna_list.setGoods_index(goods_index);
		//log.info("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ qna_list: "+qna_list);
		if(qna_list.getQna_list().size() == 0) {
			if(cp > 1) {	
				int cp2 = cp-1;
				qna_list.setQna_cp(cp2);
			}
		}   
		
		session.setAttribute("qna_list", qna_list);
		
		long qna_list_size = goods_qnaservice.selectGoodsQnACountByGoodsIndex(goods_index);
		session.setAttribute("qna_list_size", qna_list_size);
		
				
		List<Goods> related_goods = goodsService.getRelatedGoods(category_code);
		Random r = new Random();
		List<Goods> four_goods = makeRelatedGoodsList(goods_index, related_goods, r);

		session.setAttribute("four_goods", four_goods);
		
		return "goods_qna_board";
	}	
	
	@RequestMapping("goods_one_qna.do")
	public ModelAndView goods_one_qna(HttpServletRequest request) {
		String goods_indexStr = request.getParameter("goods_index");
		String goods_qna_indexStr = request.getParameter("goods_qna_index");
		long goods_index = Long.parseLong(goods_indexStr);
		long goods_qna_index = Long.parseLong(goods_qna_indexStr);
		String qna_list_number = request.getParameter("qna_list_number");
		
		//카테고리이름
		String category_name = request.getParameter("category_name");
		
		//qna 1개 정보
		Goods_QnA one_qna = goods_qnaservice.selectOneQnA(goods_qna_index);
		
		//크리에이터 정보 & 판매하는 굿즈 정보
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		String creator_name = one_goods.getCreator_name();
		long category_code = one_goods.getGoods_category_code();
		Creator goods_creator = creatorBoardService.getContentByCreator(creator_name);
		
		//qna_list 사이즈
		long qna_list_size = goods_qnaservice.selectGoodsQnACountByGoodsIndex(goods_index);
		
		//관련 굿즈 리스트
		List<Goods> related_goods = goodsService.getRelatedGoods(category_code);
		Random r = new Random();
		List<Goods> four_goods = makeRelatedGoodsList(goods_index, related_goods, r);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods_qna_one");
		mv.addObject("one_goods", one_goods);	
		mv.addObject("one_qna", one_qna);
		mv.addObject("category_name", category_name);
		mv.addObject("creator", goods_creator);
		mv.addObject("qna_list_size", qna_list_size);
		mv.addObject("four_goods", four_goods);
		mv.addObject("qna_list_number", qna_list_number);
		
		return mv;
	}
	@RequestMapping("goods_qna_write_form.do")
	public ModelAndView goods_qna_write(HttpServletRequest request) {
		String goods_indexStr = request.getParameter("goods_index");
		long goods_index = Long.parseLong(goods_indexStr);
			
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		String goods_name = one_goods.getGoods_name();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods_qnawrite");
		mv.addObject("one_goods", one_goods);
		
		return mv;
	}
	@RequestMapping("goods_qna_insert.do")
	public ModelAndView goods_qna_insert(HttpServletRequest request) {
		String goods_qna_writer = request.getParameter("qna_writer");
		String goods_qna_subject = request.getParameter("qna_subject");
		String goods_qna_content = request.getParameter("qna_content");
		String goods_indexStr = request.getParameter("goods_index");
		String creator_name = request.getParameter("creator_name");
		long goods_index = Long.parseLong(goods_indexStr);
				
		Goods_QnA goods_qna = new Goods_QnA(-1, goods_index, goods_qna_writer, null, null, goods_qna_subject, goods_qna_content, creator_name, null, null, -1);
		goods_qnaservice.insertOneQnA(goods_qna);
			
		int qna_cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:goods_qna.do");
		mv.addObject("goods_index", goods_index);
		mv.addObject("qna_cp", qna_cp);
			
		return mv;
	}
	@RequestMapping("goods_qna_update_form.do")
	public ModelAndView goods_qna_update_form(HttpServletRequest request) {
		String goods_qna_indexStr = request.getParameter("goods_qna_index");
		String goods_indexStr = request.getParameter("goods_index");
		long goods_qna_index = Long.parseLong(goods_qna_indexStr);
		long goods_index = Long.parseLong(goods_indexStr);
			
		Goods_QnA one_qna = goods_qnaservice.selectOneQnA(goods_qna_index);
		Goods one_goods = goods_detailService.getGoodsDetail(goods_index);
		String goods_name = one_goods.getGoods_name();
		
		int cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("goods_qnaupdate");
		mv.addObject("one_qna", one_qna);
		mv.addObject("goods_name", goods_name);
		mv.addObject("qna_cp", cp);
		
		return mv;
	}
		@RequestMapping("goods_qna_update.do")
		public ModelAndView goods_qna_update(HttpServletRequest request) {
			String goods_qna_indexStr = request.getParameter("goods_qna_index");
			String goods_indexStr = request.getParameter("goods_index");
			String goods_qna_content = request.getParameter("goods_qna_content");
			String goods_qna_subject = request.getParameter("goods_qna_subject");
			long goods_qna_index = Long.parseLong(goods_qna_indexStr);
			long goods_index = Long.parseLong(goods_indexStr);
			
			
			Goods_QnA goods_qna = new Goods_QnA(goods_qna_index, goods_index, null, null, null, goods_qna_subject, goods_qna_content, null, null, null, -1);
			goods_qnaservice.updateOneQnA(goods_qna);
			
			int cp = 1;
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:goods_qna.do");
			mv.addObject("goods_index", goods_index);
			mv.addObject("qna_cp", cp);
			
			return mv;
		}	
	@RequestMapping("goods_qna_delete.do")
	public ModelAndView goods_qna_delete(HttpServletRequest request) {
		String goods_qna_indexStr = request.getParameter("goods_qna_index");
		String goods_indexStr = request.getParameter("goods_index");
		long goods_qna_index = Long.parseLong(goods_qna_indexStr);
		long goods_index = Long.parseLong(goods_indexStr);
			
		goods_qnaservice.deleteOneQnA(goods_qna_index);
			
		int cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:goods_qna.do");
		mv.addObject("goods_index", goods_index);
		mv.addObject("goods_qna_index", goods_qna_index);
		mv.addObject("qna_cp", cp);
			
		return mv;
	}	
	@PostMapping("goods_qna_answer_insert.do")
	public ModelAndView goods_qna_answer_insert(HttpServletRequest request) {
		String goods_qna_indexStr = request.getParameter("goods_qna_index");
		String goods_indexStr = request.getParameter("goods_index");
		String goods_qna_answer = request.getParameter("answer");
		String category_name = request.getParameter("category_name");
		
		long goods_qna_index = Long.parseLong(goods_qna_indexStr);
		long goods_index = Long.parseLong(goods_indexStr);
		
		Goods_QnA goods_qna = new Goods_QnA(goods_qna_index, goods_index, null, null, null, null, null, null, goods_qna_answer, null, -1);

		goods_qnaservice.updateOneAnswer(goods_qna);
		
		int cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:goods_one_qna.do");
		mv.addObject("goods_index", goods_index);
		mv.addObject("goods_qna_index", goods_qna_index);
		mv.addObject("category_name", category_name);
		mv.addObject("qna_cp", cp);
		
		return mv;
	}
	@RequestMapping("goods_qna_answer_delete.do")
	public ModelAndView goods_qna_answer_delete(HttpServletRequest request) {
		String goods_qna_indexStr = request.getParameter("goods_qna_index");
		String goods_indexStr = request.getParameter("goods_index");
		String category_name = request.getParameter("category_name");
		long goods_qna_index = Long.parseLong(goods_qna_indexStr);
		long goods_index = Long.parseLong(goods_indexStr);
		
		goods_qnaservice.deleteOneAnswer(goods_qna_index);
		
		int cp = 1;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:goods_one_qna.do");
		mv.addObject("goods_index", goods_index);
		mv.addObject("goods_qna_index", goods_qna_index);
		mv.addObject("category_name", category_name);
		mv.addObject("qna_cp", cp);
		
		return mv;
	}
	
	@RequestMapping("delete_goods.do")
	public String delete_goods(HttpServletRequest request) {
		String goods_indexStr = request.getParameter("goods_index");
		long goods_index = Long.parseLong(goods_indexStr);
		
		goodsService.deleteOneGoods(goods_index);
		
		return "redirect:goods_list.do?cp=1&ps=3&filterBy=goods_sale_number&gCode=300";
	}
	
}