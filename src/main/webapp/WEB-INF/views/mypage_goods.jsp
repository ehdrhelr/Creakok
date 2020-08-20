<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.Member_origin"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!-- All Products Area -->
<div class="col-12 col-md-8 col-lg-9"  id="goods_area">
    <div class="shop-products-area">
        <div class="row">
        
          <c:if test="${empty goods.list}">
            <p style="text-align:center;width:100%;"> 현재 판매중인 굿즈가 없습니다.</p>
          </c:if>
          
          
            <c:forEach var="goods" items="${goods.list}" >      
                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-product-area mb-50">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="goods_detail.do?goods_index=${goods.goods_index}"><img src="${goods.goods_repre_pic}" alt=""></a>

                         </div>   
                            <!-- Product Info -->
                            <div class="product-info mt-15">
                                <p style="margin-bottom:5px;">${goods.creator_name}</p>
                                <a href="goods_detail.do?goods_index=${goods.goods_index}">
                                    <p style="color:#545454;font-weight:500;">${goods.goods_name}</p>
                                </a>
                                <h6><strong>${goods.goods_price}</strong> 원</h6>
                            </div>                                      
                        </div>                         
                    </div>
            </c:forEach>
        </div>
    </div>
</div>