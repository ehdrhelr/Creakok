package creakok.com.vo;


import java.util.List;

import creakok.com.domain.Goods_QnA;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Goods_QnAVo {
   
   private int qna_cp;
   private long qna_totalCount;
   private int qna_ps;
   private List<Goods_QnA> qna_list;
   private long goods_index;
   private long totalPageCount;

   public Goods_QnAVo(int qna_cp, long qna_totalCount, int qna_ps, long goods_index, List<Goods_QnA> qna_list) {
      this.qna_cp = qna_cp;
      this.qna_totalCount = qna_totalCount;
      this.qna_ps = qna_ps;
      this.qna_list = qna_list;
      this.goods_index = goods_index;
      this.totalPageCount = calTotalPageCount();
   }
   private long calTotalPageCount() {
      long tpc = qna_totalCount/qna_ps; 
      if(qna_totalCount%qna_ps != 0) tpc++;
      
      return tpc;
   }
   /*
   private long totalPageCount = totalCount/pageSize;
   private int range1 = (currentPage-1)*pageSize;
   private int range2 = currentPage*pageSize;
   */
   
   
}