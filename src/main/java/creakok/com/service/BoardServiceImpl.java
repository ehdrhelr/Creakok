package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Board;
import creakok.com.mapper.DarkKnightBoardMapper;
import creakok.com.vo.ListResult;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private DarkKnightBoardMapper mapper;
	
	@Override
	public ListResult getListResultS(int currentPage, int pageSize) {
		List<Board> list = (List<Board>)mapper.getListResult(currentPage, pageSize);
		int count = mapper.count();
		return new ListResult(currentPage, count, pageSize, list);
	}
	
	@Override
	public Board contentS(long board_index) {
		Board board = mapper.content(board_index);
		return board;
	}
	
	@Override
	public void insertS(Board board) {
		mapper.insert(board);
	}
	
	@Override
	public Board getBoard(long board_index) {
		return mapper.selectByIndex(board_index);
	}
	

	// for Ajax
	public List<Board> selectBySubjectS(String board_subject) {
		return mapper.selectBySubject(board_subject);
	}
	
	public List<Board> selectByNameS(String member_name) {
		return mapper.selectByName(member_name);
	}

	@Override
	public void edit(Board board) {
		mapper.update(board);
		
	}
}
