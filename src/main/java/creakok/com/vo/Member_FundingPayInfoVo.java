package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Funding_payinfo;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Member_FundingPayInfoVo {
   
   private int funding_pay_cp;
   private long funding_pay_totalCount;
   private int funding_pay_ps;
   private List<Funding_payinfo> funding_pay_list;
  // private long order_index;
   private String member_email;
   private long funding_pay_totalPageCount;

   public Member_FundingPayInfoVo(int funding_pay_cp, long funding_pay_totalCount, int funding_pay_ps, String member_email, List<Funding_payinfo> funding_pay_list) {
      this.funding_pay_cp = funding_pay_cp;
      this.funding_pay_totalCount = funding_pay_totalCount;
      this.funding_pay_ps = funding_pay_ps;
      this.funding_pay_list = funding_pay_list;
    //  this.order_index = order_index;
      this.member_email = member_email;
      this.funding_pay_totalPageCount = calTotalPageCount();
   }
   private long calTotalPageCount() {
      long tpc = funding_pay_totalCount/funding_pay_ps; 
      if(funding_pay_totalCount%funding_pay_ps != 0) tpc++;
      
      return tpc;
   }
   /*
   private long totalPageCount = totalCount/pageSize;
   private int range1 = (currentPage-1)*pageSize;
   private int range2 = currentPage*pageSize;
   */
   
   
}