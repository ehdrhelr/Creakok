package creakok.com.mapper;

import creakok.com.domain.Member;

public interface MemberMapper {
	
	Member selectByEmail(String member_email);
	void updatePassword(Member member);
}
