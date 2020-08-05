package creakok.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import creakok.com.domain.LoginResult;
import creakok.com.domain.Member;
import creakok.com.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

	@RequestMapping("member_logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("member");
		return "index";
	}

	
	@GetMapping("member_login.do")
	public String login(HttpSession session) {
		session.removeAttribute("member");
		return "login";
	}
	
	@PostMapping("member_login.do")
	public String login(String member_email, String member_password, HttpSession session) {

		int result = mService.compareMemberPasswordS(member_email, member_password);
		if(result==LoginResult.LOGIN_OK) {
			log.info("### LOGIN_OK");
			session.setAttribute("member", mService.getMemberInfoS(member_email) );
//			return "index";
			return "redirect:/";

		} else if(result==LoginResult.LOGIN_PASSWORD_FAIL) {
			log.info("### LOGIN_PASSWORD_FAIL");
			return "redirect:member_login.do";

		} else if(result==LoginResult.LOGIN_EMAIL_NOT_EXIST) {
			log.info("### LOGIN_EMAIL_NOT_EXIST");
			return "redirect:member_login.do";
		} 
		return "index";
	}//end of login
	
	
}
