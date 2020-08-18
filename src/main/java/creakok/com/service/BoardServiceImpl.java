package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;
import creakok.com.mapper.CreatorBoardMapper;
import creakok.com.vo.ListResult;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private CreatorBoardMapper mapper;
	
	@Override
	public ListResult getListResultS(int currentPage, int pageSize, String filterBy) {
		List<Board> list = (List<Board>)mapper.getListResult(currentPage, pageSize, filterBy);
		int count = mapper.count();
		return new ListResult(currentPage, count, pageSize, list, filterBy);
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
	public int insertBoard(Board board) {
		return mapper.insertBoard(board);
	}
	
	@Override
	public Board getBoard(long board_index) {
		return mapper.selectByIndex(board_index);
	}
	
	@Override
	public boolean plusView(long board_index) {
		return mapper.plusView(board_index);
	}
	
	@Override
	public boolean plusLike(long board_index) {
		return mapper.plusLike(board_index);
	}
	
	@Override
	public List<Creator> getCreatorName() {
		return mapper.getCreatorName();
	}
	// �뜝�룞�삕�뜝�룞�삕
	@Override
	public void deleteBoard(long board_index) {
		mapper.deleteBoard(board_index);
	}
	// �뜝�룞�삕�뜝�룞�삕
	@Override
	public void edit(Board board) {
		mapper.update(board);
	}
	// �뜝�떙�궪�삕
	@Override
	public ListResult getListResultBySearchS(int currentPage, int pageSize, String filterBy, String c_code, String searchName) {
		List<Board> list = (List<Board>)mapper.search(currentPage, pageSize, filterBy, c_code, searchName);
		int countBySearch = mapper.countBySearch(c_code, searchName);
		log.info("@@@@@@@@@@@@@@@@@@@@"+countBySearch+"@@@@@@@@@@@");
		return new ListResult(currentPage, countBySearch, pageSize, list, filterBy);
	}
	// �뜝�룞�삕�뜝�룞�삕�뜝�떕占�
	public List<Comment> getComment(long board_index) {
		List<Comment> comments = mapper.getComment(board_index);
		return comments;
	}
	
	//댓글 작성
	public void writeComment(Comment comment) {
		mapper.writeComment(comment);
	}
}
