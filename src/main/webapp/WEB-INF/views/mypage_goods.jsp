<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.Member_origin"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
                <!-- All Products Area -->
                <div class="col-12 col-md-8 col-lg-9"  id="goods_area">
                    <div class="shop-products-area">
                        <div class="row">
                            <c:forEach var="goods_unit" items="${goods.list}" >      
                                <!-- Single Product Area -->
                                <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="single-product-area mb-50">
                                        <!-- Product Image -->
                                        <div style="z-index:1">
                                            
                                        </div>
                                        <div class="product-img">
                                            <a href="goods_detail.do?goods_index=${goods_unit.goods_index}">
                                                <c:if test="${goods_unit.goods_stock_number == 0 }">
                                                    <img src="img/goods/sold_out.png" alt="SOLD OUT IMAGE">
                                                </c:if>
                                                <c:if test="${goods_unit.goods_stock_number != 0 }">
                                                    <img src="img/goods/${goods_unit.goods_repre_pic}" alt="상품 이미지">
                                                </c:if>
                                            </a>
                                         </div>   
                                            <!-- Product Info -->
                                            <div class="product-info mt-15">
                                                <p style="margin-bottom:5px;">${goods_unit.creator_name}</p>
                                                <a href="goods_detail.do?goods_index=${goods_unit.goods_index}">
                                                    <p style="color:#545454;font-weight:500;">${goods_unit.goods_name}</p>
                                                </a>
                                                <h6><strong>${goods_unit.goods_price}</strong> 원</h6>
                                                <c:if test="${goods_unit.goods_stock_number == 0 }">
                                                    <c:if test="${member.member_email == 'creakok_super@cafe24.com'}">
                                                        <p onclick="deleteGoods(${goods_unit.goods_index})" style="margin-top:2%;color:#fc5230;font-weight:400;cursor:pointer">삭제</p>
                                                    </c:if>
                                                </c:if>
                                            </div>                                      
                                        </div>                         
                                    </div>
                            </c:forEach>
                            
                            
                        </div>

                        </div>

                     </div>