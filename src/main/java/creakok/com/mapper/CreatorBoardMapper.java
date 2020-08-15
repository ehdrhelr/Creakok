package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;

public interface CreatorBoardMapper {
	List<Board> getListResult(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("board_filterBy") String board_filterBy);
	int count();
	Board content(long board_index);
	void insert(Board board);
	// �Խù� �ۼ�
	public int insertBoard(Board board);
	// ��ȸ�� +1
	public boolean plusView(long board_index);
	// ���ƿ� +1
	public boolean plusLike(long board_index);
	// ũ�������� �̸� ��ȸ
	public List<Creator> getCreatorName();
	
	// ����
	void deleteBoard(long board_index);
	// ����
	Board selectByIndex(long board_index);
	// update
	void update(Board board);
	
	// �˻�
	List<Board> search(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, 
			@Param("board_filterBy") String board_filterBy, @Param("board_c_code") String c_code, 
			@Param("board_searchName")String board_searchName);
	// ��� ��ȸ
	List<Comment> getComment(long board_index);

}
