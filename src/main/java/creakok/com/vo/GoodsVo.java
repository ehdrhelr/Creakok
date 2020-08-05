package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class GoodsVo {
   
   private int currentPage;
   private long totalCount;
   private int pageSize;
   private List<Goods> list;
   private long totalPageCount;

   public GoodsVo(int currentPage, long totalCount, int pageSize, List<Goods> list) {
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
   private int getStartRow() {
		return (currentPage-1)*pageSize;	
	}
   private int getEndRow() {
		return currentPage*pageSize; 
	}
   /*
   private long totalPageCount = totalCount/pageSize;
   private int range1 = (currentPage-1)*pageSize;
   private int range2 = currentPage*pageSize;
   */
   
   
}