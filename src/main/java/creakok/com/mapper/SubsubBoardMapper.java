package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;

public interface SubsubBoardMapper {
	List<Board> getListResult(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("board_filterBy") String board_filterBy);
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
	// 내용
	Board selectByIndex(long board_index);
	// update
	void update(Board board);
	
	// 검색
	List<Board> search(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, 
			@Param("board_filterBy") String board_filterBy, @Param("board_c_code") String c_code, 
			@Param("board_searchName")String board_searchName);
	// 댓글 조회
	List<Comment> getComment(long board_index);

}
