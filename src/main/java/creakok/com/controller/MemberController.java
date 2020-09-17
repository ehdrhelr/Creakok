package creakok.com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import creakok.com.domain.Order_Info;
import creakok.com.kakao.KakaoLogin;
import creakok.com.service.MemberService;
import creakok.com.vo.Goods_ReviewVo;
import creakok.com.vo.Member_OrderInfoVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	
	
	@ResponseBody
	@GetMapping("member_readMemberOrign.do")
	public String readMemberOrign(String member_email) {
		return mService.checkMemberOrigin(member_email);
	}	
	
	
	@RequestMapping("findPassword.do")
	public String findPassword() {
		return "findPassword";
	}
	
	@RequestMapping("socialLoginFail.do")
	public String socialLoginFail() {
		return "socialLoginFail";
	}
	

	@ResponseBody
	@GetMapping("member_readEmail.do")
	public String readEmail(String member_email) {
		Member member = mService.checkEmailExist(member_email);
		//log.info("###"+member);
		if(member != null) return "exist";
		else return "not_exist";
	}
	
	@GetMapping("member_changeName.do")
	public String changeName(String member_email, String member_name, HttpSession session) {
		Member member = new Member();
		member.setMember_email(member_email);
		member.setMember_name(member_name);
		mService.changeName(member);

		session.removeAttribute("member");
		session.setAttribute("member", mService.getMemberInfoS(member_email) );
		return "redirect:/member_mypage.do";
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
		return "redirect:/";
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
		return "redirect:/";
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
	public ModelAndView mypage(HttpServletRequest request, HttpSession session) {
		String order_cp = request.getParameter("order_cp");
		Member member = (Member)session.getAttribute("member");
		String member_email = member.getMember_email();
		
		Member_OrderInfoVo order_infoVo = (Member_OrderInfoVo)session.getAttribute("order_infoVo");
		
		//(1) cp 
		int cp = 1;
		if(order_cp == null) {
			Object cpObj = order_infoVo.getOrder_cp();
			if(cpObj != null) {
				cp = (Integer)cpObj;
			} else if(cpObj == null){
				cp = 1;
			}
		}else {
			order_cp = order_cp.trim();
			cp = Integer.parseInt(order_cp);
		}
		
		//(2) ps 
		int ps = 5;	

		Member_OrderInfoVo order_list = mService.selectPerPageOrder(cp, ps, member_email);
		session.setAttribute("order_infoVo", order_list);
		order_list.setOrder_cp(cp);
		order_list.setOrder_ps(ps);
		order_list.setMember_email(member_email);
		
		if(order_list.getOrder_list().size() == 0) {
			if(cp > 1) {	
				int cp2 = cp-1;
				order_list.setOrder_cp(cp2);
			}
		}   
		
		//log.info("######################################member_email: "+member_email);
		//log.info("######################################order_info: "+order_info);
		
		long order_count = mService.selectOrderCount(member_email);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage");
		mv.addObject("order_info", order_list);	
		mv.addObject("order_count", order_count);	
		
		return mv;
	}

	@RequestMapping("member_order.do")
	public ModelAndView member_order(String member_email, HttpServletRequest request, HttpSession session) {
		String order_cp = request.getParameter("order_cp");
		
		Member_OrderInfoVo order_infoVo = (Member_OrderInfoVo)session.getAttribute("order_infoVo");
		
		//(1) cp 
		int cp = 1;
		if(order_cp == null) {
			Object cpObj = order_infoVo.getOrder_cp();
			if(cpObj != null) {
				cp = (Integer)cpObj;
			} else if(cpObj == null){
				cp = 1;
			}
		}else {
			order_cp = order_cp.trim();
			cp = Integer.parseInt(order_cp);
		}
		
		//(2) ps 
		int ps = 5;	

		Member_OrderInfoVo order_list = mService.selectPerPageOrder(cp, ps, member_email);
		order_list.setOrder_cp(cp);
		order_list.setOrder_ps(ps);
		order_list.setMember_email(member_email);
		
		if(order_list.getOrder_list().size() == 0) {
			if(cp > 1) {	
				int cp2 = cp-1;
				order_list.setOrder_cp(cp2);
			}
		}   
		
		//log.info("######################################member_email: "+member_email);
		//log.info("######################################order_info: "+order_info);
		
		long order_count = mService.selectOrderCount(member_email);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage_order");
		mv.addObject("order_info", order_list);	
		mv.addObject("order_count", order_count);	
		
		return mv;
	}
	
	@RequestMapping("member_orderdetail.do")
	public ModelAndView member_orderdetail(String order_indexStr, String member_email) {
		long order_index = Long.parseLong(order_indexStr);
			
		Order_Info order_info = mService.selectOneOrderInfo(order_index);
		long order_count = mService.selectOrderCount(member_email);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mypage_order_detail");
		mv.addObject("order_info", order_info);	
		mv.addObject("order_count", order_count);
			
		return mv;
	}
		
	@RequestMapping("member_logout.do")
	public String logout(HttpSession session) {
		session.removeAttribute("member");

		String kakao_code = (String)session.getAttribute("kakao_code");
		KakaoLogin.Logout(kakao_code);
		session.removeAttribute("kakao_code");
		
		return "redirect:/";
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
