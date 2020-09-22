package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member_category {
	private long member_category;
	private String member_category_name;
	
	public static long MEMBER_CREATOR = 0L;
	public static long MEMBER_NORMAL = 1L;
	
	public static final String SUPER_ACCOUNT="creakok_super@cafe24.com";
}
