package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;

public interface IndexMapper {
	List<Funding> selectFundingByWdate();
	String selectFundingCategoryN(@Param("category_code") long category_code);
	List<Creator> selectCreator();
	List<Goods> selectGoodsByReview();
	List<Creator> selectAllCreator();
	List<Creator> selectCreatorBySearch(@Param("creator_name") String creator_name);
}