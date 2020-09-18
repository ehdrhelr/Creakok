package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Creator;
import creakok.com.domain.Funding;
import creakok.com.domain.Goods;
import creakok.com.mapper.AboutMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AboutServiceImpl implements AboutService {
	@Autowired
	private AboutMapper aboutMapper;
	
	@Override
	public List<Goods> selectGoodsTop3() {
		return aboutMapper.selectGoodsTop3();
	}

	@Override
	public List<Funding> selectFundingTop3(){
		return aboutMapper.selectFundingTop3();
	}
	
	@Override
	public List<Creator> selectCreator3(){
		return aboutMapper.selectCreator3();
	}
	
	@Override
	public long selectFundingCount() {
		return aboutMapper.selectFundingCount();
	}
	
	@Override
	public long selectGoodsCount() {
		return aboutMapper.selectGoodsCount();
	}
	
	@Override
	public long selectCreatorCount() {
		return aboutMapper.selectCreatorCount();
	}
}
