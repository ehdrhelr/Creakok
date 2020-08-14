package creakok.com.service;

import creakok.com.domain.Member;

public interface MemberService {
	Member getMemberInfoS(String member_email);
	int compareMemberPasswordS(String member_email, String member_password);
	void changeMemberPasswordS(String member_email, String new_password);
	
	void signupMemberS(Member member);
	
	void secessionMemberS(String member_email);
	
	Member checkNameExist(String member_name);
	Member checkEmailExist(String member_email);

}