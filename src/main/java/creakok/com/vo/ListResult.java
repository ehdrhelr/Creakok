package creakok.com.vo;

import java.util.List;

import creakok.com.domain.Board;
import lombok.Data;

@Data
public class ListResult {

	private String board_filterBy;
	private String board_c_code;    
	private String board_searchName; 
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private List<Board> list;
	private long totalPageCount;
	
	// pagination 
	private int rangeSize = 10;
	private int curRange = 1;
	private int rangeCnt;
	private int startPage = 1;
	private int endPage = 1;
	private int startIndex = 0;
	private int prevPage;
	private int nextPage;
	
	public ListResult() {}
	public ListResult(int currentPage, long totalCount, int pageSize, List<Board> list, String board_filterBy) {
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
		
		this.board_filterBy = board_filterBy;
		
		setRangeCnt((int)this.totalPageCount); // 총 블럭(range) 수
		rangeSetting(currentPage);
	}
	
	
	public ListResult(int currentPage, long totalCount, int pageSize, List<Board> list, String board_filterBy, String board_c_code, String board_searchName) {
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
		
		this.board_filterBy = board_filterBy;
		this.board_c_code = board_c_code;
		this.board_searchName = board_searchName;
		
		setRangeCnt((int)this.totalPageCount); // 총 블럭(range) 수
		rangeSetting(currentPage);
	}
	private long calTotalPageCount() {
	      long tpc = totalCount/pageSize; 
	      if(totalCount%pageSize != 0) tpc++;
	      
	      return tpc;
	 }
	
	public void setRangeCnt(int pageCnt) {
		this.rangeCnt = (int) Math.ceil(pageCnt*1.0/rangeSize);
	}
	
	public void rangeSetting(int currentPage) {
		
		setCurRange(currentPage);
		this.startPage = (curRange - 1) * rangeSize + 1;
		this.endPage = startPage + rangeSize - 1; 
		
		if (endPage > this.totalPageCount) {
			this.endPage = (int) this.totalPageCount;
		}
		
		this.prevPage = currentPage - 1;
		this.nextPage = currentPage + 1;
	}
	
	public void setCurRange(int currentPage) {
		this.curRange = (int)((currentPage - 1) / rangeSize) + 1;
	}
	public void setStartIndex(int currentPage) {
		this.startIndex = (currentPage - 1) * pageSize;
	}
}
