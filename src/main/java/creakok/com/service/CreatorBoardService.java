package creakok.com.service;

import java.util.List;

import creakok.com.domain.Board;
import creakok.com.domain.Comment;
import creakok.com.domain.Creator;
import creakok.com.vo.ListResult;

public interface CreatorBoardService {
	ListResult getListResultS(int currentPage, int pageSize, String filterBy, String creator_name);
	Board contentS(long board_index);
<<<<<<< HEAD
	void insertS(Board board);
	// �Խù� �ۼ�
<<<<<<< HEAD
=======
	// 글 작성
>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
>>>>>>> refs/heads/newmaster_jhann
	public int insertBoard(Board board);
<<<<<<< HEAD
<<<<<<< HEAD
	// ��ȸ�� +1
=======
	// 조회수 +1
>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
	// ��ȸ�� +1
>>>>>>> refs/heads/newmaster_jhann
	public boolean plusView(long board_index);
<<<<<<< HEAD
<<<<<<< HEAD
	// ���ƿ� +1
=======
	// 좋아 +1
>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
	// ���ƿ� +1
>>>>>>> refs/heads/newmaster_jhann
	public boolean plusLike(long board_index);
<<<<<<< HEAD
<<<<<<< HEAD
	// ũ�������� �̸� ��ȸ
=======
	// 크리에이터 정보 조회
>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
	// ũ�������� �̸� ��ȸ
>>>>>>> refs/heads/newmaster_jhann
	public List<Creator> getCreatorName();
<<<<<<< HEAD
<<<<<<< HEAD
	// ����
=======
	// 특정 크리에이터 정보 조회
	public Creator getCreator(String creator_name);
	// 특정 글 삭제
>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
	// ����
>>>>>>> refs/heads/newmaster_jhann
	void deleteBoard(long board_index);

<<<<<<< HEAD
<<<<<<< HEAD
	// ����
=======
	// 특정 글 가져오기
>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
	// ����
>>>>>>> refs/heads/newmaster_jhann
	Board getBoard(long board_index);
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> refs/heads/newmaster_jhann
	// �˻� new
	ListResult getListResultBySearchS(int currentPage, int pageSize, String filterBy, String c_code, String searchName);
	// ����
<<<<<<< HEAD
=======
	// 글 검색하기 
	ListResult getListResultBySearchS(int currentPage, int pageSize, String filterBy, String c_code, String searchName, String creator_name);
	// 글 수정하기
>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
>>>>>>> refs/heads/newmaster_jhann
	void edit(Board board);
<<<<<<< HEAD
	/*
	// ��� ��ȸ
	List<Comment> getComment(long board_index);
	// ��� �ۼ�
	void writeComment(Comment comment);
	*/
	
	//크리에이터 정보 조회(굿즈에서 사용)
	public Creator getContentByCreator(String creator_name);
<<<<<<< HEAD
=======
	
	// 크리에이터 정보 조회(굿즈에서 사용)
	public Creator getContentByCreator(String creator_name);
	// 현재 글보다 큰 순번을 가진 글(with the same refer)의 순번을 +1 씩 증가시킨다.
	public void updateSunbun(Board board);
	// 현재 게시글의 순번에 +1을 해주고 insert한다.
	public void insertAnswer(Board board);

>>>>>>> branch 'master' of https://github.com/daumhch/Creakok.git
=======
>>>>>>> refs/heads/newmaster_jhann
}

