package creakok.com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import creakok.com.domain.Cart;
import creakok.com.domain.Goods;
import creakok.com.domain.Member;
import creakok.com.service.CartService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CartController {

	@Autowired
	private CartService cartService;

	@RequestMapping("order.do")
	public String order(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		if (member == null) {
			return "/index";
		}

		List<Cart> list = cartService.readAllCart(member.getMember_email() );
		
		long total=0;
		for(Cart c : list) {
			//log.info("####cart:"+c);
			total+=c.getUnit_price()*c.getUnit_count();
		}
		
		total = total+3000; //배송비		
		
		model.addAttribute("price_amount", total);
		model.addAttribute("cart_list", list);
		return "order";
	}

	@RequestMapping("goods_cart.do")
	public String goods_cart(Model model, HttpSession session) {
		Member member = (Member) session.getAttribute("member");
		if (member == null) {
			return "/index";
		}
		List<Cart> list = cartService.readAllCart(member.getMember_email());
		
		//재고 수량 체크 + 품절된 굿즈 이름 뽑기
		List<Goods> goods_stock = new ArrayList<Goods>();
		for(Cart c : list) {
			goods_stock.add(cartService.selectGoodsStock(c.getGoods_index()));
		}
		log.info("#######################goods_stock :"+goods_stock);
		// for(Cart c : list) {
		// log.info("####cart:"+c);
		// }
		model.addAttribute("cart_list", list);
		model.addAttribute("goods_stock", goods_stock);
		return "cart";
	}

	@ResponseBody
	@RequestMapping("addCart.do")
	public String addCart(Cart cart) {
		// log.info("#####:"+cart);
		cartService.containCart(cart);
		return "add_ok";
	}

	@ResponseBody
	@RequestMapping("updateCart.do")
	public String updateCart(Cart cart) {
		// log.info("#####:"+cart);
		cartService.updateCartCount(cart);
		return "update_ok";
	}

	@ResponseBody
	@RequestMapping("deleteCart.do")
	public String deleteCart(Cart cart) {
		// log.info("#####:"+cart);
		cartService.deleteCart(cart);
		return "delete_ok";
	}
}
