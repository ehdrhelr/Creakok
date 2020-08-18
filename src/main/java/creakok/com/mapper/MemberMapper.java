package creakok.com.mapper;

import creakok.com.domain.Member;

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

}
