package creakok.com.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import creakok.com.domain.Member;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberTests {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Test
	public void testSelectByEmail() {
		try {
			//Member member = memberMapper.selectByEmail("a@a.com");
			Member member = memberMapper.selectByEmail("z@a.com");
			log.info("### member");
			log.info("### name:"+member.getMember_name() );
			log.info("### profile pic:"+member.getMember_profile_pic() );
		} catch(Exception e) {
			e.printStackTrace();
			//없는 아이디인 경우에는 null이 반환된다.
		}
	}
	
	//@Test
	public void testCompareMemberPassword() {
		String member_password = "asdf";
		Member member = memberMapper.selectByEmail("a@a.com");
		if(member.getMember_password().equals(member_password)) {
			log.info("### return true");
		}else {
			log.info("### return false");
		}
	}
}
