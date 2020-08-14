package creakok.com.service;

import java.util.List;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.vo.GoodsVo;

public interface GoodsService {
	GoodsVo listS(int cp, int ps, String filterBy);
	GoodsVo getGoodsVo(int cp, int ps, long gCode, String filterBy);
	long selectGoodsCountS();
}
