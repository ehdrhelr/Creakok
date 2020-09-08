package creakok.com.service;

import creakok.com.domain.Funding;
import creakok.com.domain.Order_Info;

public interface PayService {	
	Funding getFundingCheckoutInfo(long funding_index);
	void insertOneOrder(Order_Info order_info);
}
