package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Goods_QnA {
	private long goods_qna_index;
	private long goods_index;
	private String member_name;
	private String member_profile_pic;
	private Date goods_qna_wdate;
	private String goods_qna_subject;
	private String goods_qna_content;
	private String creator_name;
	private String goods_qna_answer;
	private Date goods_qna_adate;
	private long qna_list_number; //문의 글 번호
}
