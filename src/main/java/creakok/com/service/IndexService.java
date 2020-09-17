package creakok.com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;

public interface IndexService {
	List<Funding> selectFundingByWdate();
	List<Creator> selectCreator();
	List<Goods> selectGoodsByReview();
	List<Creator> selectAllCreator();
	List<Creator> selectCreatorBySearch(String creator_name);
}
