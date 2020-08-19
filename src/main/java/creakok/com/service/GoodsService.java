package creakok.com.service;

import creakok.com.vo.GoodsVo;

public interface GoodsService {
	GoodsVo listS(int cp, int ps, String filterBy);
	GoodsVo getGoodsVo(int cp, int ps, long gCode, String filterBy);
	long selectGoodsCountS();
	String selectGoodsName(long goods_index);
}
