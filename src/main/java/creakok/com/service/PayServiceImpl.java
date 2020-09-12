package creakok.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_payinfo;
import creakok.com.mapper.PayMapper;

@Service
public class PayServiceImpl implements PayService {
	@Autowired
	private PayMapper paymapper;
	
	@Override
	public Funding getFundingCheckoutInfo(long funding_index) {
		Funding fundingCheckout = paymapper.getFundingCheckoutInfo(funding_index);
		return fundingCheckout;
	}

	@Override
	public void insertFunding_order(Funding_payinfo funding_payinfo) {
	}

}
