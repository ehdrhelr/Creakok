package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_category;
import creakok.com.vo.FundingVo;

public interface FundingMapper {
	List<Funding> selectPerPage(FundingVo fundingVo);
	long selectCount();
	//Funding selectBySeq(long funding_index);
	//List<Funding> selectByWriter(FundingVo fundingVo);
	//void write(Funding funding);
	//void update(Funding funding);
	//void remove(long funding_index);
	List<Funding_category> getFunding_category();
	String selectPerPageCategory(Funding funding);
}