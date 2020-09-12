package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;

public interface AboutMapper {
	List<Goods> selectGoodsTop3();
	List<Funding> selectFundingTop3();
	List<Creator> selectCreator3();
	long selectFundingCount();
	long selectGoodsCount();
	long selectCreatorCount();
}