package creakok.com.service;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_payinfo;

public interface PayService {	
	Funding getFundingCheckoutInfo(long funding_index);
	void insertFunding_order(Funding_payinfo funding_payinfo);
}
