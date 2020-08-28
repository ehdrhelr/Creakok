package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cart {
	private String member_email;
	private long goods_index;
	private long goods_category_code;
	private String goods_name;
	private String goods_repre_pic;
	private long unit_price;
	private long unit_count;
}
