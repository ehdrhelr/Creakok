package creakok.com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods;
import creakok.com.vo.GoodsVo;

public interface GoodsService {
	GoodsVo listS(int cp, int ps, String filterBy);
	GoodsVo getGoodsVo(int cp, int ps, long gCode, String filterBy);
	long selectGoodsCountS();
	String selectGoodsName(long goods_index);
	List<Goods> getRelatedGoods(long category_code);
	void plusReviewNumber(long goods_index);
	void minusReviewNumber(long goods_index);
	long getGoodsIndex(String goods_name);
	void plusSaleNumber(long goods_index);
	void minusStockNumber(long goods_index);
}
