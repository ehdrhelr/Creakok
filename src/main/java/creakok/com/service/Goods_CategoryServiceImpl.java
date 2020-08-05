package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods_Category;
import creakok.com.mapper.Goods_CategoryMapper;

@Service("Goods_CategoryService")
public class Goods_CategoryServiceImpl implements Goods_CategoryService {
	@Autowired
	private Goods_CategoryMapper mapper;
	
	@Override
	public List<Goods_Category> listS() {
		
		return mapper.selectGoodsCategory();
	}

}
