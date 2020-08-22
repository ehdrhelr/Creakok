package creakok.com.service;

import java.util.List;

import creakok.com.domain.Goods_Review;
import creakok.com.vo.Goods_ReviewVo;

public interface GoodsReviewService {
	List<Goods_Review> goodsReview_list(long good_index);
	Goods_ReviewVo selectPerPageReview(int review_cp, int review_ps, long goods_index);
	long selectGoodsReviewCountByGoodsIndex(long goods_index);
	boolean updateReviewViews(long goods_review_index);
	Goods_Review selectOneReview(long goods_review_index);
	void deleteOneReview(long goods_review_index);
	void insertOneReview(Goods_Review goods_review);
	void updateOneReview(Goods_Review goods_review);
}