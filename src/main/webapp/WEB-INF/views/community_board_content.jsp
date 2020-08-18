<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		function no_right() {
			Toast.fire({
				icon: 'error',
				title: '수정 권한이 없어요.'
				})
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
                                            <li><a href="index.html" >${creator.creator_name}</a></li>
                                            </c:forEach>
                                            
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

	<!-- 게시판 영역 start -->
	<nav class="page-nav">
		<div class="inner">
			<ul>
				<li class="current"><a href="#">글 작성하기</a></li>
			</ul>
		</div>
	</nav>
	<div class="r_list">
		<div class="text-center">
				<table border="1" width="600" align="center" cellpadding="3" cellspacing="1">
	              	<tbody>
	              	<!--
					<tr>
						<td width="30%" align="center">작성자</td>
						<td align="center"><input type="text" name="writer" size="60" style='background-color:#dbdbdb' readonly value="${board.member_name}"></td>
					</tr>
					<tr>
						<td align="center">날짜</td>
						<td align="center"><input type="text" name="email" size="60" value="${board.board_wdate}"></td>
					</tr>
					<tr>
						<td align="center">글제목</td>
						<td align="center"><input type="text" name="title" size="60" value="${board.board_subject}"></td>
					</tr>
					<tr>
						<td align="center">글내용</td>
						<td align="center"><textarea name="content" rows="5" cols="53" style="width:400px; height:250px;">${board.board_content}</textarea></td>
					</tr>
					<tr>
						<td align="center">조회수</td>
						<td align="center"><input type="text" name="title" size="60" value="${board.board_view}"></td>
					</tr>
					<tr>
						<td align="center">좋아요</td>
						<td align="center"><input type="text" name="title" size="60" value="${board.board_like}"></td>
					</tr>
					<tr>
					<td colspan='2' align='center'>
						<c:if test="${empty member}">
							<a href='#' style='width:50px; line-height:50%;' onclick="check_login()" ><img src=img/like/empty_heart.png></a>
						</c:if>
						<c:if test="${!empty member}">
							<a href='#' style='width:50px; line-height:50%;'><img src=img/like/empty_heart.png></a>
					    </c:if>
					</td>
					</tr>
					-->
					<form role="form" method="post" autocomplete="off">
  
						   <div class="form-group col-sm-12">
						    	
						    	<div class="">
						    	<label for="bno" class="col-sm-2 control-label" style="display:block">글 번호</label>
						    		<input type="text" id="bno" name="bno" class="form-control" value="${board.board_index}" readonly="readonly" style="width:50%;display:inline-block"/>
						   		</div>
						  
						   
			
						    	<label for="title" class="col-sm-2 control-label">글 제목</label>
						    	<div class="">
						    		<input type="text" id="title" name="title" class="form-control" value="${board.board_subject}" readonly="readonly"  style="width:50%;display:inline-block"/>
						    	</div>
					
					
						    	<label for="content" class="col-sm-2 control-label">글 내용</label>
						    	<div class="">
						    		<textarea id="content" name="content" class="form-control" readonly="readonly"> ${board.board_content}</textarea>
						   		</div>
						
						
						   	    <label for="writer" class="col-sm-2 control-label">작성자</label>
						   	    <div class="col-sm-12">
						   	    <input type="text" id="writer" name="writer" class="form-control" value="${board.member_name}" readonly="readonly" /><br />
						    	</div>
						 
					
						   	 	<label class="control-label">작성 날짜</label>
						   		<span><fmt:formatDate value="${board.board_wdate}" pattern="yyyy-MM-dd" /></span>
						

						    <label for="view">조회수</label><input type="text" id="view" name="view" value="${board.board_view}" readonly="readonly"  />
						   
						    <label for="like">좋아요수</label><input type="text" id="like" name="like" value="${board.board_like}" readonly="readonly"  />
						    </div>

						  </form>
						  <!-- 게시물 끝 -->
						  <tr>
						  <td colspan='2' align='center'>
						   	<p>
						   	 <div class="form-group">
						   	 	<c:if test="${empty member}">
						    		<button type="button" id="modify_btn" class="replyUpdate btn-warning btn-xs" 
						    		style="display:inline-block;height:30px;width: 50px !important;"
						    		 onclick="check_login()">수정</button>
						    		<button type="button" id="delete_btn" class="replyUpdate btn-danger btn-xs" 
						    		style="display:inline-block;height:30px;width: 50px !important;"
						    		 onclick="check_login()">삭제</button>
						   		</c:if>
						   		<c:if test="${!empty member}">
						   			<c:if test="${member.member_email == board.member_email}">
							   			<button type="button" id="modify_btn" class="replyUpdate btn-warning btn-xs" 
							    		style="display:inline-block;height:30px;width: 50px !important;"
							    		 onclick="location.href='board_update?board_index=${board.board_index}';">수정</button>
							    		<button type="button" id="delete_btn" class="replyUpdate btn-danger btn-xs" 
							    		style="display:inline-block;height:30px;width: 50px !important;"
							    		 onclick="location.href='board_delete?board_index=${board.board_index}';">삭제</button>
						   			</c:if>
						   			<c:if test="${member.member_email ne board.member_email}">
						   				<button type="button" id="modify_btn" class="replyUpdate btn-warning btn-xs" 
							    		style="display:inline-block;height:30px;width: 50px !important;"
							    		 onclick="no_right()">수정</button>
							    		<button type="button" id="delete_btn" class="replyUpdate btn-danger btn-xs" 
							    		style="display:inline-block;height:30px;width: 50px !important;"
							    		 onclick="no_right()">삭제</button>
						   			</c:if>
						   		</c:if>
						   	</p>
						   </td>
						   <tr>
					</tbody>
				</table>
					<br>
					
					<div id="reply">
						 <ol class="replyList">
						 <c:forEach items="${commentList}" var="repList">
						 <li>
						  <p>
						  <span class="glyphicon glyphicon-user"></span>
						  	${repList.member_name}
						  	(<fmt:formatDate value="${repList.comment_wdate}" pattern="yyyy-MM-dd" />)
						  </p>
						  
						  <p class="bg-info" style="width:50%; background-color:white !important;">${repList.comment_content}</p>
						  
						  <div class="form-group text-center" >
						  	<button type="button" class="replyUpdate btn-warning btn-xs" data-rno="${repList.comment_index}" style="display:inline-block;height:30px;width: 50px !important;">수정</button>
						  	<button type="button" class="replyUpdate btn-danger btn-xs" data-rno="${repList.comment_index}" style="display:inline-block;height:30px;width: 50px !important;">삭제</button>
						  </div>
						 </li>
						 </c:forEach>   
						 </ol>
					</div>
					<section class="replyForm">
						<form role="form" method="post" autocomplete="off" class="form-horizontal">
						
						 <input type="hidden" id="bno" name="bno" value="${read.bno}" readonly="readonly" />
						 <input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
						 <input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
						 <input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
						 <input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />
						
						 <div class="form-group">
						 	<label for="comment_writer" class="col-sm-2 control-label">작성자</label>
						 	<div class="col-sm-10">
						 		<input type="text" id="comment_writer" name="comment_writer" />
						 	</div>
						 </div>
						 
						 <div class="form-group">
						 	<label for="comment_content" class="col-sm-2 control-labe">댓글 내용</label>
						 	<div class="col-sm-10">
						 		<textarea id="content" name="comment_content" class="form-control"></textarea>
						 	</div>
						 </div>
						 
						 <div class="form-group">
						 	<div class="col-sm-offset-2 col-sm-10">
						  		<button type="button" class="repSubmit btn-success" style="display:inline-block;height:30px;width: 50px !important;">작성</button>
						  <script>
						  var formObj = $(".replyForm form[role='form']");
						        
						  $(".repSubmit").click(function(){
						   formObj.attr("action", "replyWrite");
						   formObj.submit();
						  });
						  </script>
						 </p>
						</form>
					</section>
		</div>
	</div>
	

   <!-- 게시판 영역 end -->

 <section id="container">

 </section>
 
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

