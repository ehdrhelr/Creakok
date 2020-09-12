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
		
		
		
		Funding_payinfo funding_payinfo = new Funding_payinfo(-1, funding_payinfo_name, member_email, funding_payinfo_phonenumber, funding_payinfo_amountpay, funding_index, funding_subject,
			null, null, null, null);
		log.info("!!!!!!!!!!!!!!!!!!!"+funding_payinfo);
		return new ModelAndView("funding_import_pay", "funding_payinfo", funding_payinfo);
	}
	
	@RequestMapping("funding_pay_success.do")
	public ModelAndView goods_pay_success(HttpServletRequest request, HttpSession session) {
		String buyer_name = request.getParameter("buyer_name");
		String buyer_phoneStr = request.getParameter("buyer_phone");
		long buyer_phone = Long.parseLong(buyer_phoneStr);
		String member_email = request.getParameter("buyer_email");

		String buyer_addrStr = request.getParameter("buyer_addr");
		String buyer_postcode = request.getParameter("buyer_postcode");
		
		String buyer_addr = buyer_addrStr+buyer_postcode;
		
		String product_name = request.getParameter("product_name");
		String amount = request.getParameter("amount");
		
		String success_num = request.getParameter("success_num"); //고유ID
		String success_id = request.getParameter("success_id"); //상점 거래ID
		String success_amountStr = request.getParameter("success_amount"); //결제 금액 
		String success_card_num = request.getParameter("success_card_num"); //카드 승인번호
		String success_pay = request.getParameter("success_pay"); //결제 성공 여부		

		Long success_amount = Long.parseLong(success_amountStr);
		
		//Long amount = Long.parseLong(amountStr);
		
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&고유 ID: "+success_num);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&상점 거래ID: "+success_id);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&결제 금액: "+success_amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&success_pay: "+success_pay);	
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_name: "+buyer_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&product_name: "+product_name);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&amount: "+amount);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_email: "+member_email);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_phone: "+buyer_phone);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_addr: "+buyer_addr);
		//log.info("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&buyer_postcode: "+buyer_postcode);

		//Order_Info order_info = new Order_Info(-1, buyer_name, buyer_phone, member_email, buyer_addr, null, product_name, 
		//		success_num, success_id, success_amount, success_card_num, success_pay);
		
		Funding_payinfo order_infoBefore = (Funding_payinfo) session.getAttribute("funding_payinfo");
		
		Funding_payinfo order_info = new Funding_payinfo(-1, buyer_name, member_email, buyer_phone, success_amount, order_infoBefore.getFunding_index(), product_name, success_num, success_id, success_card_num, success_pay);
	
		service.insertFunding_order(order_info);
		//payservice.insertOneOrder(order_info); 
		
		//굿즈 이름으로 goods_index 뽑아서 판매 수 +1
		//long goods_index = goodsService.getGoodsIndex(product_name);
		//goodsService.plusSaleNumber(goods_index);
		
		//굿즈 재고 수량 -1
		//goodsService.minusStockNumber(goods_index);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("pay_success");
		mv.addObject("success_num", success_num);	
		mv.addObject("member_email", member_email);	
		
		return mv;
	}	
	
}
