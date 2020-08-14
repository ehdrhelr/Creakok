package creakok.com.vo;

import java.util.List;

import creakok.com.domain.Funding_qna;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Funding_qnaVo {
	String keyword;
	private int currentPage;
	private long totalCount;
	private int pageSize;
	private List<Funding_qna> list;
	private long totalPageCount;

	public Funding_qnaVo(int currentPage, long totalCount, int pageSize, List<Funding_qna> list) {
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
