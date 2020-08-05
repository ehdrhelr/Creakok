package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.vo.PagingBoardVo;

public interface BoardService {
	List<Board> selectPerPageS(PagingBoardVo pagingBoardVo);
	long selectCountS();
	Board selectBySeqS(long index);
}

