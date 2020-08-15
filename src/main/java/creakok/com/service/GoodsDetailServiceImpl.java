package creakok.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods;
import creakok.com.mapper.GoodsDetailMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("GoodsDetailService")
public class GoodsDetailServiceImpl implements GoodsDetailService {
	@Autowired
	private GoodsDetailMapper goods_detail_mapper;
	
	@Override
	public Goods getGoodsDetail(long goods_index) {
		Goods one_goods = goods_detail_mapper.getGoodsDetail(goods_index);
		return one_goods;
	}

}
