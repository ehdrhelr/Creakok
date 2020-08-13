package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	public static int PASS_COMPARE_SAME = 0;
	public static int PASS_COMPARE_DIFF = 1;
	
	private String member_email;
	private String member_name;
	private long member_category_code;
	private long member_origin_code;
	private String member_password;
	
	private String member_mylike;
	private String member_mycreator;
	private String member_mycart;
	private String member_myorder;
	private String member_myfunding;
	
	private String member_profile_pic;
	private Date member_joindate;
	private long member_index;
	
}
