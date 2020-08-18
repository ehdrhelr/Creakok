<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

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
	
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>COMMUNITY - CREAKOK</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    
    <!-- Wadiz Css -->
    <link rel="stylesheet" href="css/wadiz_css1.css">
    <link rel="stylesheet" href="css/wadiz_css2.css">
    <link rel="stylesheet" href="css/wadiz_css3.css">
    <link rel="stylesheet" href="css/wadiz_css4.css">

	<!-- for review -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,700&display=swap&subset=korean" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR:300,400,700&display=swap&subset=korean" rel="stylesheet">
    <link rel='stylesheet' id='content-css'  href='css/css_board/content.css' type='text/css' media='all' />
   <link rel='stylesheet' id='global-css'  href='css/css_board/global.css' type='text/css' media='all' />
   <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
   <script src="js/js_board/jquery.form.min.js"></script>
   <script src="js/js_board/jquery.validate.min.js"></script>
   <script src="js/js_board/vue.min.js"></script>
   <script src="js/js_board/jquery.cookie.js"></script>

   <script src="js/js_board/moment.min.js"></script>
   <script src="js/js_board/moment-timezone-with-data.min.js"></script>

   <script src="js/js_board/vueComponent/vue-filter.js"></script>
   <script src="js/js_board/app/App.js"></script>

	<link href="css/css_board/reservation_page.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css"
	href="timepicker/jquery.datetimepicker.css"/ >
	<link rel="shortcut icon" href="bit_logo.png" />
	<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="timepicker/jquery.js"></script>
	<script src="timepicker/jquery.datetimepicker.full.min.js"></script>
	<script src="js/js_board/login.js"></script>

    <style>
        .three {
            flex:0 0 33%;!important;
        }
        .ranking{
            flex:0 0 35%;!important;
        }
        .howAbout{
            flex:0 0 70%;!important;
            max-width:63%;!important;
        }
    </style>
    
    <!-- sweet alert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    
    <script>
		const Toast = Swal.mixin({
			toast: true,
			position: 'top-end',
			showConfirmButton: false,
			timer: 3000,
			timerProgressBar: true,
			onOpen: (toast) => {
			toast.addEventListener('mouseenter', Swal.stopTimer)
			toast.addEventListener('mouseleave', Swal.resumeTimer)
			}
		})
		function check_login() {
			Toast.fire({
				icon: 'error',
				title: '로그인 후 이용해주세요.'
				})
			}
	</script>
	
	 <script language="javascript">
		function f(select){
			var board_filterBy = select.value;
			location.href="board_page?board_filterBy="+board_filterBy+"#fix_point";
		} 
	</script>
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
                                <!-- Login -->
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
                                    <li><a href="shop.html">GOODS</a></li>
                                  	<li><a href="#">COMMUNITY</a>
                                        <ul class="dropdown">
                                        	<c:forEach items="${creatorList}" var="creator">
                                            <li><a href="board_page">${creator.creator_name}</a></li>
                                            </c:forEach>
                                            <!--  
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

<!-- ##### Hero Area Start ##### -->
    <section class="hero-area">     

            <!-- Single Hero Post -->
            <div class="single-hero-post bg-overlay">
                <!-- Post Image -->
				<div class="slide-img bg-img" style="background-image: url(img/bg-img/dark_thumb.jpeg);"></div>
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <!-- Post Content -->
                            <div class="hero-slides-content text-center">
								 <!-- ##### Testimonial Area Start ##### -->
									<section class="testimonial-area section-padding-100">
										<div class="container">
											<div class="row">
												<div class="col-12">
														<!-- Single Testimonial Slide -->
														<div class="single-testimonial-slide">
															<div class="row align-items-center">
																<div class="col-12 col-md-6">
																	<div class="testimonial-thumb" style="margin-left:5px">
																		<img src="img/bg-img/dark_face.jpg" alt="">
																	</div>
																</div>
																<div class="col-12 col-md-6">
																	<div class="testimonial-content">
																		<!-- Section Heading -->
																		<div class="section-heading">
																			<h2>DARK KNIGHT</h2>
																			<p> </p>
																			<p>Why so serious?</p>
																		</div>
																		<p> </p>
																		<div class="testimonial-author-info">
																			 <div class="welcome-btn-group" style="padding:5px">
																				 <img src="img/bg-img/youtube.png" alt="">
																				 <img src="img/bg-img/insta.png" alt="">
																				 
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
                                <div class="welcome-btn-group">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
       
    </section>
    <!-- ##### Hero Area End ##### -->

	<!-- ##### Blog Area Start ##### -->
    <section class="alazea-blog-area section-padding-100-0" style="align:center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>다크나이트의 컨텐츠</h2>
                        <p>다양한 컨텐츠를 확인해보세요!</p>
                    </div>
                </div>
            </div>
   
            <div class="row justify-content-center">
			
                <!-- Single Blog Post Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-post mb-100">
						<div class="embed-responsive embed-responsive-16by9" style="width:350px; height:200px;">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/mMXCy0eKu7Q" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
                    </div>
                </div>

                <!-- Single Blog Post Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-post mb-100">
                         <div class="embed-responsive embed-responsive-16by9" style="width:350px; height:200px;">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/tU5RYxK8yvA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
                    </div>
                </div>

                <!-- Single Blog Post Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-post mb-100">
                         <div class="embed-responsive embed-responsive-16by9" style="width:350px; height:200px;">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/3GqFW36Zz4w" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>       
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- ##### Blog Area End ##### -->

	 <!-- ##### About Area Start ##### -->
    <section class="about-us-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-12 col-lg-5">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>이런 컨텐츠 어때요?</h2>
                        <p>다크나이트가 만들어주었으면 하는 컨텐츠를 직접 투표해주세요!</p>
                    </div>

					<!-- Progress Bar Content Area -->
                    <div class="alazea-progress-bar mb-50">
                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar">
                            <p>어벤져스 촬영장 방문하기</p>
                            <div id="bar1" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="80"></span>
								
                            </div>
							
                        </div>

                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar">
                            <p>고담 썰 풀기</p>
                            <div id="bar2" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="70"></span>
                            </div>
                        </div>

                        <!-- Single Progress Bar -->
                        <div class="single_progress_bar">
                            <p>조커랑 합방하기</p>
                            <div id="bar3" class="barfiller">
                                <div class="tipWrap">
                                    <span class="tip"></span>
                                </div>
                                <span class="fill" data-percentage="85"></span>
                            </div>
                        </div>
              
                    </div>
                </div>
				
				  <div class="col-12 col-lg-6">
                    <div class="alazea-benefits-area">
                        <div class="row">
                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6" style="margin-left:130px">
                                <div class="single-benefits-area">
                                    <img src="img/core-img/like.png" alt="">

                                </div>
                            </div>                            
                        </div>
                    </div>
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
	<!--크리에이터띠 싱단 배너-->
   <section class="subscribe-newsletter-area" style="background-image:linear-gradient(90deg,#fc5230 10%,#2da498 100%);">
        <div class="container">
             <!-- Section Heading -->
			<div class="section-heading text-center">
				<h2 style="color:white; ">소통하는 사회, 크리콕!</h2>
				<p style="color:white">자유게시판에서 팬들과 함께 소통해요</p>
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
        <!-- Subscribe Side Thumbnail -->
        <a name="fix_point"></a>
        <div class="subscribe-side-thumb wow fadeInUp" data-wow-delay="500ms" style="visibility: visible; animation-delay: 500ms; animation-name: fadeInUp;">
          
        </div>
       
    </section>
	<!-- 게시판 영역 start -->
	
	<nav class="page-nav">
		<div class="inner">
			<ul>
				<li class="current"><a href="#">자유게시판</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
			
			<div class="r_list">
				<div class="choose">
					<ul class="clearfix">
						<li><span>정렬 : </span>
						<select name="board_filterBy" id="store_code" onChange="f(this)" style='height:30px; margin-bottom:3px;'>
							<c:choose>
								<c:when test="${listResult.board_filterBy == 'BOARD_INDEX'}">
									<option value="BOARD_INDEX" selected>최신순</option>
									<option value="BOARD_VIEW">조회순</option>
									<option value="BOARD_LIKE">좋아요순</option>
								</c:when>
								<c:when test="${listResult.board_filterBy == 'BOARD_VIEW'}">
									<option value="BOARD_INDEX">최신순</option>
									<option value="BOARD_VIEW" selected>조회순</option>
									<option value="BOARD_LIKE">좋아요순</option>
								</c:when>
								<c:when test="${listResult.board_filterBy == 'BOARD_LIKE'}">
									<option value="BOARD_INDEX">최신순</option>
									<option value="BOARD_VIEW">조회순</option>
									<option value="BOARD_LIKE" selected>좋아요순</option>
								</c:when>
							</c:choose>
						</select>
					</ul>
					<form action="board_search#fix_point" name="check_into"
						method="get">  
						<ul class="clearfix">
							<li><span>분류 : </span> 
							<select name="board_c_code" id="store_code" onChange="text.value=c_code[selectedIndex].value" style='height:30px; margin-bottom:3px;'>
									<option value="MEMBER_NAME">작성자</option>
									<option value="BOARD_SUBJECT">글제목</option>
							</select>

							<li>
								<input type="text" name="board_searchName" style='height:30px; margin-bottom:3px;'
									title="검색" required placeholder="Search" ma	xlength="20">
								<button type="submit" style='height:30px;'>검색</button></li>
						</ul>
					</form>
				</div>
				<table>
					<colgroup>
						<col width="5%">
						<col width="60%">
						<col width="5%">
						<col width="10%">
						<col width="5%">
						<col width="5%">
					</colgroup>
					<thead>

						<tr>
							<th> </th>
					<!--	<th>EXHIBITION</th>	-->
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회</th>
							<th>좋아요</th>
						</tr>
					</thead>
					<tbody>
						  <c:if test="${empty listResult.list}">
				           <TR align='center' noshade>
				                <TD colspan="6"> 게시글이 없습니다. </TD>
				           </TR>
				        </c:if>
				        <c:forEach items="${listResult.list}" var="board">
				         <TR align='center' noshade>
				             <TD >${board.board_index}</TD>
				             <TD align="left">
				                 <a href="board_content?board_index=${board.board_index}">
				                 ${board.board_subject}
				                 </a>
				             </TD>
				             <TD>${board.member_name}</TD>
				             <TD>${board.board_wdate}</TD>
				             <TD>${board.board_view}</TD>
				             <TD>${board.board_like}</TD>
				          </TR> 
				        </c:forEach>

					</tbody>
				</table>
	<td colspan="6">
            <hr width="1120" color="white" size="2" noshade>
          </td>
        </tr>
        <tr>
          <td colspan="3" align="center">
          	
         	<c:if test="${empty listResult.board_searchName}">
            <c:forEach begin="1" end="${listResult.totalPageCount}" var="i">
                	<a href="board_page?board_cp=${i}#fix_point">
                <c:choose> 
                <c:when test="${i==listResult.currentPage}">
                    <strong>${i}</strong>
                </c:when>
                <c:otherwise>
                    ${i}
                </c:otherwise>
                </c:choose>
            </a>
            
            &nbsp;
            </c:forEach>
			</c:if>
            <c:if test="${!empty listResult.board_searchName}"> 
            <c:forEach begin="1" end="${listResult.totalPageCount}" var="i">
                	<a href="board_search?board_cp=${i}#fix_point">
                <c:choose> 
                <c:when test="${i==listResult.currentPage}">
                    <strong>${i}</strong>
                </c:when>
                <c:otherwise>
                    ${i}
                </c:otherwise>
                </c:choose>
            </a>
            
            &nbsp;
            </c:forEach>
            </c:if>
             &nbsp;&nbsp;&nbsp; 
            ${listResult.currentPage}page/${listResult.totalPageCount}pages
          </td>
          <td colspan="2" align="center">
            총 게시물 수 : ${listResult.totalCount}
          </td>
        </tr>
        <c:if test="${empty member}">
        	<button type="button" class="searchBtn">
			<a style='background-color:black;!important; color:white;!important; width:70px;!important; margin-bottom:20%;!important;' onclick="check_login()">글쓰기</a></button>
    	</c:if>
   		<c:if test="${!empty member}">
			<button type="button" class="searchBtn">
			<a style='background-color:black;!important; color:white;!important; width:70px;!important; margin-bottom:20%;!important;' href="board_write">글쓰기</a></button>
    	</c:if>
       
		</div>
   </div>
   <!-- 게시판 영역 end -->

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