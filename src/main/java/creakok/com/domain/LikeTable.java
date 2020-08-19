package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LikeTable {
	private long like_index;
	private long like_type_code;
	private long like_content_index;
	private String like_member_email;
}
