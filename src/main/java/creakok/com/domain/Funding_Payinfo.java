package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Funding_Payinfo {
	private String funding_indexStr;
	private String payinfo_name;
	private String payinfo_email;
	private String payinfo_phonenumber;
	private String payinfo_amountpayresult;
	private String fundingname;
}
