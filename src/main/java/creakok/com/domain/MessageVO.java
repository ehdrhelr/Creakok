package creakok.com.domain;

import java.util.Date;

import com.google.gson.Gson;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MessageVO {

	private String message_id;
	private String message_sender;
	private String message_receiver;
	private String message_content;
	private Date message_sendTime;
	private Date message_readTime;
	private String CHATROOM_chatroom_id;
	private String USER_user_id;
	private String TUTOR_USER_user_id;
	private int CLASS_class_id;
	private String user_profileImagePath;
	private String receiver_user_profileImagePath;
	private String user_name;
	private String receiver_user_name;
	private String class_name;
	private int class_id;
	private String TUTOR_tutor_id;
	private String tutor_name;
	private String tuti_id;
	private int unReadCount;
	
	public static MessageVO convertMessage(String source) {
		MessageVO message = new MessageVO();
		Gson gson = new Gson();
		message = gson.fromJson(source,  MessageVO.class);
		return message;
	}

	@Override
	public String toString() {
		return "MessageVO [message_id=" + message_id + ", message_sender=" + message_sender + ", message_receiver="
				+ message_receiver + ", message_content=" + message_content + ", message_sendTime=" + message_sendTime
				+ ", message_readTime=" + message_readTime + ", CHATROOM_chatroom_id=" + CHATROOM_chatroom_id
				+ ", USER_user_id=" + USER_user_id + ", TUTOR_USER_user_id=" + TUTOR_USER_user_id + ", CLASS_class_id="
				+ CLASS_class_id + ", user_profileImagePath=" + user_profileImagePath
				+ ", receiver_user_profileImagePath=" + receiver_user_profileImagePath + ", user_name=" + user_name
				+ ", receiver_user_name=" + receiver_user_name + ", class_name=" + class_name + ", class_id=" + class_id
				+ ", TUTOR_tutor_id=" + TUTOR_tutor_id + ", tutor_name=" + tutor_name + ", tuti_id=" + tuti_id
				+ ", unReadCount=" + unReadCount + "]";
	}
	
}
