package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Funding_payinfo {
	private long funding_payinfo_index;
	private String funding_payinfo_name;
	private String member_email;
	private long funding_payinfo_phonenumber;
	private long funding_payinfo_amountpay;
	private long funding_index;
	private String funding_subject; 
	private String success_num;
	private String success_id;
	private String success_card_num;
	private String success_pay;
	private String funding_ok;
	private String funding_datepayment;
	private long funding_list_number; //문의 글 번호
}
