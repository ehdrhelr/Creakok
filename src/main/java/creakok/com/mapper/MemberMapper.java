package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Member;
import creakok.com.domain.Order_Info;

public interface MemberMapper {
	
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
}
