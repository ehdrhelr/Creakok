package creakok.com.kakao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;

import creakok.com.domain.LoginResult;
import creakok.com.domain.Member;
import creakok.com.domain.Member_category;
import creakok.com.domain.Member_origin;
import creakok.com.filesetting.Path;
import creakok.com.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class KakaoController {
	@Autowired
	private MemberService mService;
	
	//kakaoLogin.do
	@RequestMapping(value="kakaoLogin.do", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {
		/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
		String kakaoAuthUrl = "https://kauth.kakao.com/oauth/authorize?"
				+ "client_id=250ce854a23b5b7a358567badfd69726"
				+ "&redirect_uri="+Path.SOCIAL_LOGIN_ROOT+"kakaoTokenCheck.do"
				+ "&response_type=code";
		return new ModelAndView("socialLoginUrl", "url", kakaoAuthUrl);
	}
	
	@RequestMapping(value="kakaoTokenCheck.do", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView callback(@RequestParam("code") String code , HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		JsonNode token = KakaoLogin.getAccessToken(code);
		String kakao_code = token.path("access_token").toString();
		//log.info("####:"+kakao_code);
		session.setAttribute("kakao_code", kakao_code);
		JsonNode profile = KakaoLogin.getKakaoUserInfo(kakao_code);
		log.info("####:"+profile);

        String member_password = profile.path("id").asText();
        
        JsonNode properties = profile.path("properties");
        String member_name = properties.path("nickname").asText();
        String profile_image = properties.path("profile_image").asText();

        //log.info("####:"+member_password+"/"+member_name+"/"+profile_image);
		Member member = new Member();
        String member_email = member_name+"@kakao";

		member.setMember_category_code(Member_category.MEMBER_NORMAL);
		member.setMember_origin_code(Member_origin.SIGNUP_KAKAO);

		member.setMember_name("temp_name");
		member.setMember_email(member_email);
		member.setMember_password(member_password);
		member.setMember_profile_pic(profile_image);

		if(mService.checkEmailExist(member_email) != null) {
			//가입 이메일이 이미 존재
			log.info("#### 가입 이메일이 이미 존재 -> 비번을 비교해서 -> 같으면 로그인 -> 다르면 가입창으로");
			int result = mService.compareMemberPasswordS(member_email, member_password);
			//0 = 일치, 1 = 불일치
			log.info("#### result:"+result);
			if(result == LoginResult.PASS_COMPARE_SAME) { //비번이 같으면 로그인을 하자.
				//암호가 같으니 로그인을 하자.
				session.setAttribute("member", mService.getMemberInfoS(member_email) );
				return new ModelAndView("redirect:/");
			} else { //비번이 다르면 기존 가입한 이메일이 있다.
				return new ModelAndView("redirect:/socialLoginFail.do");
			}
		} else {
			//새로운 이메일
			mService.signupSocialMemberS(member);
			session.setAttribute("member", mService.getMemberInfoS(member_email) );
			return new ModelAndView("redirect:/");
			//return new ModelAndView("login");
		}
		
		//return new ModelAndView("tokenCheck", "result", profile);
	}
}
