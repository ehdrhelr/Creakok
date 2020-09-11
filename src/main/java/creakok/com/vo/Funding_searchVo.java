package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Funding;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Funding_searchVo {
   private int funding_cp;
   private long funding_totalCount;
   private int funding_ps;
   private List<Funding> funding_result_list;
   private String keyword;
   private long funding_totalPageCount;

   public Funding_searchVo(int funding_cp, long funding_totalCount, int funding_ps, List<Funding> funding_result_list, String keyword) {
      this.funding_cp = funding_cp;
      this.funding_totalCount = funding_totalCount;
      this.funding_ps = funding_ps;
      this.funding_result_list = funding_result_list;
      this.keyword = keyword;
      this.funding_totalPageCount = calTotalPageCount();   
   }
   public long calTotalPageCount() {
      long tpc = funding_totalCount/funding_ps; 
      if(funding_totalCount%funding_ps != 0) tpc++;
      
      return tpc;
   }
   private int getStartRow() {
		return (funding_cp-1)*funding_ps;	
	}
   private int getEndRow() {
		return funding_cp*funding_ps; 
	}
   /*
   private long totalPageCount = totalCount/ps;
   private int range1 = (cp-1)*ps;
   private int range2 = cp*ps;
   */
   
   
}