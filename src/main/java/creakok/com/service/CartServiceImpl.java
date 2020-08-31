package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Cart;
import creakok.com.mapper.CartMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper cartMapper;
	
	@Override
	public void deleteCart(Cart cart) {
		cartMapper.deleteCart(cart);
	}


	@Override
	public void updateCartCount(Cart cart) {
		cartMapper.updateCartCount(cart);
	}
	
	@Override
	public List<Cart> readAllCart(String member_email) {
		return cartMapper.selectAllCart(member_email);
	}
	
	@Override
	public void containCart(Cart cart) {
		/*
		 * 카트 정보 1개를 받아서
		 * 내부 테이블을 검색해본 후
		 * 없으면 넣는다.
		 * 만약 있으면?
		 * 수량을 업데이트 한다.
		 */
		Cart c = cartMapper.selectOneCart(cart);
		//log.info("#####:"+c);
		if(c == null) {
			//log.info("#####:없으니 넣는다.");
			cartMapper.insertCart(cart);
		} else {
			//log.info("#####:있으니 업데이트 한다.");
			long tempCount = c.getUnit_count();
			//log.info("#####tempCount:"+tempCount);
			long cartCount = cart.getUnit_count();
			//log.info("#####cartCount:"+cartCount);
			cart.setUnit_count(cartCount+tempCount);
			cartMapper.updateCartCount(cart);
		}
	}

}
