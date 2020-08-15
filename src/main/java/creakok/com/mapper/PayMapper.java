package creakok.com.mapper;



import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Funding;

public interface PayMapper {
	Funding getFundingCheckoutInfo(@Param(value = "funding_index") long funding_index);
}