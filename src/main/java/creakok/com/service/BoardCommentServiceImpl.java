package creakok.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import creakok.com.domain.Comment;
import creakok.com.mapper.BoardCommentMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardCommentServiceImpl implements BoardCommentService {
	@Autowired
	private BoardCommentMapper mapper;
	
	// 댓글조회
	@Override
	public List<Comment> getComment(long board_index) {
		List<Comment> comments = mapper.getComment(board_index);
		return comments;
	}
		
	//댓글 작성
	@Override
	public void writeComment(Comment comment) {
		mapper.writeComment(comment);
	}
	
	// 특정 댓글 조회
	@Override
	public Comment getSelectedComment(long comment_index) {
		return mapper.getSelectedComment(comment_index);
	}
	
	// 댓글 수정
	@Override
	public void updateComment(long comment_index, String comment_content) {
		mapper.updateComment(comment_index, comment_content);
	}
	
	// 댓글 삭제
	@Override
	public void deleteComment(long comment_index) {
		mapper.deleteComment(comment_index);
	}
	

}
