package creakok.com.service;

import java.util.List;

import creakok.com.domain.Funding_payinfo;
import creakok.com.domain.Member;
import creakok.com.domain.Order_Info;
import creakok.com.vo.Member_FundingPayInfoVo;
import creakok.com.vo.Member_OrderInfoVo;

public interface MemberService {
	
	int setMemberCreator(Member member);
	int setMemberNormal(Member member);
	
	Member getMemberInfoS(String member_email);
	int compareMemberPasswordS(String member_email, String member_password);
	void changeMemberPasswordS(String member_email, String new_password);
	
	void signupMemberS(Member member);
	
	void secessionMemberS(String member_email);
	
	void changeName(Member member);
	Member checkNameExist(String member_name);
	Member checkEmailExist(String member_email);

	void signupSocialMemberS(Member member);
	
	String checkMemberOrigin(String member_email);
	
	List<Order_Info>selectOrderInfo(String member_email);
	long selectOrderCount(String member_email);
	void updateOrderTime(Order_Info order_info);
	Order_Info selectOneOrderInfo(long order_index);
	Member_OrderInfoVo selectPerPageOrder(int order_cp, int order_ps, String member_email);

	//펀딩 주문내역 추가 시작
	long selectFundingPayCount(String member_email);
	List<Funding_payinfo>selectFundingPayInfo(String member_email);
	
	void updateFundingPayTime(Order_Info order_info);
	Funding_payinfo selectFundingPayInfo(long funding_payinfo_index);
	Member_FundingPayInfoVo selectPerPageFundingPay(int order_cp, int order_ps, String member_email);
	//펀딩 주문내역 추가 
}
