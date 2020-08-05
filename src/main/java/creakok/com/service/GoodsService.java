package creakok.com.service;

import java.util.List;

import creakok.com.domain.Goods;
import creakok.com.vo.GoodsVo;

public interface GoodsService {
	List<Goods> selectPerPage(int cp, int ps);
	long selectGoodsCountS();
}
