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
	private Date board_wdate;
	private long board_view;
	private long board_like;
	private String member_profile_pic;
}
