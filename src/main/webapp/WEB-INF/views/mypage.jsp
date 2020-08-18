<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.Member_origin"%>
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
    <link rel="icon" href="img/core-img/favicon.ico">

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
    <script src="js/hcbae_js.js"></script>

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
                                    <li><a href="goods.html">GOODS</a></li>
                                    <li><a href="#">COMMUNITY</a>
                                        <ul class="dropdown">
                                            <li><a href="index.html" >Home</a></li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="shop.html">Shop</a>
                                                <ul class="dropdown">
                                                    <li><a href="shop.html">Shop</a></li>
                                                    <li><a href="goods-details.html">Shop Details</a></li>
                                                    <li><a href="cart.html">Shopping Cart</a></li>
                                                    <li><a href="checkout.html">Checkout</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="portfolio.html">Portfolio</a>
                                                <ul class="dropdown">
                                                    <li><a href="portfolio.html">Portfolio</a></li>
                                                    <li><a href="single-portfolio.html">Portfolio Details</a></li>
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
                                  <!--  <li><a href="shop.html">ABOUT</a></li>
                                    <li><a href="portfolio.html">Portfolio</a></li>
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
            <h2>My Page</h2>
        </div>

        <div class="container"> <!--Home>My Page-->
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">My Page</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div> <!--end of Home>My Page-->


        <div class="container"> 
          <!-- Nav tabs -->
            <div class="row"> <!--My Page Tabs Headers-->
                <div class="col-12">
                    <div class="most__search__tab">
                        <ul class="nav nav-tabs nav-pills" role="tablist">
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link active" data-toggle="tab" href="#jjim-list" role="tab">찜리스트</a>
                            </li>
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link" data-toggle="tab" href="#member-modify" role="tab">회원정보수정</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> <!--end of My Page Tabs Headers-->

        
            <!-- Tab panes -->
            <div class="tab-content"> <!--My Page Tabs Contents-->
                <div id="jjim-list" class="container tab-pane active">
                    <h3>찜리스트</h3>
                    <p>찜리스트 어떻게 표시할까?</p>
                </div>
              
                <div id="member-modify" class="container tab-pane fade">
                
                    <div class="hcbae-member-modify-area">
                        <h3>회원 이메일</h3>
                        <label>${member.member_email}</label> 
                        <label style="float:right;">가입일 : ${member.member_joindate}</label>
                    </div>
                    <div class="hcbae-member-modify-area">
                        <h3>이름</h3>
                        <label>${member.member_name}</label>
                        
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#member-name-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this)">
                        </span>
                        <div id="member-name-area" class="collapse">
                          <div class="hcbae-member-modify-input">
                            <label>새로운 이름을 입력해주세요.</label><br>
                            <input type="text" class="hcbae-mypage-input-box-border" id="nowName" placeholder="새로운 이름" onKeyUp="checkName(this);">
                            <label id="checkName_Id"></label>
                          </div>
                          <span>
                          <input class="btn" type="button" value="변경하기" onclick="changeName('${member.member_email}')">
                          </span>
                        </div>
                    </div>
                    
                    <div class="hcbae-member-modify-area">
                        <h3>프로필 사진</h3>
                        <p>${member.member_profile_pic}</p>
                        
                        <c:if test="${!empty member.member_profile_pic}">
                          <img style="height:100px;" src="${member.member_profile_pic}">                                
                        </c:if>
                        
                        <span class="hcbae-member-modify-button">
                        
                        <c:if test="${member.member_origin_code==Member_origin.SIGNUP_NORMAL}">
                          <input class="btn" type="button" data-target="#profile-pic-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this)">
                        </c:if>

                        </span>
                        <div id="profile-pic-area" class="collapse">
                          <p>사진 저장 관련하여 정리 되고 프로필 사진을 표시할 수 있게 되면 추가 수정하자.</p>
                        </div>
                    </div>
                    <c:if test="${member.member_origin_code==Member_origin.SIGNUP_NORMAL}">
                    <div class="hcbae-member-modify-area">
                        <h3>비밀번호</h3>
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#password-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this); clearModifyPasswordArea();">
                        </span>
                        
                        <div id="password-area" class="collapse">

                          <div class="hcbae-member-modify-input">
                            <label>현재 비밀번호를 입력해주세요.</label><br>
                            <input type="password" class="hcbae-mypage-input-box-border" id="nowPassword" placeholder="현재 비밀번호" onKeyUp="checkPassword('${member.member_email}');">
                            <label id="checkPasswordResult"></label>
                          </div>
                          
                          <div class="hcbae-member-modify-input">
                            <label>새로운 비밀번호를 입력해주세요.</label><br>
                            <input type="password" class="hcbae-mypage-input-box-border" id="newPassword" placeholder="새로운 비밀번호" >
                            <br><br>
                            <input type="password" class="hcbae-mypage-input-box-border" id="newPasswordAgain" placeholder="새로운 비밀번호 확인" onKeyUp="checkNewPassword()">
                            <label id="checkNewPasswordResult"></label>
                          </div>
                          
                          <span>
                          <input class="btn" type="button" value="변경하기" onclick="changePassword('${member.member_email}')">
                          </span>

                        </div>
                    </div>
                    </c:if>
                    
                    <div class="hcbae-member-modify-area">
                        <h3>수정할 정보가 뭐가 더 있을까?</h3>
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#add-modify-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this)">
                        </span>
                        
                        <div id="add-modify-area" class="collapse">
                        <p>수정할 내용을 어떻게 수정할 지 고민해보고 추가하자.</p>
                        </div>   
                    </div>
                    
                    <div class="hcbae-member-modify-area">
                        <h3>회원탈퇴</h3>
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#secession-area" data-toggle="collapse" value="수정">
                        </span>
                        
                        <div id="secession-area" class="collapse">
                            <p>CREAKOK을 탈퇴하시겠습니까? (굳이? ㅠㅠ)</p>
                            <c:if test="${member.member_origin_code==Member_origin.SIGNUP_NORMAL}">
                              <div class="hcbae-member-modify-input">
                                <label>현재 비밀번호를 입력해주세요.</label><br>
                                <input type="password" class="hcbae-mypage-input-box-border" id="secessionPassword" placeholder="현재 비밀번호" onKeyUp="checkSecession('${member.member_email}')">
                                <label id="checkSecessionResult"></label>
                              </div>
                              
                              <span>
                              <input class="btn" type="button" value="탈퇴하기" onclick="secessionPassword('${member.member_email}')">
                              </span>              
                            </c:if>
                            <c:if test="${member.member_origin_code!=Member_origin.SIGNUP_NORMAL}">
                              <span>
                              <input class="btn" type="button" value="탈퇴하기" onclick="secessionSocial('${member.member_email}')">
                              </span>
                            </c:if>
                        </div>                           
                    </div>
                    
                </div>
            </div> <!--My Page Tabs Contents-->
        </div>
    </div>


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
    
    
    <script type="text/javascript">
    </script>
</body>

</html>