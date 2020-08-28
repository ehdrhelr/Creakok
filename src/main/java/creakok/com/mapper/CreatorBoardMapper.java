package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;

public interface CreatorBoardMapper {
	List<Board> getListResult(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, 
			@Param("board_filterBy") String board_filterBy, @Param("creator_name") String creator_name);
	
	int count();
	Board content(long board_index);
	// 글 작성
	public int insertBoard(Board board);
	// 조회수 +1
	public boolean plusView(long board_index);
	// 좋아요 +1
	public boolean plusLike(long board_index);
	// 모든 크리에이터 정보 얻기
	public List<Creator> getCreatorName();
	// 특정 크리에이터 조회
	public Creator getCreator(String creator_name);
	// 글삭제
	void deleteBoard(long board_index);
	// 글 검색 by index(안쓰나)
	Board selectByIndex(long board_index);
	// update
	void update(Board board);
	
	// 글 검색
	List<Board> search(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, 
			@Param("board_filterBy") String board_filterBy, @Param("board_c_code") String c_code, 
			@Param("board_searchName") String board_searchName, @Param("creator_name") String creator_name);
	int countBySearch(@Param("board_c_code") String c_code, 
			@Param("board_searchName") String board_searchName, @Param("creator_name") String creator_name);
	// 크리에이터별 count하기
	int countByCreator(@Param("creator_name") String creator_name);
	
	// 크리에이터 정보 조회(굿즈에서 사용)
	Creator getContentByCreator (@Param("creator_name") String creator_name);
	// 현재 글보다 큰 순번을 가진 글(with the same refer)의 순번을 +1 씩 증가시킨다.
	void updateSunbun(Board board);
	// 현재 게시글의 순번에 +1을 해주고 insert한다.
	void insertAnswer(Board board);
	/*
	// 원글(답글도 포함)의 답글을 작성할 때 원글의 level보다 1 증가시킨다.
	void updateLevel(Board board);
	*/
	
	// 크리에이터 정보 조회(굿즈에서 사용)
	Creator getContentByCreator (@Param("creator_name") String creator_name);
}
