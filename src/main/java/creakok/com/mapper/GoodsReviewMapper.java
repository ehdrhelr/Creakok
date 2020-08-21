package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods_Review;
import creakok.com.vo.Goods_ReviewVo;



public interface GoodsReviewMapper {
	List<Goods_Review> review_list(@Param(value = "goods_index") long goods_index);
	List<Goods_Review> selectPerPageReview(Goods_ReviewVo goods_review_vo);
	long selectGoodsReviewCountByGoodsIndex(long goods_index);
	int updateReviewViews(@Param(value = "goods_review_index") long goods_review_index);
	Goods_Review selectOneReview(long goods_review_index);
	void deleteOneReview(long goods_review_index);
	void insertOneReview(Goods_Review goods_review);
	void updateOneReview(Goods_Review goods_review);
}
