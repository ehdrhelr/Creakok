<%@ page contentType="text/html; charset=utf-8"%>
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
    <link rel="stylesheet" href="css/css_boto/bootstrap.min.css"/>
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
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/24.jpg);">
            
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                           
                            <li class="breadcrumb-item active" aria-current="page" style="color:#828282; font-size:1.3em;font-weight:500;position:relative">
                            	검색 결과
                            	<span style="font-size:0.5em;position:absolute;left:83px;top:1px">▼</span>
                            </li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                
                    <div class="most__search__tab">
                       <p style="text-align:left;color:black;font-size:1.5em;font-weight:700">
                       		펀딩  ${funding_result_amount}개
                       <p>
                    </div>
  
                </div>
            </div>
        </div>
    </div>
    

	<!--  펀딩 검색결과    -->
     <section class="new-arrivals-products-area ">
        <div class="container">

           <div class="row">
             <c:if test="${empty funding_result.funding_result_list}">
                     <p style="text-align:center;width:100%;"> 검색결과가 없습니다. </p>
             </c:if>
             
             
              <c:if test="${!empty funding_result.funding_result_list}">
              
              <!-- Single Product Area -->
              <c:forEach items="${funding_result.funding_result_list}" var="fundingVo">
           
                <div class="col-12 col-sm-6 col-lg-4">
                      <div class="single-benefits-area">                   
                          <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                              </a><div class="CommonCard_rect__2wpm4">
                                    <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                                        <span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" style="background-image:url(img/core-img/ex1.png)">
                                            </span></a>
                                  
                                                 <a href="funding_detail.do?funding_index=${fundingVo.funding_index}">
                                
                                                     <img src="${fundingVo.funding_repre_pic}" alt="">
                                                </a>
           
                                    <div class="CommonCard_info__1f4kq">
                                    <div class="RewardProjectCard_info__3JFub">
                                        <div class="RewardProjectCard_infoTop__3QR5w">
                                        <a href="funding_detail.do?funding_index=${fundingVo.funding_index}" class="CardLink_link__1k83H">
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

       </div>
           <a name="fix_point"></a>   
            
               <!-- Pagination Start -->
               <nav aria-label="Page navigation" id="link22" style="margin-bottom:10%">
                    <ul class="pagination" >
                          <c:forEach begin="1" end="${funding_result.funding_totalPageCount}" var="i">
                                <c:choose>
                                   <c:when test="${i==funding_result.funding_cp}">
                                   <li class="page-item">
                                   <a class="page-link" href="search.do?funding_cp=${i}&keyword=${funding_result.keyword}" style="border-radius:0;" onclick="getCp();">
                                       <span style="color:black">${i}</span>
                                       </a>
                                       </li>
                                   </c:when>
                                   <c:otherwise>
                                   <li class="page-item">
                                   <a class="page-link" href="search.do?funding_cp=${i}&keyword=${funding_result.keyword}" style="border-radius:0;" onclick="getCp();">
                                       <span>${i}</span>
                                       </a>
                                       </li>
                                   </c:otherwise>
                               </c:choose>
                           </c:forEach>
                     <!--   <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>    -->   
                       </ul>
                </nav>
                <!-- Pagination End -->
    </section>
    <!--  펀딩 검색결과 End   -->
    
     
    
	
    <div class="container">
            <div class="row">
                <div class="col-12">
                    
                     <div class="most__search__tab">
                       <p style="text-align:left;color:black;font-size:1.5em;font-weight:700">
                         
                       		  굿즈  ${goods_result_amount}개
                       <p>
                    </div>                    
            </div>
        </div>
    </div> 
    
     <!--  굿즈 검색결과    -->
     <section class="new-arrivals-products-area ">
        <div class="container">
           

          <div class="row">
             <c:if test="${empty goods_result.result_list}">
                     <p style="text-align:center;width:100%;"> 검색결과가 없습니다. </p>
             </c:if>
                <c:set var="listCount" value="0"/>
                
                      <c:forEach var="goods" items="${goods_result.result_list}">      
                         <!-- Single Product Area -->
                         <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="single-product-area mb-50">
                                      <!-- Product Image -->
                                      <div style="z-index:1">
                                      	
                                      </div>
                                      <div class="product-img">
                                          <a href="goods_detail.do?goods_index=${goods.goods_index}">
                                          	<c:if test="${goods.goods_stock_number == 0 }">
                                          		<img src="img/goods/sold_out.png" alt="SOLD OUT IMAGE">
                                          	</c:if>
                                          	<c:if test="${goods.goods_stock_number != 0 }">
                                          		<img src="img/goods/${goods.goods_repre_pic}" alt="상품 이미지">
                                          	</c:if>
                                          </a>
                                      
                                          <!-- Product Tag
                                          <div class="product-tag">
                                              <a href="#">Hot</a>
                                          </div> -->
                                          
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
               <!-- Pagination Start -->
               <nav aria-label="Page navigation" id="link22" style="margin-bottom:10%">
                    <ul class="pagination" >
                          <c:forEach begin="1" end="${goods_result.totalPageCount}" var="i">
                                <c:choose>
                                   <c:when test="${i==goods_result.cp}">
                                   <li class="page-item">
                                   <a class="page-link" href="search.do?cp=${i}&keyword=${goods_result.keyword}#fix_point" style="border-radius:0;" onclick="getCp();">
                                       <span style="color:black">${i}</span>
                                       </a>
                                       </li>
                                   </c:when>
                                   <c:otherwise>
                                   <li class="page-item">
                                   <a class="page-link" href="search.do?cp=${i}&keyword=${goods_result.keyword}#fix_point" style="border-radius:0;" onclick="getCp();">
                                       <span>${i}</span>
                                       </a>
                                       </li>
                                   </c:otherwise>
                               </c:choose>
                           </c:forEach>
                     <!--   <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>    -->   
                       </ul>
                </nav>
                <!-- Pagination End -->
             
          </div>


      
    </section>
    <!--  굿즈 검색결과 End   -->   

    <!--  재고 수량 0일 때(품절 처리)  -->
    <script src="js/js_board/jquery-1.12.4.js"></script>    
	<script>
		if('${one_goods.goods_stock_number}' == 0){
             //alert('0');
             $("#totalis").css('display','none');
             $("#no_product").css('display','none');
             $("#wonwon").css('display','none');
             $("#price_qty2").html("품절된 상품입니다"); 
             $("#price_qty2").css('font-size', '0.7em');
             $("#price_qty2").css('font-weight', '600');
             
             $("#buy_button").css('background-color', '#828282');
             $("#buy_button").css('border', '0.1em solid #828282');
		}
	</script>  

<script type="text/javascript">
function addCart(count){
	   if('${member.member_email}' == '') {
	        alert('로그인해주세요.');
	        return;
	    }
	   
    let goods_index_list = [];
    let goods_category_code_list = [];
    let goods_name_list = [];
    let goods_repre_pic_list = [];
    let unit_price_list = [];

    <c:forEach var="goods" items="${goods.list}" >
        goods_index_list.push('${goods.goods_index}');
        goods_category_code_list.push('${goods.goods_category_code}');
        goods_name_list.push('${goods.goods_name}');
        goods_repre_pic_list.push('${goods.goods_repre_pic}');
        unit_price_list.push('${goods.goods_price}');
    </c:forEach>

    let formData = new FormData();
    formData.append('member_email', '${member.member_email}');
    formData.append('goods_index', goods_index_list[count]);
    formData.append('goods_category_code', goods_category_code_list[count]);
    formData.append('goods_name', goods_name_list[count]);
    formData.append('goods_repre_pic', goods_repre_pic_list[count]);
    formData.append('unit_price', unit_price_list[count]);
    formData.append('unit_count', 1);

    let xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function() {
         if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
             //console.log("#####:"+xmlHttp.responseText);
             if(xmlHttp.responseText=="add_ok") {
                 alert('상품을 장바구니에 담았습니다.');
             }
         }
    };
    xmlHttp.open("POST", "addCart.do", true); // true for asynchronous
    xmlHttp.send(formData);
}

</script>  


    <!-- Footer Bottom Area -->
    <div id="footer_div">
    <jsp:include page="creakok_footer.jsp" flush="true"/>
    </div>
    <!-- Footer Bottom Area End ##### -->

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