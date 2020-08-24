package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Goods_QnA;
import creakok.com.domain.Goods_Review;
import creakok.com.mapper.GoodsQnAMapper;
import creakok.com.vo.Goods_QnAVo;
import creakok.com.vo.Goods_ReviewVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service("GoodsQnAService")
public class GoodsQnAServiceImpl implements GoodsQnAService {
	@Autowired
	GoodsQnAMapper goods_qnaMapper;
	
	public Goods_QnAVo selectPerPageQnA(int qna_cp, int qna_ps, long goods_index){
		//log.info("????????????????????????????????? qna_cp: "+qna_cp);
		//log.info("????????????????????????????????? qna_ps: "+qna_ps);
		//log.info("????????????????????????????????? goods_index: "+goods_index);
		long qna_totalCount = selectGoodsQnACountByGoodsIndex(goods_index);
		log.info("????????????????????????????????? qna_totalCount: "+qna_totalCount);
		Goods_QnAVo goods_qna_vo = new Goods_QnAVo(qna_cp, qna_totalCount, qna_ps, goods_index, null);
		List<Goods_QnA> qna_list = goods_qnaMapper.selectPerPageQnA(goods_qna_vo);
		
		Goods_QnAVo goods_qna_vo2 = new Goods_QnAVo(qna_cp, qna_totalCount, qna_ps, goods_index, qna_list);
		goods_qna_vo2.setTotalPageCount(goods_qna_vo2.getTotalPageCount());
		
		
		return goods_qna_vo2;
	}
	public long selectGoodsQnACountByGoodsIndex(long goods_index) {
		return goods_qnaMapper.selectGoodsQnACountByGoodsIndex(goods_index);
	}
}