package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_comment;
import creakok.com.vo.FundingVo;
import creakok.com.vo.Funding_commentVo;

public interface Funding_commentMapper {
	List<Funding_comment> selectPerPage(Funding_commentVo funding_commentVo);
	long selectCount();
	Funding_comment selectBySeq(long funding_comment_index);
	List<Funding> selectByWriter(FundingVo boardVo);
	void write(Funding_comment funding_comment);
	void update(Funding_comment funding_comment);
	void remove(long funding_comment_index);
}
