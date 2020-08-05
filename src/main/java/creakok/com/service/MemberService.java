package creakok.com.service;

import creakok.com.domain.Member;

public interface MemberService {
	Member getMemberInfoS(String member_email);
	int compareMemberPasswordS(String member_email, String member_password);
}
