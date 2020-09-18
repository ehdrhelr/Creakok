  
package creakok.com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods_Review;
import creakok.com.mapper.FundingMapper;
import creakok.com.mapper.GoodsReviewMapper;
import creakok.com.vo.Goods_ReviewVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("GoodsReviewService")
public class GoodsReviewServiceImpl implements GoodsReviewService {
	@Autowired
	private GoodsReviewMapper goodsservicemapper;
	
	@Override
	public List<Goods_Review> goodsReview_list(long goods_index){
		return goodsservicemapper.review_list(goods_index);
	}
	@Override
	public Goods_ReviewVo selectPerPageReview(int review_cp, int review_ps, long goods_index){
		long review_totalCount = goodsservicemapper.selectGoodsReviewCountByGoodsIndex(goods_index);
		Goods_ReviewVo goods_review_vo = new Goods_ReviewVo(review_cp, review_totalCount, review_ps, goods_index, null);
		List<Goods_Review> review_list = goodsservicemapper.selectPerPageReview(goods_review_vo);

		//리뷰 글 번호
		long list_number;
		for(int i=0; i<review_list.size(); i++) {
			list_number = review_totalCount - ((review_cp-1)*review_ps)-i;
		
			review_list.get(i).setList_number(list_number);
		}
		
		Goods_ReviewVo goods_review_vo2 = new Goods_ReviewVo(review_cp, review_totalCount, review_ps, goods_index, review_list);
		goods_review_vo2.setReview_totalPageCount(goods_review_vo2.getReview_totalPageCount());
	
		log.info("############# selectPerPageReview review_cp: "+review_cp);
		log.info("############# selectPerPageReview review_ps: "+review_ps);
		log.info("############# selectPerPageReview goods_index: "+goods_index);
		log.info("★★★★★★★★★★★★★★★ selectPerPageReview review_list: "+review_list);
		
		return goods_review_vo2;
	}
	
	@Override
	public long selectGoodsReviewCountByGoodsIndex(long goods_index) {
		return goodsservicemapper.selectGoodsReviewCountByGoodsIndex(goods_index);
	}
	@Override
	public boolean updateReviewViews(long goods_review_index) {
		int a = goodsservicemapper.updateReviewViews(goods_review_index);
		if(a>0) {
			return true;
		}else {
			return false;
		}
	}
	@Override
	public Goods_Review selectOneReview(long goods_review_index) {
		return goodsservicemapper.selectOneReview(goods_review_index);
	}
	@Override
	public void deleteOneReview(long goods_review_index) {
		goodsservicemapper.deleteOneReview(goods_review_index);
	}
	@Override
	public void insertOneReview(Goods_Review goods_review) {
		goodsservicemapper.insertOneReview(goods_review);
	}
	@Override
	public void updateOneReview(Goods_Review goods_review) {
		goodsservicemapper.updateOneReview(goods_review);
	}
	
	@Override
	public void updateReviewNumber(long goods_review_count, long goods_index) {
		goodsservicemapper.updateReviewNumber(goods_review_count, goods_index);
	}
}