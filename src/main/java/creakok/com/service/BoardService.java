package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.vo.ListResult;

public interface BoardService {
	ListResult getListResultS(int currentPage, int pageSize);
	Board contentS(long board_index);
	void insertS(Board board);
	
	Board getBoard(long board_index);
	void edit(Board board);
	
	List<Board> selectBySubjectS(String board_subject);
	List<Board> selectByNameS(String member_name);
}

