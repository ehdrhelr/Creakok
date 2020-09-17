package creakok.com.mapper;



import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Funding;
import creakok.com.domain.Order_Info;
import creakok.com.domain.Funding_payinfo;

public interface PayMapper {
	Funding getFundingCheckoutInfo(@Param(value = "funding_index") long funding_index);
	void insertOneOrder(Order_Info order_info);
	void insertFunding_order(Funding_payinfo funding_payinfo);
}