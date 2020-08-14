<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:forEach var="goods" items="${goods.list}">		
 <!-- Single Product Area -->
 <div class="col-12 col-sm-6 col-lg-4">
     <div class="single-product-area mb-50">
         <!-- Product Image -->
         <div class="product-img">
             <a href="goods-details.html"><img src="img/bg-img/${goods.goods_repre_pic}" alt=""></a>
         
             <!-- Product Tag
             <div class="product-tag">
                 <a href="#">Hot</a>
             </div> -->
             <div class="product-meta d-flex">
                 <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                 <a href="cart.html" class="add-to-cart-btn">장바구니에 담기</a>
                 <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
             </div>
          </div>   
          <!-- Product Info -->
          <div class="product-info mt-15">
              <p style="margin-bottom:5px;">${goods.creator_name}</p>
              <a href="goods-details.html">
                  <p style="color:#545454;font-weight:500;">${goods.goods_name}</p>
              </a>
              <h6><strong>${goods.goods_price}</strong> 원</h6>
          </div>	                                    
         </div>                         
     </div>

 </c:forEach>
