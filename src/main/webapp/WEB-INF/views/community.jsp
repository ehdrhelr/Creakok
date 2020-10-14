<%@ page contentType="text/html; charset=utf-8"
import ="creakok.com.filesetting.Path"%>
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
   
	<!-- for review -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- <link rel='stylesheet' id='global-css'  href='css/css_board/global.css' type='text/css' media='all' /> -->
	
	<link href="css/css_board/reservation_page.css" rel="stylesheet">

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
        a:link { color: black; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}	

  .glow {
    font-size: 80px;
    color: #fff;
    text-align: center;
    -webkit-animation: glow 1s ease-in-out infinite alternate;
    -moz-animation: glow 1s ease-in-out infinite alternate;
    animation: glow 1s ease-in-out infinite alternate;
  }
  
  @-webkit-keyframes glow {
    from {
      text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
    }
    to {
      text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
    }
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
				<div id="comm_bg_img" class="slide-img bg-img" style="background-image: url(${Path.IMG_STORE_COMMUNITY_SHORT}${theCreator.creator_banner_photo});"></div>
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
																			<h2 ><span id="comm_bg_head" class="glow">${theCreator.creator_name}</span></h2>
																			<p> </p>
																			<p><span id="comm_content">${theCreator.creator_profile_content}</span></p>
																		</div>
																		<p> </p>
																		<div class="testimonial-author-info">
																			 <div class="welcome-btn-group" style="padding:5px">
																			 <c:if test="${!empty theCreator.creator_link_youtube}">
																				 <a href="${theCreator.creator_link_youtube}"><img src="img/community/youtube.png" alt="" style="width:50px"></a>
																			 </c:if>
																			 <c:if test="${!empty theCreator.creator_link_instagram}">	 
																				 <a href="${theCreator.creator_link_instagram}"><img src="img/community/instagram.png" alt="" style="width:35px;border-radius:7pt;margin-left:5px"></a>
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


	<!--크리에이터띠 싱단 배너-->
   <section class="subscribe-newsletter-area" style="background-image:linear-gradient(90deg,#fc5230 10%,#2da498 100%);">
        <div class="container">
             <!-- Section Heading
			<div class="section-heading text-center">
				<h2 style="color:white; ">소통하는 사회, 크리콕!</h2>
				<p style="color:white">채팅방에서 팬들과 함께 소통해요</p>
				<p class="crowdy-btn-introduction" >
				<a href="#"style="color:white; text-align:center">채팅방 입장</a>
				</p>
			</div> -->
         <div class="section-heading text-center" style="margin-bottom: 0px;">
            <h2 style="color:white; ">소통하는 사회, 크리콕!</h2>
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
<!-- 
	<nav class="page-nav">
		<div class="inner">
			<ul>
				<li class="current"><a href="#">자유게시판</a></li>
			</ul>
		</div>
	</nav> 
-->

	<div class="container">
			
			<div class="section-heading text-center" style="margin-top:10%;margin-bottom:10%">
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
							<li><input type="hidden" name="board_cp" value=1></li> 
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
						<col width="50%">
						<col width="15%">
						<col width="10%">
						<col width="5%">
						<col width="5%">
					</colgroup>
					<thead>

						<tr>
							<th> </th>
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
				             <TD >${board.board_list_number}</TD>
				             <TD align="left">
				                 <a href="board_content?board_index=${board.board_index}" style="overflow:hidden;text-overflow:ellipsis;white-space: nowrap;margin:0;padding:0;color:black">
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
	
          </td>
        </tr>
        <tr>
        <div style="margin-top:15px">
          <td colspan="3" align="center">
        
        <c:if test="${listResult.curRange ne 1 }">
        	<a href="#" onClick="fn_paging(1)">[처음]</a> 
        </c:if>
        <c:if test="${listResult.currentPage ne 1}">
            <a href="#" onClick="fn_paging('${listResult.prevPage }')">[이전]</a> 
        </c:if>
        <c:if test="${empty listResult.board_searchName}">
        	<c:forEach begin="${listResult.startPage}" end="${listResult.endPage}" var="i">
		    	<a href="board_page?board_cp=${i}&board_filterBy=${listResult.board_filterBy}#fix_point" style="color:black">
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
           	<c:forEach begin="${listResult.startPage}" end="${listResult.endPage}" var="i">
                <a href="board_search?board_cp=${i}&board_filterBy=${listResult.board_filterBy}&board_c_code=${listResult.board_c_code}&board_searchName=${listResult.board_searchName}#fix_point">
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
            
			<c:if test="${listResult.currentPage ne listResult.totalPageCount && listResult.totalPageCount > 0}">
				<a href="#" onClick="fn_paging('${listResult.nextPage }')">[다음]</a> 
			</c:if>
			<c:if test="${listResult.curRange ne listResult.rangeCnt && listResult.rangeCnt > 0}">
				<a href="#" onClick="fn_paging('${listResult.totalPageCount }')">[끝]</a> 
			</c:if>
		
          </td>
          </div>
<!-- 참고용 
   	<div>
		총 게시글 수 : ${pagination.listCnt } /    총 페이지 수 : ${pagination.pageCnt } / 현재 페이지 : ${pagination.curPage } / 현재 블럭 : ${pagination.curRange } / 총 블럭 수 : ${pagination.rangeCnt }
	</div>
-->
        
        </tr>
        <c:if test="${empty member}">
	        <div style="margin-top:2%">
	        	<button type="button" class="searchBtn">
				<a style="background-color:black;!important; color:white;!important; width:70px;!important; padding:5px" onclick="check_login()">글쓰기</a></button>
	    	</div>
    	</c:if>
   		<c:if test="${!empty member}">
	   		<div style="margin-top:2%">
				<button type="button" class="searchBtn">
				<a style="background-color:black;!important; color:white;!important; width:70px;!important; padding:5px" href="board_write">글쓰기</a></button>
	    	</div>
    	</c:if>
       
		</div>
   </div>
	
	<script>
	function fn_paging(curPage) {
		if ('${listResult.board_searchName}' == '') {
			location.href = "board_page?board_cp="+curPage+"&board_filterBy=${listResult.board_filterBy}#fix_point"	
		} else {
			location.href = "board_search?board_cp="+curPage+"&board_filterBy=${listResult.board_filterBy}&board_c_code=${listResult.board_c_code}&board_searchName=${listResult.board_searchName}#fix_point"
		}
	}

	</script>
   <!-- 게시판 영역 end -->

	<div id="test_div" style="width:500px; height:500px; display:none;">
	</div>
	
    <script>
  	function getAverageRGB(imgEl) {
  		
  		let blockSize = 5, // only visit every 5 pixels
  			defaultRGB = {r:0,g:0,b:0}, // for non-supporting envs
  			canvas = document.createElement('canvas'),
  			context = canvas.getContext && canvas.getContext('2d'),
  			data, width, height,
  			i = -4,
  			length,
  			rgb = {r:0,g:0,b:0},
  			count = 0;
  			
  		if (!context) {
  			return defaultRGB;
  		}
  		
  		height = canvas.height = imgEl.naturalHeight || imgEl.offsetHeight || imgEl.height;
  		width = canvas.width = imgEl.naturalWidth || imgEl.offsetWidth || imgEl.width;
  		
  		context.drawImage(imgEl, 0, 0);
  		
  		try {
  			data = context.getImageData(0, 0, width, height);
  		} catch(e) {
  			/* security error, img on diff domain */alert('x');
  			return defaultRGB;
  		}
  		
  		length = data.data.length;
  		
  		while ( (i += blockSize * 4) < length ) {
  			++count;
  			rgb.r += data.data[i];
  			rgb.g += data.data[i+1];
  			rgb.b += data.data[i+2];
  		}
  		
  		// ~~ used to floor values
  		rgb.r = ~~(rgb.r/count);
  		rgb.g = ~~(rgb.g/count);
  		rgb.b = ~~(rgb.b/count);
  		
  		return rgb;
  	}
  
  	function rgbToHex ( rgbType ){ 
  		// 컬러값과 쉼표만 남기고 삭제. 
  		let rgb = rgbType.replace( /[^%,.\d]/g, "" ); 
  
  		// 쉼표(,)를 기준으로 분리해서, 배열에 담기. 
  		rgb = rgb.split( "," ); 
  
  		// 컬러값이 "%"일 경우, 변환하기. 
  		for ( var x = 0; x < 3; x++ ) { 
  				if ( rgb[ x ].indexOf( "%" ) > -1 ) rgb[ x ] = Math.round( parseFloat( rgb[ x ] ) * 2.55 ); 
  		} 
  
  		// 16진수 문자로 변환. 
  		var toHex = function( string ){ 
  				string = parseInt( string, 10 ).toString( 16 ); 
  				string = ( string.length === 1 ) ? "0" + string : string; 
  
  				return string; 
  		}; 
  
  		let r = toHex( rgb[ 0 ] ); 
  		let g = toHex( rgb[ 1 ] ); 
  		let b = toHex( rgb[ 2 ] ); 
  
  		return r + g + b; 
  	} 
  	
    let comm_bg_img = document.getElementById('comm_bg_img');
    let comm_bg_head = document.getElementById('comm_bg_head');
    let comm_content = document.getElementById('comm_content');

  	let test_div = document.getElementById('test_div');
  
  	let canvas = document.createElement('canvas'),
  	ctx = canvas.getContext("2d");
  	//let canvas = document.getElementById("test_div"),
      
  
  	canvas.width = 300;
  	canvas.height = 300;
  
  	var background = new Image();
  	background.src = "${Path.IMG_STORE_COMMUNITY_SHORT}${theCreator.creator_banner_photo}";
  	background.onload = function(){
        var rgb = getAverageRGB(background);
        var bgcolor = rgbToHex('rgb('+rgb.r+','+rgb.g+','+rgb.b+')');
        
        var fontcolor = '#FFFFFF';
        //if(bgcolor<'8c8c8c'){
        //	fontcolor = '#FFFFFF'
        //}
		
		let temp_color = "#"+bgcolor;
        //comm_bg_head.style.backgroundColor = "#"+bgcolor;
        comm_bg_head.style.color = fontcolor;
  
		test_div.style.backgroundColor = "#"+bgcolor;

		//font-size: 80px;
		//color: #fff;
		//text-align: center;
		//text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
		let theme = "0 0 20px #fff, 0 0 30px "+temp_color+", 0 0 40px "+temp_color+", 0 0 50px "+temp_color+", 0 0 60px "+temp_color+", 0 0 70px "+temp_color+", 0 0 80px "+temp_color;
		//comm_bg_head.style.textShadow = theme;
		comm_content.style.textShadow = theme;

  	}
  	
  	background.onerror = function(){
        bgcolor='FFFFFF';
        fontcolor='#FFFFFF';
        comm_bg_head.style.backgroundColor = "#"+bgcolor;
        comm_bg_head.style.color = fontcolor;
  
		test_div.style.backgroundColor = "#"+bgcolor;
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
			
			if ('${listResult.board_searchName}' == '') {
				location.href = "board_page?board_cp=1&board_filterBy="+board_filterBy+"&creator_name=${theCreator.creator_name}#fix_point"	
			} else {
				location.href = "board_search?board_cp=1&board_filterBy="+board_filterBy+"&board_c_code=${listResult.board_c_code}&board_searchName=${listResult.board_searchName}#fix_point"
			}
		} 
	</script>
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
     <!-- Javascript pagination -->
	<script type="text/javascript" src="../js/paging.js"></script>
    

    
</body>

</html>