package creakok.com.mapper;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.vo.PagingBoardVo;

public interface DarkKnightBoardMapper {
	List<Board> selectPerPage(PagingBoardVo pagingBoardVo);
	long selectCount();
	Board selectBySeq(long index);
	void insert(Board board);
	
	/*
	void insertF(Board board);
	void insert1(Files files);
	List<String> selectFiles(long seq);
	
	List<Board> selectByName(String writer);
	*/
}
