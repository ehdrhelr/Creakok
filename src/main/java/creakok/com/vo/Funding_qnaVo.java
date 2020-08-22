package creakok.com.vo;

import java.util.List;

import creakok.com.domain.Funding_qna;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Funding_qnaVo {
	String keyword;
	private long funding_index;
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private List<Funding_qna> list;
	private long totalPageCount;

	public Funding_qnaVo(long funding_index, int currentPage, long totalCount, int pageSize, List<Funding_qna> list) {
		this.funding_index = funding_index;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
	}
	private long calTotalPageCount() {
		long tpc = totalCount/pageSize; 
		if(totalCount%pageSize != 0) tpc++;
		
		return tpc;
	}
	
	public int getStartRow() {
		return (currentPage-1)*pageSize;
	}
	public int getEndRow() {
		return currentPage*pageSize;
	}
}
