package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods_Review;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Goods_ReviewVo {
   
   private int review_cp;
   private long review_totalCount;
   private int review_ps;
   private List<Goods_Review> review_list;
   private long goods_index;
   private long review_totalPageCount;

   public Goods_ReviewVo(int review_cp, long review_totalCount, int review_ps, long goods_index, List<Goods_Review> review_list) {
      this.review_cp = review_cp;
      this.review_totalCount = review_totalCount;
      this.review_ps = review_ps;
      this.review_list = review_list;
      this.goods_index = goods_index;
      this.review_totalPageCount = calTotalPageCount();
   }
   private long calTotalPageCount() {
      long tpc = review_totalCount/review_ps; 
      if(review_totalCount%review_ps != 0) tpc++;
      
      return tpc;
   }
   /*
   private long totalPageCount = totalCount/pageSize;
   private int range1 = (currentPage-1)*pageSize;
   private int range2 = currentPage*pageSize;
   */
   
   
}