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
	public List<Goods> selectPerPage(int cp, int ps) {
		return gMapper.selectPerPage(cp, ps);
	}
	
	@Override
	public long selectGoodsCountS() {
		return gMapper.selectGoodsCount();
	}
}
