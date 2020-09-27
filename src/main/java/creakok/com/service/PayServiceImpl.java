package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Funding;
import creakok.com.domain.Order_Info;
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
	public void insertOneOrder(Order_Info order_info) {
		paymapper.insertOneOrder(order_info);
	}
	@Override
	public void insertFunding_order(Funding_payinfo funding_payinfo) {
		paymapper.insertFunding_order(funding_payinfo);
	}
	
	@Override
	public Order_Info selectByOrderIndex(long order_index) {
		Order_Info order_info = paymapper.selectByOrderIndex(order_index);
		
		return order_info;
	}
	
	@Override
	public void deleteOneOrder(long order_index) {
		paymapper.deleteOneOrder(order_index);
	}
	@Override
	public Funding_payinfo selectByPayinfoIndex(long funding_payinfo_index) {
		return paymapper.selectByPayinfoIndex(funding_payinfo_index);
	}
	@Override
	public void deleteOneFundingpay(long order_index) {
		paymapper.deleteOneFundingpay(order_index);
		
	}
	@Override
	public List<Funding_payinfo> selectByFundingindex(long funding_index) {
		return paymapper.selectByFundingindex(funding_index);
	}
	@Override
	public void changeFunding_ok(long funding_index) {
		paymapper.changeFunding_ok(funding_index);
		
	}
}
