package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Board;
import creakok.com.mapper.DarkKnightBoardMapper;
import creakok.com.vo.PagingBoardVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private DarkKnightBoardMapper mapper;
	@Override
	public List<Board> selectPerPageS(PagingBoardVo pagingBoardVo) {
		return mapper.selectPerPage(pagingBoardVo);
	}
	@Override
	public long selectCountS() {
		return mapper.selectCount();
	}
	@Override
	public Board selectBySeqS(long index) {
		return mapper.selectBySeq(index);
	}
}
