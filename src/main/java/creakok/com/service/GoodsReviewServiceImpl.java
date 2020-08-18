package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods_Review;
import creakok.com.mapper.FundingMapper;
import creakok.com.mapper.GoodsReviewMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("GoodsReviewService")
public class GoodsReviewServiceImpl implements GoodsReviewService {
	@Autowired
	private GoodsReviewMapper goodservicewmapper;
	
	@Override
	public List<Goods_Review> goodsReview_list(long goods_index){
		return goodservicewmapper.review_list(goods_index);
	}
}	
