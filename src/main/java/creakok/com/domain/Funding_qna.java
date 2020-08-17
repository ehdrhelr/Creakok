package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Funding_qna {
	private long funding_qna_index;
	private long funding_index;
	private String member_name;
	private String member_profile_pic;
	private String funding_qna_content;
	private Date funding_qna_wdate;
	private String funding_qna_answer;
	private Date funding_qna_adate;
}
