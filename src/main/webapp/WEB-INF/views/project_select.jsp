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
    <title>Alazea - Gardening &amp; Landscaping HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    
    <!-- Wadiz Css -->
    <link rel="stylesheet" href="css/wadiz_css1.css">
     <link rel="stylesheet" href="css/wadiz_css2.css">
    <link rel="stylesheet" href="css/wadiz_css3.css">
    <link rel="stylesheet" href="css/wadiz_css4.css">
    
<style>
    @font-face {
  font-family: 'Jalnan';
  src: url('fonts/Jalnan.ttf');
}  
    .wideImg{
        max-width: 135%;!important;
    }
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
                        <a href="index.html" class="nav-brand"><img src="img/core-img/creakok.png" alt=""></a>

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
                                    <li><a href="index.html">FUNDING</a></li>
                                    <li><a href="shop.html">GOODS</a></li>
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
                                                    <li><a href="`gle-portfolio.html">Portfolio Details</a></li>
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
                                    <li><a href="shop.html">ABOUT</a></li>
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

   

    
    

    
    
    
        <!-- ##### Team Area Start ##### -->
    <section class="team-area section-padding-100-0">
        <div class="container">
        
            <div class="row" style="margin-bottom:100px">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center" style="margin-top:10%">
                         <h2 style="font-family:Jalnan;line-height: 1.3; margin-bottom: 20px;">
                         <span style="color:#2da498">프로젝트</span> <span style="color:#fc5230">만들기!</span></h2>
                        <p>크라우드펀딩으로 컨텐츠 제작을 위한 자금도 모으고, 다양한 굿즈도 판매하여,<br/>
                          
                            대중과 크리에이터간에 든든한 네트워크를 확보할 수 있습니다.</p>
                            
                      <a href="/fundingwrite_form.do"><img src="img/project/funding_project.png" alt="project_make" style="margin-top:30px"></a>
                      <a href="/goodswrite_form.do"><img src="img/project/goods_project.png" alt="project_make" style="margin-top:30px"></a>
                    </div>
                </div>
            </div>
            
            
 <!--
            <div class="row">
                <img src="img/plus/funding.png" alt="">
                <img src="img/plus/funding.png" alt="">
                
                Single Team Member Area 
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb
                        <div class="team-member-thumb">
                             <img src="img/plus/funding.png" alt="">
                        </div>
                        <!-- Team Member Info
                        <div class="team-member-info mt-30">
                            <h5 style="font-size:13pt;font-weight:500;">컨텐츠 펀딩</h5>
                            <p>크리에이터의 '이런 컨텐츠 어때요?'</p>
                        </div> 
                    </div>
                </div>

                Single Team Member Area
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb
                        <div class="team-member-thumb">
                             <img src="img/plus/goods.png" alt="">
                        </div>
                        <!-- Team Member Info
                      
                        <div class="team-member-info mt-30">
                            <h5 style="font-size:13pt;font-weight:500;">굿즈 판매</h5>
                            <p>크리에이터의 특별한 굿즈를 만나보세요</p>
                        </div>
                    </div>
                </div>  -->



            </div>
        </div>
        
    </section>
    <!-- ##### Team Area End ##### -->

    
    
    
    
    
    
    
    
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
</body>

</html>