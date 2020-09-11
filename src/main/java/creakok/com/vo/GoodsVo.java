package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class GoodsVo {
   private int cp;
   private long totalCount;
   private int ps;
   private List<Goods> list;
   private long totalPageCount;
   private long gCode;
   private String filterBy;

   public GoodsVo(int cp, long totalCount, int ps, List<Goods> list, long gCode, String filterBy) {
      this.cp = cp;
      this.totalCount = totalCount;
      this.ps = ps;
      this.list = list;
      this.totalPageCount = calTotalPageCount();
      this.gCode = gCode;
      this.filterBy = filterBy;
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