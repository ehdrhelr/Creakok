package creakok.com.service;


import java.util.Date;
import java.util.List;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Funding;
import creakok.com.domain.Funding_category;
import creakok.com.domain.Funding_qna;
import creakok.com.domain.Goods;
import creakok.com.mapper.FundingMapper;
import creakok.com.vo.FundingVo;
import creakok.com.vo.Funding_qnaVo;
import creakok.com.vo.Funding_searchVo;
import creakok.com.vo.Goods_SearchVo;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class FundingServiceImpl implements FundingService {
	@Autowired
	private FundingMapper fundingMapper;
	@Override
	public FundingVo getFundingVo(int currentPage, int pageSize, String filterBy, String categoryBy) {
		long totalCount = fundingMapper.selectCount(categoryBy);
		
		FundingVo fundingVo = new FundingVo(currentPage, totalCount, pageSize, filterBy, categoryBy, null, null);
		TreeSet<String> listCategoryUsed = new TreeSet<String>();
		List<Funding> list = fundingMapper.selectPerPage(fundingVo);
		
		TreeSet<Integer> listCategoryCode = new TreeSet<Integer>();
		listCategoryCode = fundingMapper.selectCategoryCode();
		for(Integer codeUsed : listCategoryCode) {
			listCategoryUsed.add(fundingMapper.selectCategoryName(codeUsed));
		}
		for(Funding funding : list) {
			funding.setFunding_category_name(fundingMapper.selectPerPageCategory(funding));
			funding.setPercentage(100.0*funding.getFunding_amount()/funding.getFunding_goal());	
			funding.setRestdays((funding.getFunding_edate().getTime()-funding.getFunding_wdate().getTime())/(1000*60*60*24));
		}	
	
		return new FundingVo(currentPage, totalCount, pageSize, filterBy, categoryBy, list, listCategoryUsed);
	}
	
	@Override
	public Funding getFunding(long funding_index) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FundingVo getFundingVoByFilter(String filter, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FundingVo getFundingVoByKeyword(String keyword, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void write(Funding funding) {
		// TODO Auto-generated method stub

	}

	@Override
	public void edit(Funding funding) {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(long funding_index) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Funding_category> getFunding_category() {
		List<Funding_category> list = fundingMapper.getFunding_category();
		return list;
	}

	@Override
	public List<Funding> getRelatedFunding(long categoryCode) {
		List<Funding> list = fundingMapper.getRelatedFunding(categoryCode);
		return list;
	}

	@Override
	public List<Funding_qna> getFunding_qna(Funding_qnaVo funding_qnaVo) {
		List<Funding_qna> list = fundingMapper.getFunding_qna(funding_qnaVo);
		return list;
	}

	@Override
	public long getTotalCount_qna(long funding_index) {
		long totalCount = fundingMapper.getTotalCount_qna(funding_index);
		return totalCount;
	}

	@Override
	public void write_qna(Funding_qna funding_qna) {
		log.info("!!!!!!!!!!!!!!impli");
		log.info("!!!!!!!!!!!!!!impli");
		log.info("!!!!!!!!!!!!!!impli");
		log.info(funding_qna);
		fundingMapper.write_qna(funding_qna);
	
	}

	@Override
	public Funding_qna getFunding_qna_detail(long funding_qna_index) {
		Funding_qna funding_qna = fundingMapper.getFunding_qna_detail(funding_qna_index);
		return funding_qna;
	}

	@Override
	public void editQna(Funding_qna funding_qna) {
		fundingMapper.editQna(funding_qna);
	}

	@Override
	public void answerQna(Funding_qna funding_qna) {
		fundingMapper.answerQna(funding_qna);
		
	}

	@Override
	public void answerEditQna(Funding_qna funding_qna) {
		fundingMapper.answerEditQna(funding_qna);
		
	}

	@Override
	public void answerDelete(long funding_qna_index) {
		fundingMapper.answerDelete(funding_qna_index);
		
	}

	@Override
	public String getCreatorProfilContent(String creator_name) {
		String creatorProfilContent = fundingMapper.getCreatorProfilContent(creator_name);
		return creatorProfilContent;
	}
	
	@Override
	public String getCreatorProfilPhoto(String creator_name) {
		String creatorProfilPhoto = fundingMapper.getCreatorProfilPhoto(creator_name);
		return creatorProfilPhoto;
	}

	@Override
	public void qnaDelete(long funding_qna_index) {
		fundingMapper.qnaDelete(funding_qna_index);
		
	}

	@Override
	public Date getFunding_edate_cancel(long funding_qna_index) {
		 Date funnding_edate_cancel = fundingMapper.getFunding_edate_cancel(funding_qna_index);
		return funnding_edate_cancel;
	}
	@Override
	public Date getFunding_edate_payment(long funding_qna_index) {
		 Date funnding_edate_payment = fundingMapper.getFunding_edate_payment(funding_qna_index);
		return funnding_edate_payment;
	}

}
