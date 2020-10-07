<%@ page contentType="text/html; charset=utf-8"
import="creakok.com.filesetting.Path"%>
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
    <link rel="stylesheet" href="css/only_about_jsp_css.css">
	
	<link rel="stylesheet" href="css/progressBar.css">

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
    
    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-post-slides owl-carousel">

            <!-- Single Hero Post -->
            <div class="single-hero-post bg-overlay">
                <!-- Post Image -->
                <div class="slide-img bg-img" style="background-image: url(${Path.COMMON_IMG_PATH}about.png);"></div>
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <!-- Post Content -->
                            <div class="hero-slides-content text-center">
                                <h2 style="text-align:left;line-height:1.3">크리에이터, 그리고 팬덤</h2>
                                <p style="text-align:left;margin-top:10px">
                                	크리콕은 크리에이터와 팬의 효과적인 상호작용을 위한 온라인 플랫폼입니다. <br>
                                	크리에이터로 나만의 브랜딩도 하고, <br>팬들과 소통하는 채널을 만들어보세요.
								</p>
                                
                                <!--
                                <div class="welcome-btn-group">
                                    <a href="#" class="btn alazea-btn mr-30">GET STARTED</a>
                                    <a href="#" class="btn alazea-btn active">CONTACT US</a>
                                </div>
                                  -->
                                  
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    
    

    
    
    
        <!-- ##### Team Area Start ##### -->
    <section class="team-area section-padding-100-0">
    
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                         <h2 style="font-family:Jalnan;line-height: 1.3; margin-bottom: 20px;"><span style="color:#2da498">CREA</span><span style="color:#cccccc">TOR</span> <span style="color:#fc5230">KOK!</span></h2>
                        <p>크리콕은 내가 관심있는 크리에이터를 고르고<br/>
                            펀딩, 커뮤니티 등 다양한 방법으로 <br/>
                            크리에이터와 함께 소통할 수 있는 공간입니다.</p>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Single Team Member Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb -->
                        <div class="team-member-thumb">
                             <img src="img/plus/funding-1.jpg" alt="">
                        </div>

                    </div>
                </div>

                <!-- Single Team Member Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb -->
                        <div class="team-member-thumb">
                             <img src="img/plus/goods-1.jpg" alt="">
                        </div>
                        <!-- Team Member Info
                      
                        <div class="team-member-info mt-30">
                            <h5 style="font-size:13pt;font-weight:500;">굿즈 판매</h5>
                            <p>크리에이터의 특별한 굿즈를 만나보세요</p>
                        </div> -->
                    </div>
                </div>

                <!-- Single Team Member Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb -->
                        <div class="team-member-thumb">
                             <img src="img/plus/community-1.jpg" alt="">
                        </div>
                        <!-- Team Member Info
                        <div class="team-member-info mt-30">
                            <h5 style="font-size:13pt;font-weight:500;">다양한 커뮤니티</h5>
                            <p>나와크리에이터의 소통 공간</p>
                        </div> -->
                    </div>
                </div>

                <!-- Single Team Member Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb -->
                        <div class="team-member-thumb">
                             <img src="img/plus/creator.jpg" alt="">
                        </div>
                        <!-- Team Member Info
                        <div class="team-member-info mt-30">
                            <h5>Joseph Corbin</h5>
                            <p>내가 관심있는 크리에이터</p>
                        </div> -->
                    </div>
                </div>

            </div>
        </div>
        

        
    </section>
    <!-- ##### Team Area End ##### -->

    
    
    
    
    
    
    
    

    <!-- ##### Product Area Start ##### -->
    <section class="new-arrivals-products-area bg-gray section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2 style="margin-bottom:20px;font-family:Jalnan;">1. 컨텐츠 펀딩</h2>
                        <p>크리에이터가 제안하는 컨텐츠! 펀딩에서 만나요</p>
                    </div>
                </div>
            </div>
       </div>
    
		<div class="container">
            <div class="row">
                <!-- Single Product Area -->
              <c:forEach items="${funding_top3}" var="fundingVo">
           
                <div class="col-12 col-sm-6 col-lg-4">
                      <div class="single-benefits-area">                   
                          <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                              </a><div class="CommonCard_rect__2wpm4">
                                    <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                                        <span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" style="background-image:url(img/core-img/ex1.png)">
                                            </span></a>
                                  
                                                 <a href="funding_detail.do?funding_index=${fundingVo.funding_index}">
                                
                                                     <img src="${fundingVo.funding_repre_pic}" alt="">
                                                </a>
           
                                    <div class="CommonCard_info__1f4kq">
                                    <div class="RewardProjectCard_info__3JFub">
                                        <div class="RewardProjectCard_infoTop__3QR5w">
                                        <a href="funding_detail.do?funding_index=${fundingVo.funding_index}" class="CardLink_link__1k83H">
                                            <p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs" style="color:#111111; font-size:17px;">
                                                <strong>${fundingVo.funding_subject}</strong>
                                            </p>
                                        </a>
                                    <div style="margin-bottom: 10px;">
                                        <span class="RewardProjectCard_category__2muXk" style="color:#90949C; font-size:13px;">
                                           ${fundingVo.funding_category_name}
                                        </span>
                                        <span class="RewardProjectCard_makerName__2q4oH" style="color:#90949C; font-size:13px;">
                                            ${fundingVo.creator_name}
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
                                               
                                               <progress class="myBars" max="100" value="0" data-percentage="${fundingVo.percentage}"></progress>
                                               <!--<span class="fill" data-percentage="60" style="border-radius: 5px; width: 162px; transition: width 1s ease-in-out 0s; background: rgb(252, 82, 48);"></span> -->
                                            </div>
                                        </div>
                                          
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#fc5230; font-size:18px; font-weight:bold">
                                            ${fundingVo.percentage}%
                                        </span>                                      
                                        
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#90949C; font-size:16px; margin-right:5%;font-weight:bold">
                                              ${fundingVo.funding_amount}원
                                        </span>
                                        <span class="RewardProjectCard_days__3eece RewardProjectCard_isAchieve__1LcUu">
                                            <span class="RewardProjectCard_remainingDay__2TqyN" style="color:#90949C; margin-right:5px;">${fundingVo.restdays}일</span>
                                            <span class="RewardProjectCard_remainingDayText__2sRLV" style="color:#90949C;"> 남음</span>
                                            <span class="RewardProjectCard_isAchieve__1LcUu"></span></span>
                                     </div>
                                    </div>  
                                </div>
                            </div>
                            </div>
                   </c:forEach>   
            </div>

	        <div class="col-12 text-center">
	            <a href="#" onclick="funding_membercheck()" class="btn alazea-btn" style="font-size:15pt;background-color:#2da498;color:white;font-weight:500;">컨텐츠 제안하러 가기</a>
	        </div>
	        
        </div>
    </section>
    <!-- ##### Product Area End ##### -->




    <!-- ##### Team Area Start ##### -->
    <section class="team-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2 style="margin-bottom:20px;font-family:Jalnan;">2. 굿즈 판매</h2>
                        <p>크리에이터의 특별한 굿즈를 만나보세요</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <c:forEach items="${goods_top3}" var="goods_top3">
                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-product-area mb-100">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="goods_detail.do?goods_index=${goods_top3.goods_index}"><img src="img/goods/${goods_top3.goods_repre_pic}" alt=""></a>
                            <!-- Product Tag
                            <div class="product-tag">
                                <a href="#">Hot</a>
                            </div> -->

                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15">
                            <p style="margin-bottom:5px;">${goods_top3.creator_name}</p>
                            <a href="goods_detail.do?goods_index=${goods_top3.goods_index}">
                                <p style="color:#545454;font-weight:500;font-size:1.5em">${goods_top3.goods_name}</p>
                            </a>
                            <h6 style="font-size:1.5em"><strong>${goods_top3.goods_price}</strong> 원</h6>
                        </div> 
                    </div>
                </div>
             </c:forEach>
            </div>

	        <div class="col-12 text-center" style="margin-bottom:10%">
	            <a href="#" onclick="goods_membercheck()" class="btn alazea-btn" style="font-size:15pt;background-color:#fc5230;color:white;font-weight:500;">굿즈 판매하러 가기</a>
		    </div>
	    
        </div>
        

    </section>
    <!-- ##### Team Area End ##### -->

  
    
        <!-- ##### Product Area Start ##### -->
    <section class="new-arrivals-products-area bg-gray section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2 style="margin-bottom:20px;font-family:Jalnan;">3. 커뮤니티</h2>
                        <p>크리에이터별로 커뮤니티가 구성되어 팬들과 소통할 수 있습니다</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <c:forEach items="${creator3}" var="creator3">
                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-product-area mb-100">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="board_page?creator_name=${creator3.creator_name}"><img src="img/community/${creator3.creator_profile_photo}" alt=""></a>
                            <!-- Product Tag
                            <div class="product-tag">
                                <a href="#">Hot</a>
                            </div> -->

                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15">
                            <a href="board_page?creator_name=${creator3.creator_name}">
                                <p style="color:#545454;font-weight:500;font-size:1.5em">${creator3.creator_name}</p>
                            </a>
                            <h6 style="font-size:1em">${creator3.creator_profile_content}</h6>
                        </div> 
                    </div>
                </div>
             </c:forEach>
            </div>
            
            
        </div>
    </section>
    <!-- ##### Product Area End ##### -->
    
    
    
    
        <!-- ##### Cool Facts Area Start ##### -->
    <section class="cool-facts-area bg-img section-padding-100-0" style="background-image:linear-gradient(90deg,#fc5230 10%,#2da498 100%);">
        <div class="container">
            <div class="row">

                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
                        <div class="cf-icon">
                            <img src="img/plus/fundings_icon.png" class="wideImg" alt="">
                        </div>
                        <div class="cf-content">
                        	<h2 style="color:white;font-size:30pt;font-family:Jalnan;">${funding_count}<span style="font-size:15pt;margin-left:2px">개의</span></h2>
                            <h6 style="font-size:15pt;color:#ffff;">FUNDINGS</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
                        <div class="cf-icon">
                            <img src="img/plus/goods_icon.png" class="wideImg" alt="">
                        </div>
                        <div class="cf-content">
                            <h2 style="color:white;font-size:30pt;font-family:Jalnan;">${goods_count}<span style="font-size:15pt;margin-left:2px">개의</span></h2>
                            <h6 style="font-size:15pt;color:#ffff;">GOODS</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
                        <div class="cf-icon">
                            <img src="img/plus/community_icon.png" alt="" class="wideImg" >
                        </div>
                        <div class="cf-content"> 
                            <h2 style="color:white;font-size:30pt;font-family:Jalnan;">${creator_count}<span style="font-size:15pt;margin-left:2px">개의</span></h2>
                            <h6 style="font-size:15pt;color:#ffff;">COMMUNITES</h6>
                        </div>
                    </div>
                </div>

                <!-- Single Cool Facts Area -->
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="single-cool-fact d-flex align-items-center justify-content-center mb-100">
                        <div class="cf-icon">
                            <img src="img/plus/creator_icon.png" class="wideImg" alt="">
                        </div>
                        <div class="cf-content">
                            <h2 style="color:white;font-size:30pt;font-family:Jalnan;">${creator_count}<span style="font-size:15pt;margin-left:2px">명의</span></h2>
                            <h6 style="font-size:15pt;color:#ffff;">CREATORS</h6>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- Side Image
        <div class="side-img wow fadeInUp" data-wow-delay="500ms">
            <img src="img/core-img/pot.png" alt="">
        </div> -->
    </section>

    
    <section class="contact-area section-padding-100-0">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-12 col-lg-6">
                    <!-- Google Maps -->
                    <div class="map-area mb-100">
                        <img style="-webkit-user-select: none;" src="http://127.0.0.1:8090/img/plus/brand_identity.png">
                    </div>
                </div>
                
                  <div class="col-12 col-lg-5">
                    <!-- Section Heading -->
                    <div class="section-heading">
                        <h2>Brand Identity</h2>
                        <p>크리에이터 콕! 내가 좋아하는 크리에이터를 만나보세요</p>
                    </div>
                    <!-- Contact Form Area -->
                    <div class="contact-form-area mb-100">
                        <form action="index_qna.do" method="post">
                            <div class="row">
                                <div class="col-12">
                                    <p>
                                                                              크리콕의 기업 아이덴티티는 쉽고 단순한 형태로, 
                                                                              다양한 크리에이터의 개성을 톡톡 튀는 컬러에 담았습니다.
                                                                              팬들은 좋아하는 크리에이터를 선택하고 자유롭게 소통할 수 있습니다.  
                                                                              때로는 로고의 한 부분이 유동적으로 움직이며 확장합니다. 
                                       1인 미디어 시대의 흐름을 만드는 크리콕의 메시지를 담아, 
                                       ‘더 나은 소통’에 대한 영감을 주고자 합니다.
                                    </p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
    
    <script src="js/progressBar.js"></script>
    
    <script>
		function funding_membercheck(){
			if('${member.member_email}' == '') {
			  	alert('로그인 해주세요');
			  		location.href="member_login.do";
			       return false;
			 }
			if('${member.member_email}' != '') {  
			  		location.href="/fundingwrite_form.do";	
			}		
		}
		
		function goods_membercheck(){
			if('${member.member_email}' == '') {
			  	alert('로그인 해주세요');
			  		location.href="member_login.do";
			       return false;
			 }
			if('${member.member_email}' != '') {  
			  		location.href="/goods_project_write_form.do";	
			}		
		}
	</script>    
   
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
</body>

</html>