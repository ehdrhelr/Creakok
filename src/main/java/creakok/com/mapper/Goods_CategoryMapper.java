package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.vo.GoodsVo;

public interface Goods_CategoryMapper {
	List<Goods_Category> selectGoodsCategory();
	List<Goods> selectByGcode(GoodsVo goodsVo);
	long selectGoodsCount(long gCode);
}
