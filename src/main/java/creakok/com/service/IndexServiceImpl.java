package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.mapper.AboutMapper;
import creakok.com.mapper.IndexMapper;
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
}
