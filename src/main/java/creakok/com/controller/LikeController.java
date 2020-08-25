package creakok.com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Board;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.domain.LikeTable;
import creakok.com.domain.LikeType;
import creakok.com.service.LikeTableService;
import creakok.com.vo.FundingVo;
import creakok.com.vo.GoodsVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LikeController {

	@Autowired
	private LikeTableService lts;
	
	@ResponseBody
	@PostMapping("clickLike.do")
	public String clickLike(LikeTable likeTable) {
		long tempL = lts.getLikeNumByTypeAndContentIndex(likeTable);
		//log.info("#### tempL:"+tempL);

		if(tempL==0L) {
			lts.setLikeNum(likeTable);
			// 커뮤니티 게시글 하트 클릭 시 해당 게시글 좋아요 컬럼 +1
			if (likeTable.getLike_type_code() == LikeType.COMMUNITY_LIKE) {
				lts.increaseBoardLike(likeTable);
			}
		} else {
			lts.deleteLike(likeTable);
			// 커뮤니티 게시글 하트 취소 시 해당 게시글 좋아요 컬럼 -1
			if (likeTable.getLike_type_code() == LikeType.COMMUNITY_LIKE) {
				lts.decreaseBoardLike(likeTable);				
			}
		}
		return Long.toString(tempL);
	}
	
	@ResponseBody
	@PostMapping("readLike.do")
	public String readLike(LikeTable likeTable) {
		//log.info("#### getLike_content_index:"+likeTable.getLike_content_index() );
		//log.info("#### getLike_type_code:"+likeTable.getLike_type_code() );
		//log.info("#### getLike_member_email:"+likeTable.getLike_member_email() );
		
		long tempL = lts.getLikeNumByTypeAndContentIndex(likeTable);
		//log.info("#### tempL:"+tempL);

		if(tempL==0L) {
			return Long.toString(LikeType.LIKE_NOT_EXIST);
		} else {
			return Long.toString(LikeType.LIKE_EXIST);
		}
		//return Long.toString(tempL);
	}
	
	@GetMapping("readFundingLikeList.do")
	public ModelAndView readFundingLikeList(String member_email) {
		//log.info("####:"+member_email);
		
		LikeTable likeTable = new LikeTable();
		likeTable.setLike_member_email(member_email);
		likeTable.setLike_type_code(LikeType.FUNDING_LIKE);
		
		List<LikeTable> list = lts.getLikeList(likeTable);
		List<Funding> fList = new ArrayList<Funding>();
		
		for(LikeTable lt : list) {
			//log.info("####:"+lt.getLike_content_index() );
			long tempL = lt.getLike_content_index();
			
			Funding tempF = lts.getFundingByIndex(tempL);
			fList.add(tempF);
		}
		
		FundingVo fv = new FundingVo();
		fv.setList(fList);
		
		return new ModelAndView("mypage_funding", "fundingVo", fv);
	}
	
	@GetMapping("readGoodsLikeList.do")
	public ModelAndView readGoodsLikeList(String member_email) {
		//log.info("####:"+member_email);
		
		LikeTable likeTable = new LikeTable();
		likeTable.setLike_member_email(member_email);
		likeTable.setLike_type_code(LikeType.GOODS_LIKE);
		
		List<LikeTable> list = lts.getLikeList(likeTable);
		List<Goods> gList = new ArrayList<Goods>();
		
		for(LikeTable lt : list) {
			//log.info("####:"+lt.getLike_content_index() );
			long tempL = lt.getLike_content_index();
			
			Goods tempF = lts.getGoodsByIndex(tempL);
			gList.add(tempF);
		}
		
		GoodsVo gv = new GoodsVo();
		gv.setList(gList);
		
		return new ModelAndView("mypage_goods", "goods", gv);
	}
	
	@ResponseBody
	@PostMapping("getNewBoardLike") 
	public long getNewBoardLike(LikeTable likeTable) {
		log.info("@@@@@@@@@ likeTable: " + likeTable);
		long boardLikeNum = lts.getNewBoardLike(likeTable);
		log.info("@@@@@@@@@@@@ + boardLikeNum : " + boardLikeNum);
		
		return boardLikeNum;
	}
}
