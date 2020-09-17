package creakok.com.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChatRoomVO {
	private String chatroom_id;
	private String USER_user_id;
	private String TUTOR_USER_user_id;
	private int CLASS_class_id;
	
	@Override
	public String toString() {
		return "ChatRoomVO [chatroom_id=" + chatroom_id + ", USER_user_id=" + USER_user_id + ", TUTOR_USER_user_id="
				+ TUTOR_USER_user_id + ", CLASS_class_id=" + CLASS_class_id + "]";
	}
}
