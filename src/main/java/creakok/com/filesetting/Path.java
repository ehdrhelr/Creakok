package creakok.com.filesetting;

public class Path {

	public static final String SOCIAL_LOGIN_ROOT = "http://127.0.0.1:8090"; //local
	//public static final String SOCIAL_LOGIN_ROOT = "http://creakok.cafe24.com"; //Cafe24

	
	public static final String joohyunann_path = "/Users/joohyunann/git/Creakok/src/main/webapp/resources";
	public static final String shion_path = "/Users/shion/git/Creakok/src/main/webapp/resources";
	public static final String jihee_path = "C:/Users/bit/git/Creakok/src/main/webapp/resources";
	public static final String hcbae_path = "C:/Users/Trajanus/git/Creakok_master/src/main/webapp/resources";
	public static final String CAFE24_PATH = "/creakok/tomcat/webapps/ROOT/resources";
	
	//위 리스트 중에 하나로 STORE_PATH만 바꾸면 된다.
	public static final String STORE_PATH = hcbae_path;
	
	
	public static final String FUNDING_PATH = "/img/funding/";
	public static final String GOODS_PATH = "/img/goods/";
	public static final String COMMUNITY_PATH = "/img/community/";
	
 	//cafe24
	public static final String FILE_STORE = STORE_PATH+FUNDING_PATH;
	public static final String FILE_STORE_SHORT = FUNDING_PATH;
	public static final String IMG_STORE_COMMUNITY = STORE_PATH+COMMUNITY_PATH;
	public static final String IMG_STORE_COMMUNITY_SHORT = COMMUNITY_PATH;
	public static final String FILE_STORE_GOODS = STORE_PATH+GOODS_PATH;
/*	
 	//원래설정
	//public static final String FILE_STORE="C:/Users/bit/git/Creakok_master/src/main/webapp/resources/img/funding/"; 
	public static final String FILE_STORE="C:/Users/bit/git/Creakok/src/main/webapp/resources/img/funding/"; // 지희 test용
	//public static final String FILE_STORE="/Users/joohyunann/git/Creakok/src/main/webapp/resources/img/funding/";
	public static final String FILE_STORE_SHORT="img/funding/";
	public static final String IMG_STORE_COMMUNITY = "C:/Users/bit/git/Creakok_master/src/main/webapp/resources/img/community/";
	public static final String IMG_STORE_COMMUNITY_SHORT = "/img/community/";
    public static final String FILE_STORE_GOODS="C:/Users/bit/git/Creakok/src/main/webapp/resources/img/goods/";
*/
}