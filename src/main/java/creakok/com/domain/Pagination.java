package creakok.com.domain;

import lombok.Data;

@Data
public class Pagination {
	private int pageSize   = 20; // 한 페이지당 게시글 수
	private int rangeSize  = 10; // 한 블럭(range)당 페이지 수 
	private int curPage    = 1;  // 현재 페이지
	private int curRange   = 1;  // 현재 블럭(range)
	private int listCnt;         // 총 게시글 수
	private int pageCnt;         // 총 페이지 수
	private int rangeCnt;        // 총 블럭(range) 수
	private int startPage  = 1;  // 시작 페이지
	private int endPage    = 1;  // 끝 페이지
	private int startIndex = 0;  // 시작 index
	private int prevPage;        // 이전 페이지
	private int nextPage;        // 다음 페이지
	
	public Pagination(int listCnt, int curPage) {
		/**
		 * 페이징 처리 순서
		 * 1. 총 페이지 수
		 * 2. 총 블럭(range) 수  
		 * 3. range setting
		 */
		
		// 총 게시물 수와 현재 페이지를 Controller로부터 받는다.
		setCurPage(curPage); // 현재 페이지
		setListCnt(listCnt); // 총 게시물 수
		
		setPageCnt(listCnt);   // 1. 총 페이지 수
		setRangeCnt(pageCnt);  // 2. 총 블럭(range) 수
		rangeSetting(curPage); // 3. 블럭(range) setting 
		
		setStartIndex(curPage); // DB 질의를 위한 startIndex 설정 
	}
	
	public void setPageCnt(int listCnt)	{
		this.pageCnt = (int) Math.ceil(listCnt*1.0/pageSize);
	}
	public void setRangeCnt(int pageCnt) {
		this.rangeCnt = (int) Math.ceil(pageCnt*1.0/rangeSize);
	}
	
	public void rangeSetting(int curPage) {
		
		setCurRange(curPage);
		this.startPage = (curRange - 1) * rangeSize + 1;
		this.endPage = startPage + rangeSize - 1; 
		
		if (endPage > pageCnt) {
			this.endPage = pageCnt;
		}
		
		this.prevPage = curPage - 1;
		this.nextPage = curPage + 1;
	}
	public void setCurRange(int curPage) {
		this.curRange = (int)((curPage - 1) / rangeSize) + 1;
	}
	public void setStartIndex(int curPage) {
		this.startIndex = (curPage - 1) * pageSize;
	}
	
}
/** paging
 * 1. 한 페이지에 몇의 게시물을 나타낼 것인가, 하나의 블럭(range)에 몇개의 페이지를 나타낼 것인가.
 *    이를 제일 상단 pageSize와 rangeSize로 설정
 */
