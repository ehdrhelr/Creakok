package creakok.com.service;

import java.util.List;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_category;
import creakok.com.domain.Funding_qna;
import creakok.com.vo.FundingVo;
import creakok.com.vo.Funding_qnaVo;


public interface FundingService {
	FundingVo getFundingVo(int currentPage, int pageSize, String filterBy, String categoryBy);
	Funding getFunding(long funding_index);
	FundingVo getFundingVoByFilter(String filter, int currentPage, int pageSize);
	FundingVo getFundingVoByKeyword(String keyword, int currentPage, int pageSize);
	void write(Funding funding);
	void edit(Funding funding);
	void remove(long funding_index);
	List<Funding_category> getFunding_category();
	List<Funding> getRelatedFunding(long categoryCode);
	List<Funding_qna> getFunding_qna(Funding_qnaVo funding_qnaVo);
	long getTotalCount_qna(long funding_index);
	void write_qna(Funding_qna funding_qna);
	Funding_qna getFunding_qna_detail(long funding_qna_index);
	void editQna(Funding_qna funding_qna);
	void answerQna(Funding_qna funding_qna);
	void answerEditQna(Funding_qna funding_qna);
	void answerDelete(long funding_qna_index);
	String getCreatorProfilContent(String creator_name);
	
}
