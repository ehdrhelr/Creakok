package creakok.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.LoginResult;
import creakok.com.domain.Member;
import creakok.com.domain.Member_category;
import creakok.com.domain.Member_origin;
import creakok.com.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	

	@ResponseBody
	@GetMapping("member_readEmail.do")
	public String readEmail(String member_email) {
		Member member = mService.checkEmailExist(member_email);
		//log.info("###"+member);
		if(member != null) return "exist";
		else return "not_exist";
	}
	
	@ResponseBody
	@GetMapping("member_readName.do")
	public String readName(String member_name) {
		Member member = mService.checkNameExist(member_name);
		//log.info("###"+member);
		if(member != null) return "exist";
		else return "not_exist";
	}
		
	@GetMapping("secessionMember.do")
	public String secessionMember(String member_email, HttpSession session) {
		log.info("### member_email:"+member_email );
		session.removeAttribute("member");
		mService.secessionMemberS(member_email);
		return "index";
	}
	
	
	@PostMapping("member_signup.do")
	public String signup(String member_name, String member_email, String member_password) {
		//log.info("### member_name:"+member_name );
		//log.info("### member_email:"+member_email );
		//log.info("### member_password:"+member_password );
		Member member = new Member();
		member.setMember_category_code(Member_category.MEMBER_NORMAL);
		member.setMember_origin_code(Member_origin.SIGNUP_NORMAL);
		
		member.setMember_name(member_name);
		member.setMember_email(member_email);
		member.setMember_password(member_password);

		mService.signupMemberS(member);
		
		return "login";
	}
	
	@RequestMapping("privacy")
	public String member_privacy() {
		return "privacy";
	}
	
	@RequestMapping("terms-of-use")
	public String terms_of_use() {
		return "terms-of-use";
	}
	
	@RequestMapping("member_serviceAgreements.do")
	public ModelAndView serviceAgreements(String member_name, String member_email, String member_password) {
		ModelAndView mav = new ModelAndView("service-agreements");
		mav.addObject("new_member_name", member_name);
		mav.addObject("new_member_email", member_email);
		mav.addObject("new_member_password", member_password);
		return mav;
	}
	
	@RequestMapping("member_joinwithEmail.do")
	public String joinwithEmail() {
		return "joinwithEmail";
	}
	
	@RequestMapping("member_join.do")
	public String join() {
		return "join";
	}
	
	@GetMapping("member_changePassword.do")
	public String changePassword(String member_email, String new_password, HttpSession session) {
		//log.info("### new_password:"+new_password);
		mService.changeMemberPasswordS(member_email, new_password);
		session.removeAttribute("member");
		return "index";
	}
	
	@ResponseBody
	@GetMapping("member_readPassword.do")
	public String readPassword(String member_email, String member_password) {
		//log.info("### member_email: "+member_email);
		//log.info("### member_password: "+member_password);
		return Integer.toString( mService.compareMemberPasswordS(member_email, member_password) );
		
		//return 0;
	}
	
	@RequestMapping("member_mypage.do")
	public String mypage() {
		return "mypage";
	}


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
			//log.info("### LOGIN_OK");
			//return "index";
			session.setAttribute("member", mService.getMemberInfoS(member_email) );
			return "redirect:/";

		} else if(result==LoginResult.LOGIN_PASSWORD_FAIL) {
			//log.info("### LOGIN_PASSWORD_FAIL");
			return "redirect:member_login.do";

		} else if(result==LoginResult.LOGIN_EMAIL_NOT_EXIST) {
			//log.info("### LOGIN_EMAIL_NOT_EXIST");
			return "redirect:member_login.do";
		} 
		return "index";
	}//end of login
	
	
}
