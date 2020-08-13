package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member_origin {
	private long member_origin_code;
	private String member_origin_name;
	
	public static long SIGNUP_NORMAL = 100L;
	public static long SIGNUP_GOOGLE = 101L;
	public static long SIGNUP_NAVER = 102L;
	public static long SIGNUP_KAKAO = 103L;

}
