package creakok.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.LoginResult;
import creakok.com.domain.Member;
import creakok.com.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public Member getMemberInfoS(String member_email) {
		Member member = memberMapper.selectByEmail(member_email);
		member.setMember_password("");
		return member;
	}//end of getMemberInfo
	
	@Override
	public int compareMemberPasswordS(String member_email, String member_password) {
		Member member = memberMapper.selectByEmail(member_email);
		if(member!=null) { //아이디가 있는 경우
			if(member.getMember_password().equals(member_password)) { 
				return LoginResult.LOGIN_OK; //패스워드 맞는 경우
			}else {
				return LoginResult.LOGIN_PASSWORD_FAIL; //패스워드 틀린 경우
			}
		} else { //아이디가 없는 경우
			return LoginResult.LOGIN_EMAIL_NOT_EXIST;
		}
	}//end of compareMemberPassword

}
