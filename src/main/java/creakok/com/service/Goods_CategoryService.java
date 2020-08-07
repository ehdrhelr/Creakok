package creakok.com.service;

import java.util.List;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.vo.GoodsVo;

public interface Goods_CategoryService {
	List<Goods_Category> listS();

	GoodsVo getGoodsVo(int cp, int ps, long gCode, String filterBy);
}
