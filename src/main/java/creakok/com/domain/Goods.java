package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Goods {
	private long goods_index;
	private long goods_category_code;
	private String goods_name;
	private long goods_price;
	private String goods_repre_pic;
	private String goods_detail_pic;
	private String creator_name;
	private long goods_like_number;
	private long goods_sale_number;
	private long goods_stock_number;
	private long goods_review_number;
	private String goods_option; 
}
