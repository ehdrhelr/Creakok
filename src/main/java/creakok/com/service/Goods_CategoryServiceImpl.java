package creakok.com.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.mapper.Goods_CategoryMapper;
import creakok.com.vo.GoodsVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("Goods_CategoryService")
public class Goods_CategoryServiceImpl implements Goods_CategoryService {
	@Autowired
	private Goods_CategoryMapper mapper;
	
	@Override
	public List<Goods_Category> listS() {
		
		return mapper.selectGoodsCategory();
	}
	
	@Override
	public GoodsVo getGoodsVo(int cp, int ps, long gCode, String filterBy){
		long totalCount = mapper.selectGoodsCount(gCode);
		log.info("####:"+totalCount+"#@#@#@#@@#:"+ps);
		GoodsVo goodsVo = new GoodsVo(cp, totalCount, ps, null, gCode, null);
		log.info("FFFFFFFFFFFF:"+goodsVo.getTotalPageCount());
		List<Goods> list = mapper.selectByGcode(goodsVo);
		
		return new GoodsVo(cp, totalCount, ps, list, gCode, null);

	}
}
