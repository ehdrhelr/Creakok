package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods;
import creakok.com.mapper.GoodsMapper;
import creakok.com.vo.GoodsVo;

@Service("GoodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper gMapper;
	
	@Override
	public GoodsVo getGoodsVo(int cp, int ps, String filterBy) {
		long totalCount = gMapper.selectGoodsCount();
		GoodsVo goodsVo = new GoodsVo(cp, totalCount, ps, null, -1, filterBy);
		List<Goods> list = gMapper.selectPerPage(goodsVo);
		
		return new GoodsVo(cp, totalCount, ps, list, -1, filterBy);
	}
	

	@Override
	public long selectGoodsCountS() {
		return gMapper.selectGoodsCount();
	}
}
