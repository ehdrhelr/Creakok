package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.mapper.AboutMapper;
import creakok.com.mapper.IndexMapper;
import creakok.com.vo.Funding_searchVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexMapper indexMapper;
	
	@Override
	public List<Funding> selectFundingByWdate() {
		List<Funding> funding_by_wdate = indexMapper.selectFundingByWdate();

		for(Funding funding : funding_by_wdate) {
			long category_code = funding.getFunding_category_code();
			funding.setFunding_category_name(indexMapper.selectFundingCategoryN(category_code));
			funding.setPercentage(100.0*funding.getFunding_amount()/funding.getFunding_goal());	
			funding.setRestdays((funding.getFunding_edate().getTime()-funding.getFunding_wdate().getTime())/(1000*60*60*24));
		}	
		return funding_by_wdate;
	}
	
	@Override
	public List<Creator> selectCreator(){
		List<Creator> creator = indexMapper.selectCreator();
		return creator;
	}
	
	@Override
	public List<Goods> selectGoodsByReview(){
		List<Goods> goods = indexMapper.selectGoodsByReview();
		return goods;
	}
	
	@Override
	public List<Creator> selectAllCreator(){
		List<Creator> all_creator = indexMapper.selectAllCreator();
		return all_creator;
	}
	
	@Override
	public List<Creator> selectCreatorBySearch(String creator_name){
		List<Creator> search_creator = indexMapper.selectCreatorBySearch(creator_name);
		
		return search_creator;
	}
	@Override
	public Funding_searchVo getSearchFundingVo(int funding_cp, int funding_ps, String keyword){ //펀딩 검색
		long funding_totalCount = indexMapper.selectFundingCountBySearch(keyword);
		Funding_searchVo funding_searchVo = new Funding_searchVo(funding_cp, funding_totalCount, funding_ps, null, keyword);
		List<Funding> funding_result_list = indexMapper.selectSearchFunding(funding_searchVo);
		
		Funding_searchVo funding_searchVo2 = new Funding_searchVo(funding_cp, funding_totalCount, funding_ps, funding_result_list, keyword);
		funding_searchVo2.setFunding_totalPageCount(funding_searchVo2.calTotalPageCount());
		
		return funding_searchVo2;
	}
	
	@Override
	public long selectFundingCountBySearch(String keyword) { //펀딩 검색결과 총갯수
		return indexMapper.selectFundingCountBySearch(keyword);
	}
}
