package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.domain.Creator;
import creakok.com.domain.Like;
import creakok.com.vo.ListResult;

public interface BoardService {
	ListResult getListResultS(int currentPage, int pageSize, String filterBy);
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

	// 내용
	Board getBoard(long board_index);
	// 검색 new
	ListResult getListResultBySearchS(int currentPage, int pageSize, String filterBy, String c_code, String searchName);
	// 수정
	void edit(Board board);

}

