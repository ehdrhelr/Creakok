package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.vo.GoodsVo;

public interface Goods_CategoryMapper {
	List<Goods_Category> selectGoodsCategory();
	List<Goods> selectByGcode(GoodsVo goodsVo);
	long selectGoodsCount(long gCode);
	String selectGoodsCategoryName(@Param("category_code") long category_code);
}
