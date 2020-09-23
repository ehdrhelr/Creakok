package creakok.com.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order_Info {
	private long order_index;
	private String buyer_name; //주문자 이름
	private String buyer_phone; //주문자 연락처
	private String member_email; //주문자 메일
	private String buy_addr;
	private Date buy_date;
	private String buy_product_name; //상품명
	private String buyer_buyid; //고유id
	private String buyer_merid; //merchant id
	private long buyer_pay_price; //결제금액
	private String buyer_card_num;
	private String buyer_pay_ok; //결제 여부
}
