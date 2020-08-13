package creakok.com.domain;

import java.util.Random;

public class Nickname {
	
	public static String[] FirstNickname = {
		"자주 ",
		"오늘따라 ",
		"갑자기 ",
		"꾸준히 ",
		"매일 ",
		
		"대낮에 ",
		"느긋하게 ",
		"아침마다 ",
		"가끔 ",
		"아무 말없이 "
	};
	
	public static String[] SecondNickname = {
		"잠수 타는 ",
		"잠들어버린 ",
		"심심한 ",
		"귀찮은 ",
		"시무룩한 ",
		
		"바쁜 ",
		"소심한 ",
		"신난 ",
		"시크한 ",
		"뿔난 "
	};
	
	public static String[] ThirdNickname = {
		"감자",
		"고구마",
		"오이",
		"상추",
		"깻잎",
		
		"장아찌",
		"마늘",
		"강낭콩",
		"대파",
		"양파"
	};
	
	
	public static String makeNickname(long member_index) {
		Random r = new Random();
		int i = r.nextInt(FirstNickname.length);
		String sb = FirstNickname[i];
		i = r.nextInt(SecondNickname.length);
		sb += SecondNickname[i];
		i = r.nextInt(ThirdNickname.length);
		sb += ThirdNickname[i];
		sb += String.valueOf(member_index);
		return sb;
	}

}
