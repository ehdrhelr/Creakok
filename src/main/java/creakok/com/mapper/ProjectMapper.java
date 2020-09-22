package creakok.com.mapper;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Funding;
import creakok.com.domain.Goods;

public interface ProjectMapper {
	int writeFundingProject(Funding funding);
	void insertOneGoods(Goods goods);
	Goods selectByGoodsName(@Param("goods_name") String goods_name);
}
