package creakok.com.domain;

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
}
