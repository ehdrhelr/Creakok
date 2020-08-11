package creakok.com.service;

import java.util.List;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_category;
import creakok.com.vo.FundingVo;


public interface FundingService {
	FundingVo getFundingVo(int currentPage, int pageSize, String filterBy, String categoryBy);
	Funding getFunding(long funding_index);
	FundingVo getFundingVoByFilter(String filter, int currentPage, int pageSize);
	FundingVo getFundingVoByKeyword(String keyword, int currentPage, int pageSize);
	void write(Funding funding);
	void edit(Funding funding);
	void remove(long funding_index);
	List<Funding_category> getFunding_category();
	
}
