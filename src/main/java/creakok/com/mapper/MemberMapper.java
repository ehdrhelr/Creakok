package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Funding_payinfo;
import creakok.com.domain.Member;
import creakok.com.domain.Order_Info;
import creakok.com.vo.Member_FundingPayInfoVo;
import creakok.com.vo.Member_OrderInfoVo;

public interface MemberMapper {
	int updateMemberCategory(Member member);

	Member selectAllByEmail(String member_email);
	Member selectByEmail(String member_email);
	Member selectByName(String member_name);
	String selectMemberOrigin(String member_email);

	void updatePassword(Member member);
	void updateNameByIndex(Member member);
	void updateNameByEmail(Member member);
	
	void insertMember(Member member);
	void deleteMember(String member_email);
	
	void insertSocialMember(Member member);
	List<Order_Info>selectOrderInfo(String member_email);
	long selectOrderCount(String member_email);
	void updateOrderTime(Order_Info order_info);
	Order_Info selectOneOrderInfo(@Param("order_index") long order_index);
	List<Order_Info> selectPerPageOrder(Member_OrderInfoVo order_infoVo);
	long selectOrderCountByEmail(String member_email);
	//펀딩 주문내역 시작
	List<Funding_payinfo>selectPerPageFundingPay(Member_FundingPayInfoVo member_fundingPayInfoVo);
	List<Funding_payinfo>selectFundingPayInfo(String member_email);
	long selectFundingPayCount(String member_email);
	void updateFundingPayTime(Order_Info order_info);
	Funding_payinfo selectFundingPayrInfo(long order_index);
	Member_FundingPayInfoVo selectPerPageFundingPay(int order_cp, int order_ps, String member_email);

	//펀딩 주문내역 끝
} 