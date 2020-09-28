package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Contact;
import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.vo.Funding_searchVo;

public interface IndexMapper {
	List<Funding> selectFundingByWdate();
	String selectFundingCategoryN(@Param("category_code") long category_code);
	List<Creator> selectCreator();
	List<Goods> selectGoodsByReview();
	List<Creator> selectAllCreator();
	List<Creator> selectCreatorBySearch(@Param("creator_name") String creator_name);
	List<Funding> selectSearchFunding(Funding_searchVo funding_searchVo);
	long selectFundingCountBySearch(@Param("keyword") String keyword);
	List<Funding> selectFundingByAmount(); 
	void insertOneQnA(Contact contact);
}