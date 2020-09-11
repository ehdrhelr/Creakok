package creakok.com.mapper;

import creakok.com.domain.Funding;
import creakok.com.domain.Goods;

public interface ProjectMapper {
	int writeFundingProject(Funding funding);
	void insertOneGoods(Goods goods);
}
