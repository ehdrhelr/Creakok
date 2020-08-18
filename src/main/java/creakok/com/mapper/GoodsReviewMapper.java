package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods_Review;
import creakok.com.vo.Goods_ReviewVo;



public interface GoodsReviewMapper {
	List<Goods_Review> review_list(@Param(value = "goods_index") long goods_index);
	List<Goods_Review> selectPerPageReview(Goods_ReviewVo goods_review_vo);
	long selectGoodsReviewCountByGoodsIndex(long goods_index);
}
