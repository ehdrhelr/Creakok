<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.Member_origin"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

    <section class="new-arrivals-products-area ">
        <div class="container">
            <div class="row">
                   <c:if test="${!empty fundingVo.list}">
                <!-- Single Product Area -->
              <c:forEach items="${fundingVo.list}" var="fundingVo">
           
                <div class="col-12 col-sm-6 col-lg-4">
                      <div class="single-benefits-area">                   
                          <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                              </a><div class="CommonCard_rect__2wpm4">
                                    <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                                        <span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" style="background-image:url(img/core-img/ex1.png)">
                                            </span></a>
                                  
                                                 <a href="funding_list.do?funding_index=${fundingVo.funding_index}">
                                
                                                     <img src="${fundingVo.funding_repre_pic}" alt="">
                                                </a>
           
                                    <div class="CommonCard_info__1f4kq">
                                    <div class="RewardProjectCard_info__3JFub">
                                        <div class="RewardProjectCard_infoTop__3QR5w">
                                        <a href="funding_list.do?funding_index=${fundingVo.funding_index}" class="CardLink_link__1k83H">
                                            <p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs" style="color:#111111; font-size:17px;">
                                                <strong>${fundingVo.funding_subject}</strong>
                                            </p>
                                        </a>
                                    <div style="margin-bottom: 10px;">
                                        <span class="RewardProjectCard_category__2muXk" style="color:#90949C; font-size:13px;">
                                           ${fundingVo.funding_category_name}
                                        </span>
                                        <span class="RewardProjectCard_makerName__2q4oH" style="color:#90949C; font-size:13px;">
                                            ${fundingVo.creator_name}
                                        </span>
                                    </div>
                                    </div>
                                        <div class="RewardProjectCard_gauge__3p9US">
                                            <span style="width: 100%;">
                                            </span>
                                        </div>
                                        <span class="RewardProjectCard_percent__3TW4_">
                                            
                                        </span>
                                        
                                          <!-- Single Progress Bar -->
                                        <div class="single_progress_bar">
                                           
                                            <div id="bar4" class="barfiller" style="border-radius: 5px;">
                                               
                                                <span class="fill" data-percentage="60" style="border-radius: 5px; width: 162px; transition: width 1s ease-in-out 0s; background: rgb(252, 82, 48);"></span>
                                            </div>
                                        </div>
                                          
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#fc5230; font-size:18px; font-weight:bold">
                                            ${fundingVo.percentage}%
                                        </span>                                      
                                        
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#90949C; font-size:16px; margin-right:5%;font-weight:bold">
                                              ${fundingVo.funding_amount}원
                                        </span>
                                        <span class="RewardProjectCard_days__3eece RewardProjectCard_isAchieve__1LcUu">
                                            <span class="RewardProjectCard_remainingDay__2TqyN" style="color:#90949C; margin-right:5px;">${fundingVo.restdays}일</span>
                                            <span class="RewardProjectCard_remainingDayText__2sRLV" style="color:#90949C;"> 남음</span>
                                            <span class="RewardProjectCard_isAchieve__1LcUu"></span></span>
                                     </div>
                                    </div>  
                                </div>
                            </div>
                            </div>
                         
                           
                            </c:forEach>   
                            </c:if> 
            </div>
                 <c:if test="${empty fundingVo}">
   
         
                <div class="col-12 col-sm-6 col-lg-4">
                      <div class="single-benefits-area">                   
                            해당 카테고리 상품이 없습니다.
                            </div>
                            </div>
                          
                            
                            </c:if> 
                             </div>
            
                <div class="col-12 text-center" style="margin-bottom:100px">
                 <!--   <a href="#" class="btn alazea-btn">더보기</a>-->
                      <nav aria-label="Page navigation"class="text-center">
                      
                            <ul class="pagination" style="margin-top:100px">
                             <c:forEach begin="1" end="${fundingVo.totalPageCount}" var="i">
                             
                               <li class="page-item">
                               <a class="page-link" href="funding_list.do?funding_cp=${i}">
                                <c:choose>
                                  <c:when test="${i==fundingVo.currentPage}">
                                  <strong>${i}</strong>
                                  </c:when>
                    
                                  <c:otherwise>
                                  <span>${i}</span>
                                  </c:otherwise>
                                </c:choose>
                                 </a> 
                                </c:forEach>
                            </ul>
                        </nav>
                </div>
                      
      
    </section>
