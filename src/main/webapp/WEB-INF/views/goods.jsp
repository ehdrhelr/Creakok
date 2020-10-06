<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.LikeType"%>
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
    <link rel="stylesheet" href="css/only_goods_jsp_css.css">
  

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
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/page_goods.png);">
            <h2 style="color:black;text-align:center">
                GOODS<br>
                <span style="font-size:13pt;color:#828282;font-weight:400">크리에이터의 특별 제작 굿즈</span>
            </h2>
            
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item" style="font-weight:300; color:#757575;"><i class="fa fa-home"></i> Home</li>
                            <li class="breadcrumb-item" aria-current="page"><span style="font-weight:600; color:black;">GOODS</span></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        

        
        
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Shop Area Start ##### -->
    <section class="shop-page section-padding-0-100">
        <div class="container">
            <div class="row">
                <!-- Shop Sorting Data -->
                <div class="col-12">
                    <div class="shop-sorting-data d-flex flex-wrap align-items-center justify-content-between">
                        <!-- Shop Page Count -->
                        <div class="shop-page-count">
                            <p>총 ${goods.totalCount}개의 상품</p>
                        </div>
                        <!-- Search by Terms -->
                        <div class="search_by_terms">
                            <form action="#" method="post" class="form-inline">
                                <!--   <select class="custom-select widget-title">
                                  <option selected>인기순</option>
                                  <option value="1">좋아요순</option>
                                  <option value="2">리뷰많은순</option>
                                  <option value="3">낮은가격순</option>
                                  <option value="3">높은가격순</option>
                                </select> -->
                                
                                
                                 <select class="custom-select widget-title" id="fbId" name="filterBy" class="custom-select widget-title" onchange="getFilterBy();" >
                                  <c:choose>
                                   <c:when test="${goods.filterBy == 'goods_sale_number'}">
                                    <option value="goods_sale_number" selected>인기순</option>
                                    <option value="goods_price">가격순</option>
                                    <option value="goods_review_number">리뷰순</option>
                                    </c:when>       
                                     <c:when test="${goods.filterBy=='goods_price'}">
                                        <option value="goods_sale_number">인기순</option>
                                        <option value="goods_price" selected>가격순</option>
                                        <option value="goods_review_number">리뷰순</option>
                                    </c:when>       
                                    <c:when test="${goods.filterBy =='goods_review_number'}">
                                    <option value="goods_sale_number">인기순</option>
                                    <option value="goods_price">가격순</option>
                                    <option value="goods_review_number" selected>리뷰순</option>
                                    </c:when>        
                                  </c:choose>
                                  </select>
                                  
                              
                          
                            
                                <select id="psId" name="ps" class="custom-select widget-title" onchange="getPs();">
                                    <c:choose>
                                        <c:when test="${goods.ps == 3}">
                                            <option value="3" selected>3개씩 보기</option>
                                            <option value="6">6개씩 보기</option>
                                            <option value="9">9개씩 보기</option>                                   
                                        </c:when>
                                        <c:when test="${goods.ps == 6}">
                                            <option value="3">3개씩 보기</option>                                     
                                            <option value="6" selected>6개씩 보기</option>
                                            <option value="9">9개씩 보기</option>
                                        </c:when>                                                           
                                        <c:when test="${goods.ps == 9}">
                                            <option value="3">3개씩 보기</option>                                     
                                            <option value="6">6개씩 보기</option>
                                            <option value="9" selected>9개씩 보기</option>
                                        </c:when>                                           
                                    </c:choose>
                                </select>
                            </form>
                        </div>
                    </div>
                </div>
            </div>




            <div class="row">
                <!-- Sidebar Area -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="shop-sidebar-area">

                        <!-- Shop Widget
                        <div class="shop-widget price mb-50">
                            <h4 class="widget-title">가격대 선택</h4>
                            <div class="widget-desc">
                                <div class="slider-range">
                                    <div data-min="8" data-max="30" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="8" data-value-max="30" data-label-result="Price:">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all first-handle" tabindex="0"></span>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                    </div>
                                    <div class="range-price">0원 - 30000원</div>
                                </div>
                            </div>
                        </div> -->

                        <!-- Shop Widget -->
                        <div class="shop-widget catagory mb-50">
                            <h4 class="widget-title">카테고리</h4>
                           
                                <!-- Single Checkbox -->
                                
                                 <div class="widget-desc">
                                     <c:forEach items="${gCategory}" var="gCategory">
                                    
                                            <c:if test="${gCategory.goods_category_code == goods.GCode}">
                                                <div class="custom-checkbox d-flex align-items-center mb-2" class="custom-control-input" id="customCheck">
                                                    <input type="checkbox" value="${gCategory.goods_category_code}" id="category" name="category" onchange="getGCode(this);" style="margin-right:5px;" checked>${gCategory.goods_category_name}
                                                </div>
                                            </c:if>
                                            <c:if test="${gCategory.goods_category_code != goods.GCode}">
                                                <div class="custom-checkbox d-flex align-items-center mb-2" class="custom-control-input" id="customCheck">
                                                    <input type="checkbox" value="${gCategory.goods_category_code}" id="category" name="category" onchange="getGCode(this);" style="margin-right:5px;">${gCategory.goods_category_name}
                                                </div>
                                            </c:if>
                                    </c:forEach> 
                                 </div> 
                        </div>
    
    
    
    <script language="javascript">
     function getFilterBy(){
            var fbId = document.getElementById("fbId");
            var filterBy = fbId.options[fbId.selectedIndex].value;      
            location.href="goods_list.do?filterBy="+filterBy;
     }
     function getPs(){
        var psId = document.getElementById("psId");
        var ps = psId.options[psId.selectedIndex].value;
        //location.href="goods_list.do?ps="+ps+"&cp="+cp;
        
     /* console.log("ps: "+ps);
        console.log("filterBy: "+filterBy);
        console.log("gCode: "+gCode);
        console.log("cp: "+cp); */
        
        location.href="goods_list.do?ps="+ps+"&cp=1";
        
     }
     function getCp(){
        var cp  = 1;
         $("#link22 a").click(function(e) {
            cp = $(this).text();
            e.preventDefault();
        });     
        location.href="goods_list.do?cp="+cp;
     }
     
    
     function getGCode(chk){
         var obj = document.getElementsByName("category");
         for(var i=0; i<obj.length; i++){
             if(obj[i] != chk){
                 obj[i].checked = false;
             } else {
                 obj[i].checked = true;
             }
         }
         var gCode;
     
         $('#category:checked').each(function() {
            gCode = $(this).val();
            //alert("gCode: "+gCode);
            console.log("hcbae:"+gCode);
        });
         
         location.href="goods_list.do?gCode="+gCode;
    }
    </script>
    
                        <!-- Shop Widget -->
                        <div class="shop-widget best-seller mb-50">
                            <h4 class="widget-title">
                            
                            </h4>
                            <div class="widget-desc">

                                <!-- Single Best Seller Products -->
                                <div class="single-best-seller-product d-flex align-items-center">
                                    <div class="product-thumbnail">
                                    
                                    </div>
                                    <div class="product-info">
                                       
                                        <p>
                                        
                                        </p>
                                        <div class="ratings">
                                           
                                        </div>
                                    </div>
                                </div>

                                

                            </div>
                        </div>
                        
                        
                        
                    </div>
                </div>
                
                

                <!-- All Products Area -->
                <div class="col-12 col-md-8 col-lg-9"  id="goods_area">
                    <div class="shop-products-area">
                        <div class="row">
                        
                          <c:if test="${empty goods.list}">
                            <p style="text-align:center;width:100%;"> 현재 판매중인 굿즈가 없습니다.</p>
                          </c:if>
                          
                            <c:set var="listCount" value="0"/>
                            <c:forEach var="goods" items="${goods.list}" >      
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
                                            <div class="product-meta d-flex">
                                                <script>
                                                function testhcbae(index){
                                                    if('${member.member_email}' == '') {
                                                        alert('로그인해주세요.');
                                                        return;
                                                    }
                                                    
                                                    let formData = new FormData();
                                                    formData.append('like_content_index',index);
                                                    formData.append('like_type_code','${LikeType.GOODS_LIKE}');
                                                    formData.append('like_member_email','${member.member_email}');
                                                    let xmlHttpLike = new XMLHttpRequest();
                                                    xmlHttpLike.onreadystatechange = function() {
                                                        if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                                                            makeGoodsLikeList();
                                                        }
                                                   };
                                                   xmlHttpLike.open("POST", "clickLike.do", true); // true for asynchronous
                                                   xmlHttpLike.send(formData);
                                                }
                                                </script>
                                                <a href="#" class="wishlist-btn" onclick="testhcbae('${goods.goods_index}')" style="margin-left:10%">
                                                    <i class="goods_list_like icon_heart_alt"></i>
                                                </a>
                                                <a href="#" class="add-to-cart-btn" onclick="addCart('${listCount}')">장바구니에 담기</a>
                                                <!--  <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>  -->
                                            </div>
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
                            <c:set var="listCount" value="${listCount + 1}"/>
                            </c:forEach>
                            
                            
                        </div>

                        </div>

                        <!-- Pagination -->

                        <nav aria-label="Page navigation" id="link22">
                            <ul class="pagination" >
                                <c:forEach begin="1" end="${goods.totalPageCount}" var="i">
                                    <c:choose>
                                        <c:when test="${i==goods.cp}">
                                        <li class="page-item">
                                        <a class="page-link" href="goods_list.do?cp=${i}&gCode=${goods.GCode}&filterBy=${goods_filterBy}" style="border-radius:0;" onclick="getCp();">
                                            <span style="color:black">${i}</span>
                                            </a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                        <li class="page-item">
                                        <a class="page-link" href="goods_list.do?cp=${i}&gCode=${goods.GCode}&filterBy=${goods_filterBy}" style="border-radius:0;" onclick="getCp();">
                                            <span>${i}</span>
                                            </a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                          <!--   <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>    -->   
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Shop Area End ##### -->

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
    
    
    <script type="text/javascript">
    function makeGoodsLikeList(){
        if('${member.member_email}' == '') {
            return;
        }
        let likeList = document.querySelectorAll('.goods_list_like');
        let tmep_count=0;
        let formData = new FormData();
        let xmlHttpLike = new XMLHttpRequest();
        <c:forEach var="goods" items="${goods.list}" >
        formData = new FormData();
        formData.append('like_content_index','${goods.goods_index}');
        formData.append('like_type_code','${LikeType.GOODS_LIKE}');
        formData.append('like_member_email','${member.member_email}');
        
        xmlHttpLike = new XMLHttpRequest();
        xmlHttpLike.onreadystatechange = function() {
            if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                if(xmlHttpLike.responseText == '${LikeType.LIKE_NOT_EXIST}'){
                    likeList[tmep_count].classList.remove('icon_heart');
                    likeList[tmep_count].classList.add('icon_heart_alt');
                } else if(xmlHttpLike.responseText == '${LikeType.LIKE_EXIST}') {
                    likeList[tmep_count].classList.remove('icon_heart_alt');
                    likeList[tmep_count].classList.add('icon_heart');
                }                
            }
       };
       xmlHttpLike.open("POST", "readLike.do", false); // true for asynchronous
       xmlHttpLike.send(formData);
       tmep_count++;
       </c:forEach>
    }
    makeGoodsLikeList();
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
             
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
                                                    
</body>

</html>
