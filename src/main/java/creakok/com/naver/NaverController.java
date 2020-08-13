package creakok.com.naver;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;

import creakok.com.domain.Member;
import creakok.com.domain.Member_category;
import creakok.com.domain.Member_origin;
import creakok.com.service.MemberService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class NaverController {
	
	@Autowired
	private MemberService mService;
	
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	private JsonStringParse jsonparse = new JsonStringParse(); 

	/* NaverLoginBO */
	@Inject
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	
	@RequestMapping(value="naverLogin.do", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {
		/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		log.info("controller 호출");
		log.info("naverAuthUrl:"+naverAuthUrl);
		return new ModelAndView("naverLogin", "url", naverAuthUrl);
	}
	
	@RequestMapping(value="tokenCheck.do",method = RequestMethod.GET)
	public ModelAndView callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
		/* 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급 */
		
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		apiResult = naverLoginBO.getUserProfile(oauthToken);
		JSONObject jsonobj = jsonparse.stringToJson(apiResult, "response");
		String member_password = jsonparse.JsonToString(jsonobj, "id");
		String member_email = jsonparse.JsonToString(jsonobj, "email");
		String member_profile_pic = jsonparse.JsonToString(jsonobj, "profile_image");

		Member member = new Member();
		member.setMember_category_code(Member_category.MEMBER_NORMAL);
		member.setMember_origin_code(Member_origin.SIGNUP_NAVER);

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
			if(result == Member.PASS_COMPARE_SAME) { //비번이 같으면 로그인을 하자.
				//암호가 같으니 로그인을 하자.
				session.setAttribute("member", mService.getMemberInfoS(member_email) );
				return new ModelAndView("redirect:/");
			} else { //비번이 다르면 기존 가입한 이메일이 있다.
				
			}
			
		} else {
			//새로운 이메일
			mService.signupSocialMemberS(member);
			return new ModelAndView("login");
		}

		log.info("####:"+member_email+"/"+member_password);
		return new ModelAndView("tokenCheck", "result", jsonobj);
	}
}
