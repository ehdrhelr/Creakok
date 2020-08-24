package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;
import creakok.com.vo.ListResult;

public interface CreatorBoardService {
	ListResult getListResultS(int currentPage, int pageSize, String filterBy, String creator_name);
	Board contentS(long board_index);
	void insertS(Board board);
	// �Խù� �ۼ�
	public int insertBoard(Board board);
	// ��ȸ�� +1
	public boolean plusView(long board_index);
	// ���ƿ� +1
	public boolean plusLike(long board_index);
	// ũ�������� �̸� ��ȸ
	public List<Creator> getCreatorName();
	// Ư�� ũ�������� ���� ��ȸ
	public Creator getCreator(String creator_name);
	// ����
	void deleteBoard(long board_index);

	// ����
	Board getBoard(long board_index);
	// �˻� new
	ListResult getListResultBySearchS(int currentPage, int pageSize, String filterBy, String c_code, String searchName);
	// ����
	void edit(Board board);
	/*
	// ��� ��ȸ
	List<Comment> getComment(long board_index);
	// ��� �ۼ�
	void writeComment(Comment comment);
	*/
	
	//크리에이터 정보 조회(굿즈에서 사용)
	public Creator getContentByCreator(String creator_name);
}

