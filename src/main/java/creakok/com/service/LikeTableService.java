package creakok.com.service;

import java.util.List;

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

}
