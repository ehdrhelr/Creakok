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
	void insert(Board board);
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
			@Param("board_searchName")String board_searchName);
	int countBySearch(@Param("board_c_code") String c_code, 
			@Param("board_searchName")String board_searchName);
	
	
	// 크리에이터 정보 조회(굿즈에서 사용)
	Creator getContentByCreator (@Param("creator_name") String creator_name);
}
