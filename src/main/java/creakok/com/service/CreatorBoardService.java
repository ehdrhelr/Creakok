package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;
import creakok.com.vo.ListResult;

public interface CreatorBoardService {
	ListResult getListResultS(int currentPage, int pageSize, String filterBy, String creator_name);
	Board contentS(long board_index);
	// 글 작성
	public int insertBoard(Board board);
	// 조회수 +1
	public boolean plusView(long board_index);
	// 좋아 +1
	public boolean plusLike(long board_index);
	// 크리에이터 정보 조회
	public List<Creator> getCreatorName();
	// 특정 크리에이터 정보 조회
	public Creator getCreator(String creator_name);
	// 특정 글 삭제
	void deleteBoard(long board_index);
	// 특정 글 가져오기
	Board getBoard(long board_index);
	// 글 검색하기 
	ListResult getListResultBySearchS(int currentPage, int pageSize, String filterBy, String c_code, String searchName, String creator_name);
	// 글 수정하기
	void edit(Board board);
	
	// 크리에이터 정보 조회(굿즈에서 사용)
	public Creator getContentByCreator(String creator_name);
	// 현재 글보다 큰 순번을 가진 글(with the same refer)의 순번을 +1 씩 증가시킨다.
	public void updateSunbun(Board board);
	// 현재 게시글의 순번에 +1을 해주고 insert한다.
	public void insertAnswer(Board board);
	// 정렬 기능
	ListResult getListResultByFilterS(int currentPage, int pageSize, String filterBy, String creator_name);
	
	// 크리에이터로 커뮤니티 검색(Index)
	List<Creator> searchCommunity(String creator_name);
}

