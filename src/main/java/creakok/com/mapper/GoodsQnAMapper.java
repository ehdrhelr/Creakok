package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods_QnA;
import creakok.com.vo.Goods_QnAVo;

public interface GoodsQnAMapper {
	List<Goods_QnA> selectPerPageQnA(Goods_QnAVo goods_qna_vo);
	long selectGoodsQnACountByGoodsIndex(@Param(value="goods_index") long goods_index);
	Goods_QnA selectOneQnA(@Param(value="goods_qna_index") long goods_qna_index);
	void updateOneAnswer(Goods_QnA goods_qna);
}

