package creakok.com.vo;

import java.util.List;
import java.util.Set;

import creakok.com.domain.Funding;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FundingVo {
	String keyword;
	String filterBy;
	String categoryBy;
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private List<Funding> list;
	private long totalPageCount;
	private Set<String> listCategoryUsed;

	public FundingVo(int currentPage, long totalCount, int pageSize, String filterBy, String categoryBy, List<Funding> list, Set<String> listCategoryUsed) {
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.filterBy = filterBy;
		this.categoryBy = categoryBy;
		this.list = list;
		this.totalPageCount = calTotalPageCount();
		this.listCategoryUsed = listCategoryUsed;
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
