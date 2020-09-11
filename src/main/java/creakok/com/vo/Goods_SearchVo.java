package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Goods_SearchVo {
   private int cp;
   private long totalCount;
   private int ps;
   private List<Goods> result_list;
   private String keyword;
   private long totalPageCount;

   public Goods_SearchVo(int cp, long totalCount, int ps, List<Goods> result_list, String keyword) {
      this.cp = cp;
      this.totalCount = totalCount;
      this.ps = ps;
      this.result_list = result_list;
      this.keyword = keyword;
      this.totalPageCount = calTotalPageCount();   
   }
   public long calTotalPageCount() {
      long tpc = totalCount/ps; 
      if(totalCount%ps != 0) tpc++;
      
      return tpc;
   }
   private int getStartRow() {
		return (cp-1)*ps;	
	}
   private int getEndRow() {
		return cp*ps; 
	}
   /*
   private long totalPageCount = totalCount/ps;
   private int range1 = (cp-1)*ps;
   private int range2 = cp*ps;
   */
   
   
}