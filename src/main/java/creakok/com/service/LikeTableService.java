package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.domain.LikeTable;

public interface LikeTableService {
	long getLikeNumByTypeAndContentIndex(LikeTable likeTable);
	long setLikeNum(LikeTable likeTable);
	void deleteLike(LikeTable likeTable);
	
	List<LikeTable> getLikeList(LikeTable likeTable);
	
	Funding getFundingByIndex(long funding_index);
	
	Goods getGoodsByIndex(long goods_index);

	// 하트 클릭시 커뮤니티 게시글에 BOARD_LIKE 컬럼 증/감
	long increaseBoardLike(LikeTable likeTable);
	long decreaseBoardLike(LikeTable likeTable);

	// 증감된 BOARD_LIKE 값을 가져오기 위해
	long getNewBoardLike(LikeTable likeTable);
}
