package creakok.com.domain;

import java.sql.Date;
import java.util.List;

import creakok.com.vo.Funding_qnaVo;
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
	private List<Funding> listrelatedFunding;
	private Funding_qnaVo funding_qnaVo;
	private long funding_qna_totalCount;
	private String creator_profil_content;
	private String creator_profil_photo;
	private int funding_edate_month;
	private int funding_edate_cancel;
	private int funding_edate_payment;
	//private List<Funding_qna> funding_qna;
	
}
