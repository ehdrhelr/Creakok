package creakok.com.pay;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_payinfo;
import creakok.com.domain.Member;
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
		//Member member = (Member)session.getAttribute("member");
		//if(member !=null) {
			
		//}
		return new ModelAndView("/funding_pay_checkout", "", null);
	}
	
	@RequestMapping("funding_pay.do")
	public ModelAndView pay(HttpServletRequest request, HttpSession session) {
		
		String funding_payinfo_name = request.getParameter("Payinfo_name");
		String member_email = request.getParameter("Payinfo_email");
		String funding_payinfo_phonenumberStr = request.getParameter("Payinfo_phonenumber");
		long funding_payinfo_phonenumber = Long.parseLong(funding_payinfo_phonenumberStr);
		String funding_payinfo_amountpayStr = request.getParameter("amountPaygot");
		long funding_payinfo_amountpay = Long.parseLong(funding_payinfo_amountpayStr);
		String funding_indexStr = request.getParameter("funding_index");
		long funding_index = Long.parseLong(funding_indexStr);
		String funding_subject = request.getParameter("fundingName");
	
		Funding_payinfo funding_payinfo = new Funding_payinfo(-1, funding_payinfo_name, member_email, funding_payinfo_phonenumber, funding_payinfo_amountpay, funding_index, funding_subject);
		log.info("!!!!!!!!!!!!!!!!!!!"+funding_payinfo);
		return new ModelAndView("funding_pay_detail", "funding_payinfo", funding_payinfo);
	}
	
}
