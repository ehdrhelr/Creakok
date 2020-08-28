package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Board;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.domain.LikeTable;

public interface LikeTableMapper {
	long selectByTypeAndContentIndex(LikeTable likeTable);
	long insertLikeTable(LikeTable likeTable);
	void deleteLike(LikeTable likeTable);
	
	List<LikeTable> selectByTypeCodeAndEmail(LikeTable likeTable);
	
	Funding selectByFundingIndex(@Param("funding_index") long funding_index);
	
	Goods selectByGoodsIndex(@Param("goods_index") long goods_index);
	
	// 하트 클릭시 커뮤니티 게시글에 BOARD_LIKE 컬럼 증/감
	long increaseBoardLike(LikeTable likeTable);
	long decreaseBoardLike(LikeTable likeTable);
	
	// 증감된 BOARD_LIKE 값을 가져오기 위해
	long getNewBoardLike(LikeTable likeTable);
	
}
