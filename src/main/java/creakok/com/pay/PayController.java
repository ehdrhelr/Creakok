package creakok.com.pay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Funding;
import creakok.com.service.PayService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
public class PayController {
	@Autowired
	private PayService service;
	
	@RequestMapping("funding_checkout.do")
	public ModelAndView checkout(HttpServletRequest request, HttpSession session) {
		String funding_indexStr = request.getParameter("funding_index");
		
		Funding fundingCheckout = service.getFundingCheckoutInfo(Long.parseLong(funding_indexStr));
		session.setAttribute("fundingCheckoutInfo", fundingCheckout);
		//서비스단에서 불러올것 :펀딩제목, 크리에이터이름 등등 펀딩정보들? 세션에 올리자.
		
		
		
		
		return new ModelAndView("/checkout3", "", null);
		//return new ModelAndView("/checkout2", "", null);
	}
	
	@RequestMapping("funding_pay.do")
	public ModelAndView pay(HttpServletRequest request, HttpSession session) {
		String funding_indexStr = request.getParameter("funding_index");
	
		return new ModelAndView("/funding_detail_pay", "", null);
	}
	
}
