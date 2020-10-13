package creakok.com.domain;

public class Language {
	public static int KOREAN = 0;
	public static int USA = 1;
	public static int FRANCE = 2;
	
	public static String[][] arrayLang = {
		//5개마다 한 줄 씩 띄우고, 되도록 페이지나 영역별로 모아놓는다.
		//작성할 때에는 arrayLang배열에 사용한 이름이 있는지 꼭 확인해보고 사용하자.
			
		//header start
		{"프로젝트 만들기", "Create Project", "Lancer mon projet"},
		{"언어", "Language", "Langue"},
		{"로그인", "Login", "Se connecter"},
		{"가입", "Join", "S'inscrire"},
		{"로그아웃","Logout","Se déconnecter"},
		
		{"마이페이지","My page","Ma page"},
		{"장바구니","Cart","Panier"},
		{"펀딩","Funding","Tous les projets"},
		{"굿즈","Goods","Shop"},
		{"커뮤니티","Community","Communauté"},
		
		{"크리콕","About","À propos de"},
		//header end
		
		//footer start
		{"평일 10:00~17:00 (점심시간 12:00~13:00)","Weekdays 10:00~17:00 (Lunch time 12:00~13:00)","En semaine 10: 00 ~ 17: 00 (heure du déjeuner 12: 00 ~ 13: 00)"},
		{"토/일/공휴일 휴무","Closed on Sat/Sun/Holidays","Fermé sam / dim / jours fériés"},
		{"(주)크리콕 | 소속 : 비트캠프 신촌센터","Creekok Co., Ltd. | Affiliation: Bit Camp Shinchon Center","Creekok Co., Ltd. | Affiliation: Bit Camp Shinchon Center"},
		{"서울 마포구 백범로 23 구프라자 3층","3F, Gu Plaza, 23 Baekbeom-ro, Mapo-gu, Seoul","3F, Gu Plaza, 23 Baekbeom-ro, Mapo-gu, Seoul"},
		//footer end
	};
}
