package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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
}
