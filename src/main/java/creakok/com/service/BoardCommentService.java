package creakok.com.service;

import java.util.List;

import creakok.com.domain.Comment;

public interface BoardCommentService {
	// 댓글 조회
	List<Comment> getComment(long board_index);
	// 댓글 작성
	void writeComment(Comment comment);
	// 특정 댓글 조회
	Comment getSelectedComment(long comment_index);
	// 댓글 수정
	void updateComment(long comment_index, String comment_content);
	// 댓글 삭제
	void deleteComment(long comment_index);
}
