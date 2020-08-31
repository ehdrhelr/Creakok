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
    <title>COMMUNITY - CREAKOK</title>

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
   
    <!-- 잠깐 삭제
    <!-- Wadiz Css --
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
  

	<link href="css/css_board/reservation_page.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css"
	href="timepicker/jquery.datetimepicker.css"/ >
	<link rel="shortcut icon" href="bit_logo.png" />
	

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
    <div id="header_div">
    <jsp:include page="creakok_header.jsp" flush="true"/>
    </div>
    </header>
    <!-- ##### Header Area End ##### -->

	<!-- ##### Hero Area Start ##### -->
    <section class="hero-area">     

            <!-- Single Hero Post -->
            <div class="single-hero-post bg-overlay">
                <!-- Post Image -->
				<div class="slide-img bg-img" style="background-image: url(img/community/${theCreator.creator_banner_photo});"></div>
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
																		<img src="img/community/${theCreator.creator_profile_photo}" alt="">
																	</div>
																</div>
																<div class="col-12 col-md-6">
																	<div class="testimonial-content">
																		<!-- Section Heading -->
																		<div class="section-heading">
																			<h2>${theCreator.creator_name}</h2>
																			<p> </p>
																			<p>${theCreator.creator_profile_content}</p>
																		</div>
																		<p> </p>
																		<div class="testimonial-author-info">
																			 <div class="welcome-btn-group" style="padding:5px">
																			 <c:if test="${!empty theCreator.creator_link_youtube}">
																				 <a href="${theCreator.creator_link_youtube}"><img src="img/bg-img/youtube.png" alt=""></a>
																			 </c:if>
																			 <c:if test="${!empty theCreator.creator_link_instagram}">	 
																				 <a href="${theCreator.creator_link_instagram}"><img src="img/bg-img/insta.png" alt=""></a>
																			</c:if>
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
                        <h2>${theCreator.creator_name}의 컨텐츠</h2>
                        <p>다양한 컨텐츠를 확인해보세요!</p>
                    </div>
                </div>
            </div>
   
            <div class="row justify-content-center">
				
				<c:forEach items="${contentList}" var="content">
                <!-- Single Blog Post Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-blog-post mb-100">
						<div class="embed-responsive embed-responsive-16by9" style="width:350px; height:200px;">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/${content}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
                    </div>
                </div>
                </c:forEach>

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
				<p style="color:white">채팅방에서 팬들과 함께 소통해요</p>
				<p class="crowdy-btn-introduction" >
				<a href="#"style="color:white; text-align:center">채팅방 입장</a>
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

          </td>
          <!-- 없는게 나을 것 같다.
          <td colspan="2" align="center">
            총 게시물 수 : ${listResult.totalCount}
          </td>
        	-->  
        
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
			location.href="board_page?&board_filterBy="+board_filterBy+"#fix_point";

		} 
	</script>
  <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
</body>

</html>