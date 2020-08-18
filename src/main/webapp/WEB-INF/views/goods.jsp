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
    <title>CREAKOK GOODS</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/creakok.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/hcbae_css.css">

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
    
    
    <style type="text/css">
.clickable {cursor: pointer;}
.hover {text-decoration: underline;}
.odd{ background: #FFC;}
.even{ background: #FF9;}
.active{ width:10px; height:10px; background:#f60; color:white;}
</style>
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

        <!-- ***** Top Header Area ***** -->
        <div class="top-header-area">
            <div class="container" style="color:#666666!important;">
                <div class="row">
                    <div class="col-12">
                        <div class="top-header-content d-flex align-items-center justify-content-between">
                            <!-- Top Header Content -->
                            <div class="top-header-meta">
  
                            </div>

                            <!-- Top Header Content -->
                            <div class="top-header-meta d-flex">
                                <div >
                                    <button type="button" class="makeProject" style="font-size:9pt;color:#fc5230;border:1px solid #fc5230;border-radius:3px;padding:3px 4px;margin-right:15px;background-color:white;">프로젝트 만들기</button>
                                </div>
                                <!-- Language Dropdown -->
                                <div class="language-dropdown">
                                    <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle mr-30" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color:#666666">Language</button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">USA</a>
                                            <a class="dropdown-item" href="#">UK</a>
                                            <a class="dropdown-item" href="#">Bangla</a>
                                            <a class="dropdown-item" href="#">Hindi</a>
                                            <a class="dropdown-item" href="#">Spanish</a>
                                            <a class="dropdown-item" href="#">Latin</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Login -->
                                <div class="login">
                                    <a href="#"><i aria-hidden="true"></i> <span>Login</span></a>
                                </div>
                                <!-- Cart -->
                                <div class="cart">
                                    <a href="#"><i  aria-hidden="true"></i> <span>Cart <span class="cart-quantity">(1)</span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Navbar Area ***** -->
        <div class="alazea-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="alazeaNav">

                        <!-- Nav Brand -->
                        <a href="/" class="nav-brand"><img src="img/core-img/creakok.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" style="color:#666666!important;">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Navbar Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="funding">FUNDING</a></li>
                                    <li><a href="goods_list.do?cp=1&ps=3&filterBy=goods_sale_number&gCode=300">GOODS</a></li>
                                    <li><a href="#">COMMUNITY</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html" >Home</a></li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="shop.html">Shop</a>
                                                <ul class="dropdown">
                                                    <li><a href="shop.html">Shop</a></li>
                                                    <li><a href="shop-details.html">Shop Details</a></li>
                                                    <li><a href="cart.html">Shopping Cart</a></li>
                                                    <li><a href="checkout.html">Checkout</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="portfolio.html">Portfolio</a>
                                                <ul class="dropdown">
                                                    <li><a href="portfolio.html">Portfolio</a></li>
                                                    <li><a href="gle-portfolio.html">Portfolio Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="blog.html">Blog</a>
                                                <ul class="dropdown">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="single-post.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.jsp">ABOUT</a></li>
                                   <!--   <li><a href="portfolio.html">Portfolio</a></li>
                                    <li><a href="contact.html">Contact</a></li>  -->
                                </ul>  

                                <!-- Search Icon -->
                                <div id="searchIcon" >
                                    
                                    <i aria-hidden="true"><img src="img/core-img/search.png"></i>
                                </div>

                            </div>
                            <!-- Navbar End -->
                        </div>
                    </nav>

                    <!-- Search Form -->
                    <div class="search-form">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type keywords &amp; press enter...">
                            <button type="submit" class="d-none"></button>
                        </form>
                        <!-- Close Icon -->
                        <div class="closeIcon"><i aria-hidden="true"><img src="img/core-img/search.png"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/24.jpg);">
            <h2>GOODS</h2>
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

                        <!-- Shop Widget -->
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
                        </div>

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
        
        location.href="goods_list.do?ps="+ps;
        
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
                            <h4 class="widget-title">Best Seller</h4>
                            <div class="widget-desc">

                                <!-- Single Best Seller Products -->
                                <div class="single-best-seller-product d-flex align-items-center">
                                    <div class="product-thumbnail">
                                        <a href="goods-details.html"><img src="img/bg-img/4.jpg" alt=""></a>
                                    </div>
                                    <div class="product-info">
                                        <a href="goods-details.html">Cactus Flower</a>
                                        <p>$10.99</p>
                                        <div class="ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Best Seller Products -->
                                <div class="single-best-seller-product d-flex align-items-center">
                                    <div class="product-thumbnail">
                                        <a href="goods-details.html"><img src="img/bg-img/5.jpg" alt=""></a>
                                    </div>
                                    <div class="product-info">
                                        <a href="goods-details.html">Tulip Flower</a>
                                        <p>$11.99</p>
                                        <div class="ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Best Seller Products -->
                                <div class="single-best-seller-product d-flex align-items-center">
                                    <div class="product-thumbnail">
                                        <a href="goods-details.html"><img src="img/bg-img/34.jpg" alt=""></a>
                                    </div>
                                    <div class="product-info">
                                        <a href="goods-details.html">Recuerdos Plant</a>
                                        <p>$9.99</p>
                                        <div class="ratings">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
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
                          
                          
                            <c:forEach var="goods" items="${goods.list}" >      
                                <!-- Single Product Area -->
                                <div class="col-12 col-sm-6 col-lg-4">
                                    <div class="single-product-area mb-50">
                                        <!-- Product Image -->
                                        <div class="product-img">
                                            <a href="goods_detail.do?goods_index=${goods.goods_index}"><img src="${goods.goods_repre_pic}" alt=""></a>
                                        
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

                        <!-- Pagination -->

                        <nav aria-label="Page navigation" id="link22">
                            <ul class="pagination" >
                                <c:forEach begin="1" end="${goods.totalPageCount}" var="i">
                                    <c:choose>
                                        <c:when test="${i==goods.cp}">
                                        <li class="page-item">
                                        <a class="page-link" href="goods_list.do?cp=${i}&gCode=${goods.GCode}" style="border-radius:0;" onclick="getCp();">
                                            <span style="color:black">${i}</span>
                                            </a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                        <li class="page-item">
                                        <a class="page-link" href="goods_list.do?cp=${i}&gCode=${goods.GCode}" style="border-radius:0;" onclick="getCp();">
                                            <span>${i}</span>
                                            </a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                              <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a></li>  
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Shop Area End ##### -->

    <!-- Footer Bottom Area -->
    <div class="footer-bottom-area"style="background-color: whitesmoke !important; padding-top:50px; ">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="border-line"></div>
                </div>
                <!-- Copywrite Text -->
                <div class="col-12 col-md-6" >
                    <div class="copywrite-text"style="background-color: whitesmoke !important; ">
                        <img src="img/core-img/creakok.png" alt=""><br/>
                        <p>creakok@gmail.com  |  02.707.1480<br/>
                            평일 10:00~17:00 (점심시간 12:00~13:00)<br/>
                            토/일/공휴일 휴무</p>
                        <p>(주)크리콕 | 소속 : 비트캠프 신촌센터  | 호스팅 제공자 : (주)CJ ENM<br/>
                            서울 마포구 백범로 23 구프라자 3층</p>
                        <p>ⓒ CREAKOK All rights reserved.</p>
                    </div>
                </div>
                <!-- Footer Nav -->
            </div>
        </div>
    </div>
    <!-- ##### Footer Area End ##### -->

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
</body>

</html>