<%@ page contentType="text/html; charset=utf-8"
import="creakok.com.filesetting.Path"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <!-- Title -->
    <title>CREAKOK</title>
    
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/creakok.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- BOTO TEST -->
    <meta name="description" content="Boto Photo Studio HTML Template">
    <meta name="keywords" content="photo, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
      <!-- Stylesheets -->
    <link rel="stylesheet" href="css/css_boto/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/css_boto/slicknav.min.css"/>
    <link rel="stylesheet" href="css/css_boto/fresco.css"/>
    <link rel="stylesheet" href="css/css_boto/slick.css"/>
  
    <!-- Main Stylesheets -->
    <link rel="stylesheet" href="css/css_boto/style.css"/>

    <!-- hcbae Stylesheets -->
    <link rel="stylesheet" href="css/hcbae_tumblbug_part.css"/>
    <link rel="stylesheet" href="css/hcbae_wadiz_part.css">
    <link rel="stylesheet" href="css/hcbae_css.css">
    <link rel="stylesheet" href="css/only_cart_jsp.css">
    <script>
    function addComma(num) {
        let regexp = /\B(?=(\d{3})+(?!\d))/g;
        let result = num.toString().replace(regexp, ',');
        return result;
    }
    function inputNumberRemoveComma(str) {
        str = String(str);
        return str.replace(/[^\d]+/g, "");
    }
    </script>
</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="img/core-img/creakok.png" alt="">
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
    <div id="header_div">
    <jsp:include page="creakok_header.jsp" flush="true"/>
    </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(${Path.COMMON_IMG_PATH}page_cart.png);">
            <h2 style="color:black">Cart</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item" style="font-weight:300; color:#757575;"><i class="fa fa-home"></i> Home</li>
                            <li class="breadcrumb-item" aria-current="page"><span style="font-weight:600; color:black;">CART</span></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Cart Area Start ##### -->
    <div class="cart-area section-padding-0-100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cart-table clearfix">
                        <table class="table table-responsive">
                            <thead>
                                <tr>
                                    <th>Products</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                    <th>TOTAL</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="listCount" value="0"/>
                                <c:forEach items="${cart_list}" var="cartunit">
                                 <tr>
                                    <td class="cart_product_img">
                                        <a href="goods_detail.do?goods_index=${cartunit.goods_index}">
                                            <c:forEach var="cart" items="${goods_stock}">
                                            	<c:if test="${cart.goods_name == cartunit.goods_name}">
	    											<c:if test="${cart.goods_stock_number == 0}">
	    												<img src="img/goods/sold_out.png" alt="Product">
	    											</c:if>
	    											<c:if test="${cart.goods_stock_number != 0}">
	    												<img src="img/goods/${cartunit.goods_repre_pic}" alt="Product">
	    											</c:if>
    											</c:if>
    										</c:forEach>
                                        </a>
                                        <h5>${cartunit.goods_name}</h5>
                                    </td>
                                    <td class="qty">
                                        <div class="quantity">
                                            <span class="qty-minus" onclick="minusQuantity('${listCount}');"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                            <input type="number" class="qty-text" id="qty" step="1" min="1" max="99" name="quantity" value="${cartunit.unit_count}" onchange="calTotalPrice('${listCount}');">
                                            <span class="qty-plus" onclick="plusQuantity('${listCount}');"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        </div>
                                    </td>
                                    <td class="price">
                                    	 <c:forEach var="cart" items="${goods_stock}">
                                           	<c:if test="${cart.goods_name == cartunit.goods_name}">
    											<c:if test="${cart.goods_stock_number == 0}">
    												<span class="unit_price" id="price_stock">품절</span>
    											</c:if>
    											<c:if test="${cart.goods_stock_number != 0}">
				                                    <span class="unit_price" id="price_stock">
				                                   	  <script>document.write( addComma('${cartunit.unit_price}') );
					                                   </script>
					                            	    원
				                                    </span>
    											</c:if>
   											</c:if>
    									</c:forEach>
                                    </td>
                                    <td class="total_price">
                                        <c:forEach var="cart" items="${goods_stock}">
                                           	<c:if test="${cart.goods_name == cartunit.goods_name}">
    											<c:if test="${cart.goods_stock_number == 0}">
    												<span class="unit_total_price">품절</span>
    											</c:if>
    											<c:if test="${cart.goods_stock_number != 0}">
			                                    	<span class="unit_total_price">
			                                    		<script>
			                                    			document.write( addComma('${cartunit.unit_price*cartunit.unit_count}') );
			                                    		</script>
			                                    		원
			                                    	</span>
    											</c:if>
   											</c:if>
    									</c:forEach>
                                    </td>
                                    <td class="action"><a href="#"><i class="icon_close" onclick="deleteCart('${listCount}')"></i></a></td>
                                </tr>
                                <c:set var="listCount" value="${listCount + 1}"/>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Cart Totals -->
                <div class="col-12 col-lg-6 hcbae_cart_total_css">
                    <div class="cart-totals-area mt-70">
                        <h5 class="title--">Cart Total</h5>
                        <div class="subtotal d-flex justify-content-between">
                            <h5>Subtotal</h5>
                            <h5 id="subTotalPrice"></h5>
                        </div>
                        <div class="subtotal d-flex justify-content-between">
                            <h5>배송비</h5>
                            <h5 id="shipping_fee"></h5>
                        </div>
                        <div class="total d-flex justify-content-between">
                            <h5>Total</h5>
                            <h5 id="TotalPrice"></h5>
                        </div>
                        <div class="checkout-btn hcbae_checkout_btn">
                            <a href="#" class="btn alazea-btn w-100" onclick="stockCheck()">주문하기</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- ##### Cart Area End ##### -->

    <!-- Footer Bottom Area -->
    <div id="footer_div">
    <jsp:include page="creakok_footer.jsp" flush="true"/>
    </div>
    <!-- Footer Bottom Area End ##### -->
    
    
    <script type="text/javascript">

    function deleteCart(count){
        //alert('????:'+count);
        let member_email_list = [];
        let goods_index_list = [];
        let goods_category_code_list = [];

        <c:forEach var="cart" items="${cart_list}" >
            member_email_list.push('${cart.member_email}');
            goods_index_list.push('${cart.goods_index}');
            goods_category_code_list.push('${cart.goods_category_code}');
        </c:forEach>

        let formData = new FormData();
        formData.append('member_email', member_email_list[count]);
        formData.append('goods_index', goods_index_list[count]);
        formData.append('goods_category_code', goods_category_code_list[count]);
        formData.append('unit_count', document.querySelectorAll('.qty-text')[count].value );
        
        let xmlHttp = new XMLHttpRequest();
        xmlHttp.onreadystatechange = function() {
             if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                 //console.log("#####:"+xmlHttp.responseText);
                 if(xmlHttp.responseText=="delete_ok"){
                     location.href="goods_cart.do";
                 }
             }
        };
        xmlHttp.open("POST", "deleteCart.do", true); // true for asynchronous
        xmlHttp.send(formData);
    }
    
    function minusQuantity(count) {
        let qty = document.querySelectorAll('.qty-text')[count].value; 
        if( !isNaN( qty ) && qty>1) qty--;
        document.querySelectorAll('.qty-text')[count].value = qty;
        //console.log("########qty:"+qty);
        calTotalPrice(count);
        calSubTotal();
    }
    function plusQuantity(count) {
        let qty = document.querySelectorAll('.qty-text')[count].value; 
        if( !isNaN( qty )) qty++;
        document.querySelectorAll('.qty-text')[count].value = qty;
        //console.log("########qty:"+qty);
        calTotalPrice(count);
        calSubTotal();
    }
    function calTotalPrice(count) {
        let qty = document.querySelectorAll('.qty-text')[count].value;
        let price = inputNumberRemoveComma(document.querySelectorAll('.unit_price')[count].innerText);
        let total_price_list = document.querySelectorAll('.unit_total_price');
        total_price_list[count].innerText = addComma(qty*price)+"원";
        //console.log("########:"+total_price_list[count].innerText);
        updateList(count);
        calSubTotal();
    }
    
    function updateList(count) {
        let member_email_list = [];
        let goods_index_list = [];
        let goods_category_code_list = [];

        <c:forEach var="cart" items="${cart_list}" >
            member_email_list.push('${cart.member_email}');
            goods_index_list.push('${cart.goods_index}');
            goods_category_code_list.push('${cart.goods_category_code}');
        </c:forEach>

        let formData = new FormData();
        formData.append('member_email', member_email_list[count]);
        formData.append('goods_index', goods_index_list[count]);
        formData.append('goods_category_code', goods_category_code_list[count]);
        formData.append('unit_count', document.querySelectorAll('.qty-text')[count].value );
        
        let xmlHttp = new XMLHttpRequest();
        xmlHttp.onreadystatechange = function() {
             if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                 //console.log("#####:"+xmlHttp.responseText);
             }
        };
        xmlHttp.open("POST", "updateCart.do", true); // true for asynchronous
        xmlHttp.send(formData);
    }
    
    function calSubTotal(){
        let subTotal=0;
        let total_price_list = document.querySelectorAll('.unit_total_price');
        for(var i=0; i<total_price_list.length; i++){
            //console.log( "ttttt:"+total_price_list[i].innerText );
            subTotal+=parseInt( inputNumberRemoveComma(total_price_list[i].innerText) );
        }
        //console.log( "subTotal:"+subTotal );
        document.getElementById('subTotalPrice').innerText = addComma(subTotal)+"원";
        
        document.getElementById('shipping_fee').innerText = addComma(3000)+"원";
        
        let shipping_fee =parseInt( inputNumberRemoveComma(document.getElementById('shipping_fee').innerText) );
        document.getElementById('TotalPrice').innerText = addComma(subTotal+shipping_fee)+"원";
    }
    calSubTotal();
    
    
    function stockCheck(){
    	let arr = new Array();
    	
        <c:forEach var="cart" items="${goods_stock}">
        	arr.push({goods_stock:'${cart.goods_stock_number}'});
        	console.log(arr);
        </c:forEach>

        arr.some(function(v) {
         	  if (v.goods_stock == 0) {
         	    console.log(v); 
         	    alert('품절된 상품은 구매하실 수 없습니다');
         	    return (v.goods_stock ==0);
         	  } 
        });

        let flag2 = arr.every(val => {return val.goods_stock != 0});
        console.log(flag2);      
        if( flag2 !== false ){
        	console.log('2');
        	location.href="order.do";
        } else if ( flag2 == false ){
        	console.log('3');
        	location.href="#";
        }
   	 	
    }
    </script>
    <!--  -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
    
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
</body>

</html>