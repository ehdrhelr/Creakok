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
		String kakaoAuthUrl = "https://kauth.kakao.com/oauth/authorize?client_id=a3817011c1de6f7930c4d84eaaf6d750&redirect_uri=http://127.0.0.1:8080/kakaoTokenCheck.do&response_type=code";
		return new ModelAndView("kakaoLogin", "url", kakaoAuthUrl);
	}
	
	@RequestMapping(value="kakaoTokenCheck.do", produces = "application/json", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView callback(@RequestParam("code") String code , HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		JsonNode token = KakaoLogin.getAccessToken(code);
		String kakao_code = token.path("access_token").toString();
		session.setAttribute("kakao_code", kakao_code);
		JsonNode profile = KakaoLogin.getKakaoUserInfo(kakao_code);
		
		return new ModelAndView("tokenCheck", "result", profile);
	}
}
