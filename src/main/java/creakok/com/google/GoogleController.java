package creakok.com.google;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;

import creakok.com.domain.LoginResult;
import creakok.com.domain.Member;
import creakok.com.domain.Member_category;
import creakok.com.domain.Member_origin;
import creakok.com.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class GoogleController {
	
	@Autowired
	private MemberService mService;
	
	// 로그인 첫 화면 요청 메소드
	@RequestMapping(value="googleLogin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView login(Model model, HttpSession session) {

		String url = "https://accounts.google.com/o/oauth2/v2/auth?" 
                + "scope=email" 
                + "&response_type=code" 
                + "&state=security_token%3D138r5719ru3e1%26url%3Dhttps://oauth2.example.com/token" 
                + "&client_id=" + "484909926172-auk6elov1eqf9t12815jbq26eagfdko9.apps.googleusercontent.com"
                + "&redirect_uri=" + "http://127.0.0.1:8080/googleTokenCheck.do"
                + "&access_type=offline";

		log.info("구글:" + url);

		/* 생성한 인증 URL을 View로 전달 */
		return new ModelAndView("socialLoginUrl", "url", url);
	}
	
	// 구글 Callback호출 메소드
	@RequestMapping(value="googleTokenCheck.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView googleCallback(@RequestParam String code, HttpSession session) throws IOException {
        JsonNode jsonToken = GoogleLogin.getAccessToken(code);
        String accessToken = jsonToken.get("access_token").toString();
        log.info("Access Token : " + accessToken);
     // Access Token으로 사용자 정보 반환
        JsonNode profile = GoogleLogin.getGoogleUserInfo(accessToken);
        String member_password = profile.path("id").asText();
        String member_email = profile.path("email").asText();
        String member_profile_pic = profile.path("picture").asText();

        Member member = new Member();
		member.setMember_category_code(Member_category.MEMBER_NORMAL);
		member.setMember_origin_code(Member_origin.SIGNUP_GOOGLE);
		
		member.setMember_name("temp_name");
		member.setMember_email(member_email);
		member.setMember_password(member_password);
		member.setMember_profile_pic(member_profile_pic);

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
