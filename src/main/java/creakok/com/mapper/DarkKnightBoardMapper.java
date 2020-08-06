package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Board;

public interface DarkKnightBoardMapper {
	List<Board> getListResult(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize);
	int count();
	Board content(long board_index);
	void insert(Board board);
	
	Board selectByIndex(long board_index);
	void update(Board board);
	
	// for Ajax
	List<Board> selectBySubject(String board_subject);
	List<Board> selectByName(String member_name);
}
