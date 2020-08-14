package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods;
import creakok.com.domain.Goods_Category;
import creakok.com.domain.Goods_QnA;
import creakok.com.domain.Goods_Review;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Goods_CategoryVo {
   
   private int currentPage;
   private long totalCount;
   private int pageSize;
   private List<Goods_Category> list;
   private long totalPageCount;

   public Goods_CategoryVo(int currentPage, long totalCount, int pageSize, List<Goods_Category> list) {
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