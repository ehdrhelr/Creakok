package creakok.com.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PayInfoVo {
	private String delivery_name;
	private String delivery_phone;
	private String address_num;
	private String address_road;
	private String address_detail;
	private String address_land;
	private String price_amount;
	private String product_qty;
	private String product_name;
	private String email;
}
