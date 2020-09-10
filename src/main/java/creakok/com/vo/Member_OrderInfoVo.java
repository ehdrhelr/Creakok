package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods_Review;
import creakok.com.domain.Order_Info;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Member_OrderInfoVo {
   
   private int order_cp;
   private long order_totalCount;
   private int order_ps;
   private List<Order_Info> order_list;
  // private long order_index;
   private String member_email;
   private long order_totalPageCount;

   public Member_OrderInfoVo(int order_cp, long order_totalCount, int order_ps, String member_email, List<Order_Info> order_list) {
      this.order_cp = order_cp;
      this.order_totalCount = order_totalCount;
      this.order_ps = order_ps;
      this.order_list = order_list;
    //  this.order_index = order_index;
      this.member_email = member_email;
      this.order_totalPageCount = calTotalPageCount();
   }
   private long calTotalPageCount() {
      long tpc = order_totalCount/order_ps; 
      if(order_totalCount%order_ps != 0) tpc++;
      
      return tpc;
   }
   /*
   private long totalPageCount = totalCount/pageSize;
   private int range1 = (currentPage-1)*pageSize;
   private int range2 = currentPage*pageSize;
   */
   
   
}