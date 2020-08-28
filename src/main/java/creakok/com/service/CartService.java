package creakok.com.service;

import java.util.List;

import creakok.com.domain.Cart;

public interface CartService {
	void containCart(Cart cart);
	List<Cart> readAllCart(String member_email);
	void updateCartCount(Cart cart);
	void deleteCart(Cart cart);
}
