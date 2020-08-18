package creakok.com.domain;

public class LoginResult {
	public static int PASS_COMPARE_SAME = 0;
	public static int PASS_COMPARE_DIFF = 1;
	
	public static final int LOGIN_OK = 0;
	public static final int LOGIN_PASSWORD_FAIL = 1;
	public static final int LOGIN_EMAIL_NOT_EXIST = 2;
	public static final int LOGIN_EMAIL_EXIST = 3;
}
