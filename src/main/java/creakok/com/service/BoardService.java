package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.domain.Creator;
import creakok.com.domain.Like;
import creakok.com.vo.ListResult;

public interface BoardService {
	ListResult getListResultS(int currentPage, int pageSize);
	// 조회수 정렬
	ListResult getListResultByViewS(int currentPage, int pageSize);
	// 좋아요순 정렬
	ListResult getListResultByLikeS(int currentPage, int pageSize);
	Board contentS(long board_index);
	void insertS(Board board);
	// 게시물 작성
	public int insertBoard(Board board);
	// 조회수 +1
	public boolean plusView(long board_index);
	// 좋아요 +1
	public boolean plusLike(long board_index);
	// 크리에이터 이름 조회
	public List<Creator> getCreatorName();
	// 삭제
	void deleteBoard(long board_index);
	
	// 검색 서비스
	Board getBoard(long board_index);
	void edit(Board board);
	
	List<Board> selectBySubjectS(String board_subject);
	List<Board> selectByNameS(String member_name);
}

