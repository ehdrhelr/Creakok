package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Funding {
	private long funding_index;
	private String creator_name;
	private String funding_subject;
	private long funding_category_code;
	private String funding_repre_pic;
	private String funding_detail_pic;
	private long funding_goal;
	private long funding_amount;
	private Date funding_wdate;
	private Date funding_edate;
	private long funding_people;
	private long funding_like_number;
	private String funding_keyword;
	private String funding_option;
	private String funding_category_name;
	private double percentage;
	private long restdays; 
	
}
