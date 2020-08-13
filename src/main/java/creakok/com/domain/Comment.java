package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Comment {
	private long comment_index;
	private long board_index;
	private String member_name;
	private String member_email;
	private String comment_content;
	private Date comment_wdate;
	private String member_profile_pic;
}
