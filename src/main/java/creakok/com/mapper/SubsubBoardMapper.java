package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Board;
import creakok.com.domain.Creator;
import creakok.com.domain.Like;

public interface SubsubBoardMapper {
	List<Board> getListResult(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize);
	// 조회수 정렬
	List<Board> getListResultByView(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize);
	// 좋아요수 정렬
	List<Board> getListResultByLike(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize);
	int count();
	Board content(long board_index);
	void insert(Board board);
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
	
	Board selectByIndex(long board_index);
	// update
	void update(Board board);
	
	// for Ajax
	List<Board> selectBySubject(String board_subject);
	List<Board> selectByName(String member_name);

}
