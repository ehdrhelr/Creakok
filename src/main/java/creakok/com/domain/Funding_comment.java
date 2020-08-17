package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Funding_comment {
	private long funding_index;
	private String member_profile_pic;
	private String member_name;
	private Date funding_comment_wdate;
	private String funding_comment_content;
	private long funding_comment_index;
}
