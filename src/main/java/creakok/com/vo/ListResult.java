package creakok.com.vo;

import java.util.ArrayList;
import java.util.List;

import creakok.com.domain.Board;

public class ListResult {

	private String board_filterBy;
	private String board_c_code;    
	private String board_searchName; 
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private List<Board> list;
	private long totalPageCount;
	
	public ListResult() {}
	public ListResult(int currentPage, long totalCount, int pageSize, List<Board> list, String board_filterBy) {
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
		
		this.board_filterBy = board_filterBy;
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
	}
	private long calTotalPageCount() {
	      long tpc = totalCount/pageSize; 
	      if(totalCount%pageSize != 0) tpc++;
	      
	      return tpc;
	 }
	
	public int getCurrentPage() {
		return currentPage;
	}
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List<Board> getList() {
		return list;
	}

	public void setList(ArrayList<Board> list) {
		this.list = list;
	}

	public long getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(long totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	
	public String getBoard_filterBy() {
		return board_filterBy;
	}
	
	public void setBoard_filterBy(String board_filterBy) {
		this.board_filterBy = board_filterBy;
	}
	public String getBoard_c_code() {
		return board_c_code;
	}
	public void setBoard_c_code(String board_c_code) {
		this.board_c_code = board_c_code;
	}
	public String getBoard_searchName() {
		return board_searchName;
	}
	public void setBoard_searchName(String board_searchName) {
		this.board_searchName = board_searchName;
	}

}
