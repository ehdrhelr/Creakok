package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Cart;
import creakok.com.domain.Goods;

public interface CartMapper {
	void insertCart(Cart cart);
	Cart selectOneCart(Cart cart);
	void updateCartCount(Cart cart);
	List<Cart> selectAllCart(String member_email);
	void deleteCart(Cart cart);
	Goods selectGoodsStock(@Param("goods_index") long goods_index); //굿즈 수량 체크(품절된 굿즈 이름, 수량 뽑기)
}
