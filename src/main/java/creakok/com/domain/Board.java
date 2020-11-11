package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	private long board_index;
	private String board_subject;
	private String board_content;
	private String member_name;
	private String member_email;
	private Date board_wdate;
	private long board_view;
	private long board_like;
	private String member_profile_pic;
	private String creator_name;
	private long board_refer;
	private long board_level;
	private long board_sunbun;
	/* 계층형을 위해 추가 */
	private long board_parent;
	private long level;
	/* 게시글 번호 연속적으로 표시 */
	private long board_list_number;
}
