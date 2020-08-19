package creakok.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.LikeTable;
import creakok.com.mapper.LikeTableMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class LikeTableServiceImpl implements LikeTableService {

	@Autowired
	private LikeTableMapper ltm;
	
	@Override
	public long getLikeNumByTypeAndContentIndex(LikeTable likeTable) {
		return ltm.selectByTypeAndContentIndex(likeTable);
	}

	@Override
	public long setLikeNum(LikeTable likeTable) {
		return ltm.insertLikeTable(likeTable);
	}
	
	@Override
	public void deleteLike(LikeTable likeTable) {
		ltm.deleteLike(likeTable);
	}

}
