package creakok.com.mapper;

import java.util.List;
import java.util.TreeSet;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_category;
import creakok.com.domain.Funding_qna;
import creakok.com.vo.FundingVo;
import creakok.com.vo.Funding_qnaVo;

public interface FundingMapper {
	List<Funding> selectPerPage(FundingVo fundingVo);
	long selectCount(@Param(value = "categoryByUsed")String categoryBy);
	//Funding selectBySeq(long funding_index);
	//List<Funding> selectByWriter(FundingVo fundingVo);
	//void write(Funding funding);
	//void update(Funding funding);
	//void remove(long funding_index);
	List<Funding_category> getFunding_category();
	String selectPerPageCategory(Funding funding);
	TreeSet<Integer> selectCategoryCode();
	String selectCategoryName(@Param(value = "codeUsed") int codeUsed);
	List<Funding> getRelatedFunding(@Param(value = "categoryCode") long categoryCode);
	List<Funding_qna> getFunding_qna(Funding_qnaVo funding_qnaVo);
	long getTotalCount_qna(@Param(value = "funding_index")long funding_index);
	void write_qna(Funding_qna funding_qna);
	Funding_qna getFunding_qna_detail(@Param(value = "funding_qna_index")long funding_qna_index);
	void editQna(Funding_qna funding_qna);
	void answerQna(Funding_qna funding_qna);
	void answerEditQna(Funding_qna funding_qna);
	void answerDelete(@Param(value = "funding_qna_index")long funding_qna_index);
	String getCreatorProfilContent(@Param(value = "creator_name") String creator_name);
	String getCreatorProfilPhoto(@Param(value = "creator_name") String creator_name);
	void qnaDelete(@Param(value = "funding_qna_index")long funding_qna_index);
}