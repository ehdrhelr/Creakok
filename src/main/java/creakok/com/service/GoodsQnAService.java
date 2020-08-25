package creakok.com.service;



import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Goods_QnA;
import creakok.com.vo.Goods_QnAVo;

public interface GoodsQnAService {
	long selectGoodsQnACountByGoodsIndex(long goods_index);
	Goods_QnAVo selectPerPageQnA(int qna_cp, int qna_ps, long goods_index);
	Goods_QnA selectOneQnA(long goods_qna_index);
	void updateOneAnswer(Goods_QnA goods_qna);
}
