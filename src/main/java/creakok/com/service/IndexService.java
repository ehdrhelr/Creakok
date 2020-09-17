package creakok.com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.vo.Funding_searchVo;

public interface IndexService {
	List<Funding> selectFundingByWdate();
	List<Creator> selectCreator();
	List<Goods> selectGoodsByReview();
	List<Creator> selectAllCreator();
	List<Creator> selectCreatorBySearch(String creator_name);
	
	Funding_searchVo getSearchFundingVo(int funding_cp, int funding_ps, String keyword);
	long selectFundingCountBySearch(String keyword);
}
