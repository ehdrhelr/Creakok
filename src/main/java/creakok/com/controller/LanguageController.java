package creakok.com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LanguageController {
	@ResponseBody
	@RequestMapping("saveLanguage.do")
	public int saveLanguage(int language, HttpSession session) {
		//log.info("#####:"+language);
		session.setAttribute("selectLanguage", language);
		return language;
	}
}
