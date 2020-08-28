package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Cart;

public interface CartMapper {
	void insertCart(Cart cart);
	Cart selectOneCart(Cart cart);
	void updateCartCount(Cart cart);
	List<Cart> selectAllCart(String member_email);
	void deleteCart(Cart cart);
}
