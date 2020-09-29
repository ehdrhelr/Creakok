package creakok.com.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Creator {
	private String creator_name;
	private String member_email;
	private String creator_profile_content;
	private String creator_profile_photo;
	private String creator_banner_photo;
	private String creator_link_youtube;
	private String creator_link_instagram;
	private String creator_goods_index;
	private String creator_funding_index;
	private String creator_main_content;
	
	// 크리에이터 컨텐츠 3개를 아래의 변수로 받아서 고유id만 뽑아서 '@'를 구분자로 creator_main_content에 저장한다.
	private String creator_content1;
	private String creator_content2;
	private String creator_content3;
}
