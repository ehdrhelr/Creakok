package creakok.com.service;

import java.util.List;

import creakok.com.domain.Goods;
import creakok.com.vo.GoodsVo;

public interface GoodsService {
	GoodsVo getGoodsVo(int cp, int ps, String filterBy);

	long selectGoodsCountS();
}
