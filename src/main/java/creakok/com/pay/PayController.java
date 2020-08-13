package creakok.com.pay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class PayController {

	@RequestMapping("funding_checkout.do")
	public ModelAndView checkout(HttpServletRequest request, HttpSession session) {
		String funding_indexStr = request.getParameter("funding_index");
		return new ModelAndView("/checkout", "", null);
		//return new ModelAndView("/checkout2", "", null);
	}
	
	@RequestMapping("funding_pay.do")
	public ModelAndView pay(HttpServletRequest request, HttpSession session) {
		String funding_indexStr = request.getParameter("funding_index");
	
		return new ModelAndView("/funding_detail_pay", "", null);
	}
	
}
