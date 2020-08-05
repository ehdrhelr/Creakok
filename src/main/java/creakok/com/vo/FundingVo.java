package creakok.com.vo;

import java.util.List;

import creakok.com.domain.Funding;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FundingVo {
	String keyword;
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private List<Funding> list;
	private long totalPageCount;

	public FundingVo(int currentPage, long totalCount, int pageSize, List<Funding> list) {
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
