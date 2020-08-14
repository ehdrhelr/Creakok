package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods_QnA;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Goods_QnAVo {
   
   private int currentPage;
   private long totalCount;
   private int pageSize;
   private List<Goods_QnA> list;
   private long totalPageCount;

   public Goods_QnAVo(int currentPage, long totalCount, int pageSize, List<Goods_QnA> list) {
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
   /*
   private long totalPageCount = totalCount/pageSize;
   private int range1 = (currentPage-1)*pageSize;
   private int range2 = currentPage*pageSize;
   */
   
   
}