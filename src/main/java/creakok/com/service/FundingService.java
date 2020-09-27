package creakok.com.service;


import java.util.Date;
import java.util.List;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_category;
import creakok.com.domain.Funding_payinfo;
import creakok.com.domain.Funding_qna;
import creakok.com.vo.FundingVo;
import creakok.com.vo.Funding_qnaVo;
import creakok.com.vo.Funding_searchVo;
import creakok.com.vo.Goods_SearchVo;


public interface FundingService {
	FundingVo getFundingVo(int currentPage, int pageSize, String filterBy, String categoryBy);
	Funding getFunding(long funding_index);
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
	String getCreatorProfilPhoto(String creator_name);
	void qnaDelete(long funding_qna_index);
	Date getFunding_edate_cancel(long funding_qna_index);
	Date getFunding_edate_payment(long funding_qna_index);
	void updateFunding_amount(Funding_payinfo funding_payinfo);
	FundingVo getFundingByEdate(int currentPage, int pageSize, String filterBy, String categoryBy);
	String selectCategoryName(long codeUsed);
	void updateFunding_cancel(Funding_payinfo funding_payinfo);
	List<Funding> selectPerPageFinished();
}
