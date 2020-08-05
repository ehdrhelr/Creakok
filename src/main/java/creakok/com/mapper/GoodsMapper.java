package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Goods;
import creakok.com.vo.GoodsVo;

public interface GoodsMapper {
	List<Goods> selectPerPage(int page, int pageSize);
	long selectGoodsCount();
}
