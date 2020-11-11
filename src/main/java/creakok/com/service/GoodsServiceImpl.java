package creakok.com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods;
import creakok.com.mapper.GoodsMapper;
import creakok.com.vo.GoodsVo;
import creakok.com.vo.Goods_SearchVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("GoodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper gMapper;
	
	@Override
	public GoodsVo listS(int cp, int ps, String filterBy){
		long totalCount = gMapper.selectGoodsCount();
		GoodsVo goodsVo = new GoodsVo(cp, totalCount, ps, null, -1, filterBy);
		List<Goods> origin_list = gMapper.list(goodsVo);
		
		return new GoodsVo(cp, totalCount, ps, origin_list, -1, filterBy);
	};
	
	@Override
	public GoodsVo getGoodsVo(int cp, int ps, long gCode, String filterBy) {
		long totalCount = gMapper.selectGoodsCountByCode(gCode);
		GoodsVo goodsVo = new GoodsVo(cp, totalCount, ps, null, gCode, filterBy);
		List<Goods> list = gMapper.selectPerPage(goodsVo);
		
		GoodsVo goodsVo2 = new GoodsVo(cp, totalCount, ps, list, gCode, filterBy);
		goodsVo2.setTotalPageCount(goodsVo2.calTotalPageCount() );
		
		log.info("#### ttp:"+goodsVo2.getTotalCount() );
		log.info("#### ttp:"+goodsVo2.getTotalPageCount() );
		log.info("#### getGoodsVo gCode:"+goodsVo2.getGCode() );

		return goodsVo2;
	}
	

	@Override
	public long selectGoodsCountS() {
		return gMapper.selectGoodsCount();
	}
	
	@Override
	public String selectGoodsName(long goods_index) {
		return gMapper.selectGoodsName(goods_index);
	}
	
	@Override
	public List<Goods> getRelatedGoods(long category_code) {
		return gMapper.getRelatedGoods(category_code);
	}

	@Override
	public void plusReviewNumber(long goods_index) {
		gMapper.plusReviewNumber(goods_index);
	}
	
	@Override
	public void minusReviewNumber(long goods_index) {
		gMapper.minusReviewNumber(goods_index);
	}
	
	@Override
	public long getGoodsIndex(String goods_name) {
		return gMapper.getGoodsIndex(goods_name);
	}
	
	@Override
	public void plusSaleNumber(long goods_index) {
		gMapper.plusSaleNumber(goods_index);
	}
	
	@Override
	public void minusStockNumber(long goods_index) {
		gMapper.minusStockNumber(goods_index);
	}
	
	@Override
	public List<Goods> selectGoodsRanking(){ //실시간 굿즈랭킹
		return gMapper.selectGoodsRanking();
	}
	
	@Override
	public Goods_SearchVo getSearchGoodsVo(int cp, int ps, String keyword){ //굿즈 검색
		long totalCount = gMapper.selectGoodsCountBySearch(keyword);
		Goods_SearchVo goods_searchVo = new Goods_SearchVo(cp, totalCount, ps, null, keyword);
		List<Goods> result_list = gMapper.selectSearchGoods(goods_searchVo);
		
		Goods_SearchVo goods_searchVo2 = new Goods_SearchVo(cp, totalCount, ps, result_list, keyword);
		goods_searchVo2.setTotalPageCount(goods_searchVo2.calTotalPageCount());
		
		return goods_searchVo2;
	}
	
	@Override
	public long selectGoodsCountBySearch(String keyword) {
		return gMapper.selectGoodsCountBySearch(keyword);
	}
	
	
	@Override
	public void deleteOneGoods(long goods_index) {
		gMapper.deleteOneGoods(goods_index);
	}
	
}
