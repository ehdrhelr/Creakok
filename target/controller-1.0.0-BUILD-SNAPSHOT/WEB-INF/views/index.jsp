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
    <link rel="icon" href="../img/core-img/creakok.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    
    <!-- Wadiz Css -->
    <link rel="stylesheet" href="css/wadiz_css1.css">
     <link rel="stylesheet" href="css/wadiz_css2.css">
    <link rel="stylesheet" href="css/wadiz_css3.css">
    <link rel="stylesheet" href="css/wadiz_css4.css">
     <style>
        .three {
            flex:0 0 33% !important;
        }
        .ranking{
            flex:0 0 35% !important;
        }
        .howAbout{
            flex:0 0 70% !important;
            max-width:63% !important;
        }
    </style>
        
     <style>
                    #bar2 .fill{
                        background: rgb(252, 82, 48);
                        width: 153px;
                        transition: width 1s ease-in-out 0s;
                        }
                </style>
                  <style>
                                .crowdy-btn-introduction {
                                    display: inline-block;
                                    border: rgba(255,255,255,.16);
                                    background-color: rgba(255,255,255,.16);
                                    text-align: center;
                                    color: #fff;
                                    padding: 0 21px;
                                    margin-top: 18px;
                                    height: 35px;
                                    border-radius: 3px;
                                    font-size: 16px;
                                    line-height: 2.1;
                                    letter-spacing: -.5px;
                                }
                             </style>
                
                
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

</head>

<body>
    <c:if test="${empty member}">
      <script>
      console.log("empty member");
      </script>
    </c:if>
    <c:if test="${!empty member}">
      <script>
      console.log("member exist");
      console.log('email: ${member.member_email}');
      console.log('name: ${member.member_name}');
      console.log('pass: ${member.member_password}');
      </script>
    </c:if>
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
                                    <button type="button" class="makeProject" style="font-size:9pt;color:#fc5230;border:1px solid #fc5230;border-radius:3px;padding:3px 4px;margin-right:15px;">프로젝트 만들기</button>
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
                                    
                                <c:if test="${empty member}">
                                  <!-- Login -->
                                  <div class="login"><a href="member_login.do"><i aria-hidden="true"></i> <span>Login</span></a></div>
                                  <!-- Sign up -->
                                  <div class="join"><a href="member_join.do"><i aria-hidden="true"></i> <span>Join</span></a></div>
                                </c:if>
                                <c:if test="${!empty member}">
                                  <!-- Login -->
                                  <div class="login"><a href="member_logout.do"><i aria-hidden="true"></i> <span>Logout</span></a></div>
                                  
                                  <!-- My Page -->
                                  <div class="mypage"><a href="member_mypage.do"><i aria-hidden="true"></i> <span>My Page</span></a></div>
                                  
                                  <!-- Cart -->
                                  <div class="cart"><a href="#"><i  aria-hidden="true"></i> <span>Cart <span class="cart-quantity">(1)</span></span></a></div>
                                </c:if> 
                                
                                
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
<<<<<<< HEAD
                                    <li><a href="funding.do">FUNDING</a></li>
                                    <li><a href="goods.jsp">GOODS</a></li>
                                     <li><a href="#">COMMUNITY</a>
                                        <ul class="dropdown">
                                        	<c:forEach items="${creatorList}" var="creator">
                                            <li><a href="board_page">${creator.creator_name}</a></li>
                                            </c:forEach>
                                  <!--     
=======
                                   <li><a href="funding_list.do">FUNDING</a></li>
                                   <li><a href="goods_list.do?cp=1&ps=3&filterBy=goods_sale_number&gCode=300">GOODS</a></li>
                                    <li><a href="#">COMMUNITY</a>
>>>>>>> refs/remotes/origin/jhann_temp_master
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
                                            
                                            
                                            -->
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

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-post-slides owl-carousel">

            <!-- Single Hero Post -->
            <div class="single-hero-post bg-overlay">
                <!-- Post Image -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/1.jpg);"></div>
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <!-- Post Content -->
                            <div class="hero-slides-content text-center">
                                <h2>Plants exist in the weather and light rays that surround them</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque ante nec ipsum iaculis, ac iaculis ipsum porttitor. Vivamus cursus nisl lectus, id mattis nisl lobortis eu. Duis diam augue, dapibus ut dolor at, mattis maximus dolor.</p>
                                <div class="welcome-btn-group">
                                    <a href="#" class="btn alazea-btn mr-30">GET STARTED</a>
                                    <a href="#" class="btn alazea-btn active">CONTACT US</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Post -->
            <div class="single-hero-post bg-overlay">
                <!-- Post Image -->
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/2.jpg);"></div>
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <!-- Post Content -->
                            <div class="hero-slides-content text-center">
                                <h2>Plants exist in the weather and light rays that surround them</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque ante nec ipsum iaculis, ac iaculis ipsum porttitor. Vivamus cursus nisl lectus, id mattis nisl lobortis eu. Duis diam augue, dapibus ut dolor at, mattis maximus dolor.</p>
                                <div class="welcome-btn-group">
                                    <a href="#" class="btn alazea-btn mr-30">GET STARTED</a>
                                    <a href="#" class="btn alazea-btn active">CONTACT US</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <!-- ##### About Area Start ##### -->
    <section class="about-us-area section-padding-100-0">
        <div class="container">
            <div class="row justify-content-between">

             
                                    
                                    
                                    
                <div class="col-12 col-lg-6 howAbout">
                    <div class="alazea-benefits-area">
                        
                    <div class="section-heading">
                        <h2>이 프로젝트 어때요?</h2>
                        <p>We are leading in the plants service fields.</p>
                    </div>
                        <div class="row">
     
                            
                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6  three">

                                <div class="single-benefits-area ">                   
                                    <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                                        <div class="CommonCard_rect__2wpm4">
                                            <span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" 
                                                  style="background-image:url(img/core-img/ex1.png)">
                                                 <a href="shop-details.html">
                                                     <img src="img/core-img/ex2.jpg" alt="">
                                                </a>
                                            </span>
        
                                        </div>
                                    </a>
                                    <div class="CommonCard_info__1f4kq">
                                    <div class="RewardProjectCard_info__3JFub">
                                        <div class="RewardProjectCard_infoTop__3QR5w">
                                        <a href="#" class="CardLink_link__1k83H">
                                            <p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs" style="color:#111111; font-size:17px;">
                                                <strong>가격과 온도를 모두 낮췄다! 10억펀딩 신소재 &lt;밸런스온 이지핏 베개&gt;</strong>
                                            </p>
                                        </a>
                                    <div style="margin-bottom: 10px;">
                                        <span class="RewardProjectCard_category__2muXk" style="color:#90949C; font-size:13px;">
                                            홈리빙
                                        </span>
                                        <span class="RewardProjectCard_makerName__2q4oH" style="color:#90949C; font-size:13px;">
                                            밸런스온 (불스원)
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
                                           
                                            <div id="bar3" class="barfiller" style="border-radius:5px;">
                                               
                                                <span class="fill" data-percentage="60" style="border-radius:5px;!important; width: 126px; transition: width 1s ease-in-out 0s;"></span>
                                            </div>
                                        </div>
                                          
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#fc5230; font-size:18px; font-weight:bold">
                                           80%
                                        </span>                                      
                                        
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#90949C; font-size:16px; margin-right:5%;font-weight:bold">
                                            55,828,600원
                                        </span>
                                        <span class="RewardProjectCard_days__3eece RewardProjectCard_isAchieve__1LcUu">
                                            <span class="RewardProjectCard_remainingDay__2TqyN" style="color:#90949C; margin-right:5px;">17일</span>
                                            <span class="RewardProjectCard_remainingDayText__2sRLV" style="color:#90949C;">남음</span>
                                            <span class="RewardProjectCard_isAchieve__1LcUu"></span></span>
                                     </div>
                                    </div>  
                                </div>
                            </div>

                            
                            
                            
                            
                            
                            
                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6 three">

                                <div class="single-benefits-area">                   
                                    <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                                        <div class="CommonCard_rect__2wpm4">
                                            <span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" 
                                                  style="background-image:url(img/core-img/ex1.png)">
                                                 <a href="shop-details.html">
                                                     <img src="img/core-img/ex2.jpg" alt="">
                                                </a>
                                            </span>
        
                                        </div>
                                    </a>
                                    <div class="CommonCard_info__1f4kq">
                                    <div class="RewardProjectCard_info__3JFub">
                                        <div class="RewardProjectCard_infoTop__3QR5w">
                                        <a href="#" class="CardLink_link__1k83H">
                                            <p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs" style="color:#111111; font-size:17px;">
                                                <strong>가격과 온도를 모두 낮췄다! 10억펀딩 신소재 &lt;밸런스온 이지핏 베개&gt;</strong>
                                            </p>
                                        </a>
                                    <div style="margin-bottom: 10px;">
                                        <span class="RewardProjectCard_category__2muXk" style="color:#90949C; font-size:13px;">
                                            홈리빙
                                        </span>
                                        <span class="RewardProjectCard_makerName__2q4oH" style="color:#90949C; font-size:13px;">
                                            밸런스온 (불스원)
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
                                               
                                                <span class="fill" data-percentage="60" style="border-radius: 5px;!important; width: 126px; transition: width 1s ease-in-out 0s;"></span>
                                            </div>
                                        </div>
                                          
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#fc5230; font-size:18px; font-weight:bold">
                                           80%
                                        </span>                                      
                                        
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#90949C; font-size:16px; margin-right:5%;font-weight:bold">
                                            55,828,600원
                                        </span>
                                        <span class="RewardProjectCard_days__3eece RewardProjectCard_isAchieve__1LcUu">
                                            <span class="RewardProjectCard_remainingDay__2TqyN" style="color:#90949C; margin-right:5px;">17일</span>
                                            <span class="RewardProjectCard_remainingDayText__2sRLV" style="color:#90949C;">남음</span>
                                            <span class="RewardProjectCard_isAchieve__1LcUu"></span></span>
                                     </div>
                                    </div>  
                                </div>
                            </div>
 
                      
                            
                            
                            
                            
                        </div>
                    </div>
                </div>
                
                
                
                <style>
                    #bar2 .fill{
                        background: rgb(252, 82, 48);
                        width: 153px;
                        transition: width 1s ease-in-out 0s;
                        }
                </style>
                
                
                
                
               <div class="col-12 col-lg-5 ranking"  style="width:70%">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2 style="margin-bottom: 5px;">실시간 랭킹</h2>
                        
                        
                        <button type="button" title="REWARD" class="TabButton_btnTab__K2OC3 TabButton_active__32awQ">
                                             펀딩하기
                        </button>&nbsp;&nbsp;
                         |&nbsp;&nbsp;
                        <button type="button" title="EQUITY" class="TabButton_btnTab__K2OC3">
                                             투자하기
                        </button>
                    </div>

                                    
                                    
                                    
                                    
                         <section class="SectionContainerLayout_container__1f8kt RankingFundingWrap_container__2VQZB RecommendationDesktop_rankingFunding__RiDmN">
                             
                             <div>
                                 <div>
                                     
                                     <div class="TabContainer_tab__LrP70">
                                         
                                    
                                   <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309"><article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:35px;float:left;font-size:20px;font-weight: 500">
                                                     1
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, <br/>에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez" style="margin-bottom:20px;">
                                                     <span class="commons_achievementRate__2J-KL" style="color:#fc5230;font-weight: 600">
                                                     1,278%
                                                     </span>
                                                     패션·잡화
                                                 </p>
                                             </div>
                                             </article>
                                         </a>                     
                                    </div>
                               
                                       
                                       
                                       
                                    <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309"><article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:35px;float:left;font-size:20px;font-weight: 500">
                                                    2
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, <br/>에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez"  style="margin-bottom:20px;">
                                                     <span class="commons_achievementRate__2J-KL" style="color:#fc5230;font-weight: 600">
                                                     1,278%
                                                     </span>
                                                     패션·잡화
                                                 </p>
                                             </div>
                                             </article>
                                         </a>                     
                                    </div>                                   
                                        
                                    <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309"><article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:35px;float:left;font-size:20px;font-weight: 500">
                                                     3
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, <br/>에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez"  style="margin-bottom:20px;">
                                                     <span class="commons_achievementRate__2J-KL" style="color:#fc5230;font-weight: 600">
                                                     1,278%
                                                     </span>
                                                     패션·잡화
                                                 </p>
                                             </div>
                                             </article>
                                         </a>                     
                                    </div>   
                                        
                                        
                                        
                                   <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309"><article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:35px;float:left;font-size:20px;font-weight: 500">
                                                     4
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, <br/>에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez"  style="margin-bottom:20px;">
                                                     <span class="commons_achievementRate__2J-KL" style="color:#fc5230;font-weight: 600">
                                                     1,278%
                                                     </span>
                                                     패션·잡화
                                                 </p>
                                             </div>
                                             </article>
                                         </a>                     
                                    </div>   
                                       
                                       
                                        
                     
                                        
                             
                                 </div>
                             </div>                                      
                                         
                                         
                                </div>
                                     

                            
                                       </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                    </section>           
                                
                                    
                                    
                                    
                                    
                                    

                    <!-- Progress Bar Content Area
                    <div class="alazea-progress-bar mb-50">
                        <!-- Single Progress Bar 
                        <div class="single_progress_bar">
                            <p>Office plants</p>
                            <div id="bar1" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="80"></span>
                            </div>
                        </div>
                    </div>  -->
                </div>
                
                
                
                
                
                
                
                
                
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="border-line"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### About Area End ##### -->
    
    
    
    
    






    <!-- ##### Testimonial Area Start ##### -->
    <section class="testimonial-area section-padding-100 bg-gray" style="margin-top:80px">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="testimonials-slides owl-carousel">

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-thumb">
                                        <img src="img/bg-img/13.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-content">
                                        <!-- Section Heading -->
                                        <div class="section-heading">
                                            <h2>이달의 크리에이터</h2>
                                            <p>어쩌고 저쩌고?</p>
                                        </div>
                                        <p>“크리에이터의 소갯말이 나올것이여어어어어어어어어”</p>
                                        <div class="testimonial-author-info">
                                            <h6>김형섭</h6>
                                            <p>인천 앞바다 다크나이트</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-thumb">
                                        <img src="img/bg-img/14.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-content">
                                        <!-- Section Heading -->
                                        <div class="section-heading">
                                            <h2>이달의 크리에이터</h2>
                                            <p>어쩌고 저쩌고?</p>
                                        </div>
                                        <p>“크리에이터의 소갯말이 나올것이여어어어어어어어어”</p>
                                        <div class="testimonial-author-info">
                                            <h6>김형섭</h6>
                                            <p>인천 앞바다 다크나이트</p>
                                        </div>
                                    </div>
                                </div>
                            </div>      
                        </div>

                        <!-- Single Testimonial Slide -->
                        <div class="single-testimonial-slide">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-thumb">
                                        <img src="img/bg-img/15.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-content">
                                        <!-- Section Heading -->
                                        <div class="section-heading">
                                             <h2>이달의 크리에이터</h2>
                                            <p>어쩌고 저쩌고?</p>
                                        </div>
                                        <p>“크리에이터의 소갯말이 나올것이여어어어어어어어어”</p>
                                        <div class="testimonial-author-info">
                                            <h6>김형섭</h6>
                                            <p>인천 앞바다 다크나이트</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Testimonial Area End ##### -->

    
    
    
    
    

    
    
    
    
    	<div id="preloder">
		<div class="loader"></div>
	</div>
    
    
<!--크리에이터띠 싱단 배너-->
   <section class="subscribe-newsletter-area" style="background-image:linear-gradient(90deg,#fc5230 10%,#2da498 100%);">
        <div class="container">
            
            
         
          
                
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2 style="color:white; ">소통하는 사회, 크리콕!</h2>
                        <p style="color:white">크리에이터와 대중이 자유롭게 "소통하는 공간", 크리콕</p>
                      <p class="crowdy-btn-introduction" >
                          <a href="#"style="color:white; text-align:center">자세히 알아보기</a>
                        </p>
                       
                        
                   
                    </div>
                </div>
                
              
               
                     <style>
                                .crowdy-btn-introduction {
                                    display: inline-block;
                                    border: rgba(255,255,255,.16);
                                    background-color: rgba(255,255,255,.16);
                                    text-align: center;
                                    color: #fff;
                                    padding: 0 21px;
                                    margin-top: 18px;
                                    height: 35px;
                                    border-radius: 3px;
                                    font-size: 16px;
                                    line-height: 2.1;
                                    letter-spacing: -.5px;
                                }
                             </style>
                
                
                <!--
                    <div class="col-12 col-lg-6">
                        <div class="subscribe-form">
                            <form action="#" method="get">
                                <input type="email" name="subscribe-email" id="subscribeEmail" placeholder="Enter your email">
                                <button type="submit" class="btn alazea-btn">SUBSCRIBE</button>
                            </form>
                        </div>
                    </div>
                -->
         
    

        <!-- Subscribe Side Thumbnail -->
        <div class="subscribe-side-thumb wow fadeInUp" data-wow-delay="500ms" style="visibility: visible; animation-delay: 500ms; animation-name: fadeInUp;">
          
        </div>
       
    </section>
    
<!--크리에이터띠 싱단 배너끝-->
	<!-- Hero Section -->
   
 
    
	<section class="hero__section">
        <div class="section-heading text-center">
                        <h2 style="margin-bottom:10px">크리콕 커뮤니티</h2>
                       <!-- <p>크리에이터를 검색해보세요.</p>-->
                   
            
      
                <form action="#" method="get" >
              
                 
                    <input style ="width:300px; height:35px; background-color:#b7c7c5" type="search" name="searchCreator" id="searchCreator" placeholder="크리에이터를 검색해보세요.">
                      <button type="submit" > <img src="img/core-img/search.png"></button>
                       
                
        </form>
        </div>
     
      

        
        
		<div class="hero-slider">
			<div class="slide-item">
				<a class="fresco" href="img/img_boto/hero-slider/1.jpg" data-fresco-group="projects">
					<img src="img/img_boto/hero-slider/1.jpg" alt="">
				</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/img_boto/hero-slider/2.jpg" data-fresco-group="projects">
					<img src="img/img_boto/hero-slider/2.jpg" alt="">
					</a>
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/img_boto/hero-slider/3.jpg" data-fresco-group="projects">
					<img src="img/img_boto/hero-slider/3.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/img_boto/hero-slider/4.jpg" data-fresco-group="projects">
					<img src="img/img_boto/hero-slider/4.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/img_boto/hero-slider/5.jpg" data-fresco-group="projects">
					<img src="img/img_boto/hero-slider/5.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="imgimg_boto//hero-slider/6.jpg" data-fresco-group="projects">
					<img src="img/img_boto/hero-slider/6.jpg" alt="">
				</a>	
			</div>
			<div class="slide-item">
				<a class="fresco" href="img/img_boto/hero-slider/7.jpg" data-fresco-group="projects">
					<img src="img/img_boto/hero-slider/7.jpg" alt="">
				</a>	
			</div>
		</div>
		<div class="hero-text-slider">
			<div class="text-item">
				<h2>Nature</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Red Heartbeat</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Blue Dreem</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Christian Church</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Red Darkness</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Beauty with Brain</h2>
				<p>Photography</p>
			</div>
			<div class="text-item">
				<h2>Remarkable</h2>
				<p>Photography</p>
			</div>
		</div>
	</section>
	<!-- Hero Section end -->
    
    	<!--====== Javascripts & Jquery ======-->
	<script src="js_botoTest/vendor/jquery-3.2.1.min.js"></script>
	<script src="js_botoTest/jquery.slicknav.min.js"></script>
	<script src="js_botoTest/slick.min.js"></script>
	<script src="js_botoTest/fresco.min.js"></script>
	<script src="js_botoTest/main.js"></script>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <!-- ##### Product Area Start ##### -->
    <section class="new-arrivals-products-area bg-gray section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>오늘의 추천</h2>
                        <p>크리콕 팀이 추천하는 굿즈를 만나보세요!</p>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/9.jpg" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag">
                                <a href="#">Hot</a>
                            </div>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="200ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/10.jpg" alt=""></a>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/11.jpg" alt=""></a>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="400ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="shop-details.html"><img src="img/bg-img/12.jpg" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag sale-tag">
                                <a href="#">Hot</a>
                            </div>
                            <div class="product-meta d-flex">
                                <a href="#" class="wishlist-btn"><i class="icon_heart_alt"></i></a>
                                <a href="cart.html" class="add-to-cart-btn">Add to cart</a>
                                <a href="#" class="compare-btn"><i class="arrow_left-right_alt"></i></a>
                            </div>
                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                            <a href="shop-details.html">
                                <p>Cactus Flower</p>
                            </a>
                            <h6>$10.99</h6>
                        </div>
                    </div>
                </div>

                <div class="col-12 text-center">
                    <a href="#" class="btn alazea-btn">더보기</a>
                </div>

            </div>
        </div>
    </section>
    <!-- ##### Product Area End ##### -->

   
    
    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100-0">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-12 col-lg-5">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>문의하기</h2>
                        <p>크리콕 팀과 소통을 원하시다면 메세지를 보내주세요!</p>
                    </div>
                    <!-- Contact Form Area -->
                    <div class="contact-form-area mb-100">
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="contact-name" placeholder="이름">
                                    </div>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="contact-email" placeholder="이메일주소">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="contact-subject" placeholder="제목">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="메세지"></textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn alazea-btn mt-15">메세지 보내기</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <!-- Google Maps -->
                    <div class="map-area mb-100">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.1103800595524!2d126.93563751564793!3d37.552463132690974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c98be0a2cf6e3%3A0x4d8963de2196f6dc!2z7ISc7Jq47Yq567OE7IucIOuniO2PrOq1rCDrjIDtnaXrj5kg67Cx67KU66GcIDIz!5e0!3m2!1sko!2skr!4v1596181509875!5m2!1sko!2skr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0">allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->

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