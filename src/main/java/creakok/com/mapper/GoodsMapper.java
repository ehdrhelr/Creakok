package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods;
import creakok.com.vo.GoodsVo;

public interface GoodsMapper {
	List<Goods> list(GoodsVo goodsVo);
	List<Goods> selectPerPage(GoodsVo goodsVo);
	long selectGoodsCount();
	long selectGoodsCountByCode(@Param("gCode") long gCode);
	String selectGoodsName(long goods_index);
	List<Goods> getRelatedGoods(@Param("category_code") long category_code);
}
