package creakok.com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Funding;
import creakok.com.domain.Order_Info;
import creakok.com.domain.Funding_payinfo;

public interface PayService {	
	Funding getFundingCheckoutInfo(long funding_index);
	void insertOneOrder(Order_Info order_info);
	void insertFunding_order(Funding_payinfo funding_payinfo);
	Order_Info selectByOrderIndex(long order_index);
	Funding_payinfo selectByPayinfoIndex(long funding_payinfo_index);
	void deleteOneOrder(long order_index);
	void deleteOneFundingpay(long order_index);
	List<Funding_payinfo> selectByFundingindex(long funding_index);
	void changeFunding_ok(long funding_index);
	void plusGoodsStock(long order_index);
}
