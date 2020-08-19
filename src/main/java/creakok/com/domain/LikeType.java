package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LikeType {
	private long like_type_code;
	private String like_type_name;
	
	public static long FUNDING_LIKE = 1;
	public static long GOODS_LIKE = 2;
	public static long COMMUNITY_LIKE = 3;
	
	public static long LIKE_NOT_EXIST = 0;
	public static long LIKE_EXIST = 1;
}
