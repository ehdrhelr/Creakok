package creakok.com.service;



import creakok.com.domain.Goods_QnA;
import creakok.com.vo.Goods_QnAVo;

public interface GoodsQnAService {
	long selectGoodsQnACountByGoodsIndex(long goods_index);
	Goods_QnAVo selectPerPageQnA(int qna_cp, int qna_ps, long goods_index);
}
