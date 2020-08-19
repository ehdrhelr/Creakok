<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>

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
                            <a href="project.do" class="makeProject" style="font-size:9pt;color:#fc5230;border:1px solid #fc5230;border-radius:3px;padding:5px 5px;margin-right:15px;">프로젝트 만들기</a>
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
                            <li><a href="funding_list.do">FUNDING</a></li>
                            <li><a href="goods_list.do?cp=1&ps=3&filterBy=goods_sale_number&gCode=300">GOODS</a></li>
                            <li><a href="#">COMMUNITY</a>
                                <ul class="dropdown">
                                    <c:forEach items="${creatorList}" var="creator">
                                    <li><a href="board_page">${creator.creator_name}</a></li>
                                    </c:forEach>
                                </ul>
                            </li>
                            <li><a href="about.do">ABOUT</a></li>
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

</body>