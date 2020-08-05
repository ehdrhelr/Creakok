package creakok.com.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
	private String member_email;
	private String member_name;
	private long member_category;
	private long member_origin;
	private String member_password;
	
	private String member_mylike;
	private String member_mycreator;
	private String member_mycart;
	private String member_myorder;
	private String member_myfunding;
	
	private String member_profile_pic;
	private Date member_joindate;
	
}
