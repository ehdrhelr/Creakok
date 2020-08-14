package creakok.com.vo;

import java.util.List;


import creakok.com.domain.Funding_comment;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Funding_commentVo {
	String keyword;
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private List<Funding_comment> list;
	private long totalPageCount;

	public Funding_commentVo(int currentPage, long totalCount, int pageSize, List<Funding_comment> list) {
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
}
