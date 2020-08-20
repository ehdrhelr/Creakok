package creakok.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import creakok.com.domain.Comment;

public interface BoardCommentMapper {
	
	// 댓글 조회
	List<Comment> getComment(long board_index);
	// 댓글 작성
	void writeComment(Comment comment);
	// 특정 댓글 조회
	Comment getSelectedComment(long comment_index);
	
	// 댓글 수정
	void updateComment(@Param("comment_index") long comment_index, @Param("comment_content") String comment_content);
	
	// 댓글 삭제
	void deleteComment(long comment_index);

}
