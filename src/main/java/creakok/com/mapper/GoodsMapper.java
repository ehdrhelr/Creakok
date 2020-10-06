package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods;
import creakok.com.vo.GoodsVo;
import creakok.com.vo.Goods_SearchVo;

public interface GoodsMapper {
	List<Goods> list(GoodsVo goodsVo);
	List<Goods> selectPerPage(GoodsVo goodsVo);
	long selectGoodsCount();
	long selectGoodsCountByCode(@Param("gCode") long gCode);
	String selectGoodsName(long goods_index);
	List<Goods> getRelatedGoods(@Param("category_code") long category_code);
	void insertOneGoods(Goods goods);
	void plusReviewNumber(@Param("goods_index") long goods_index);
	void minusReviewNumber(@Param("goods_index") long goods_index);
	long getGoodsIndex(@Param("goods_name") String goods_name);
	void plusSaleNumber(@Param("goods_index") long goods_index);
	void minusStockNumber(@Param("goods_index") long goods_index);
	List<Goods> selectGoodsRanking();
	List<Goods> selectSearchGoods(Goods_SearchVo goods_searchVo);
	long selectGoodsCountBySearch(@Param("keyword") String keyword);
	void deleteOneGoods(@Param("goods_index") long goods_index);
}