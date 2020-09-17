package creakok.com.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {
	private String user_id;
	private String user_email;
	private String user_name;
	private String user_password;
	private String user_profileImagePath;
	private int user_sex;
	private String user_birth;
	private String user_job;
	private String user_phoneNumber;
	private String user_authCode;
	private String user_authStatus;
	private String user_isTutor;
	private String user_status;
	private String pageNumber;
	private String rnum;
	private Date user_log;
	private int ages;
	private int age_count;
	private int user_isAdmin;
	private int unReadCount;
	@Override
	public String toString() {
		return "UserVo [user_id=" + user_id + ", user_email=" + user_email + ", user_name=" + user_name
				+ ", user_password=" + user_password + ", user_profileImagePath=" + user_profileImagePath
				+ ", user_sex=" + user_sex + ", user_birth=" + user_birth + ", user_job=" + user_job
				+ ", user_phoneNumber=" + user_phoneNumber + ", user_authCode=" + user_authCode + ", user_authStatus="
				+ user_authStatus + ", user_isTutor=" + user_isTutor + ", user_status=" + user_status + ", pageNumber="
				+ pageNumber + ", rnum=" + rnum + ", user_log=" + user_log + ", ages=" + ages + ", age_count="
				+ age_count + ", user_isAdmin=" + user_isAdmin + ", unReadCount=" + unReadCount + "]";
	}
	
	
	
}
