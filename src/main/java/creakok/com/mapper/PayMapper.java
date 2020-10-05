package creakok.com.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Funding;
import creakok.com.domain.Order_Info;
import creakok.com.domain.Funding_payinfo;

public interface PayMapper {
	Funding getFundingCheckoutInfo(@Param(value = "funding_index") long funding_index);
	void insertOneOrder(Order_Info order_info);
	void insertFunding_order(Funding_payinfo funding_payinfo);
	Order_Info selectByOrderIndex(@Param(value = "order_index") long order_index);
	void deleteOneOrder(@Param(value = "order_index") long order_index);
	Funding_payinfo selectByPayinfoIndex(@Param(value = "funding_payinfo_index") long funding_payinfo_index);
	void deleteOneFundingpay(@Param(value = "order_index") long order_index);
	List<Funding_payinfo> selectByFundingindex(@Param(value = "funding_index") long funding_index);
	void changeFunding_ok(@Param(value = "funding_index") long funding_index);
	void plusGoodsStock(@Param(value = "order_index") long order_index);
}