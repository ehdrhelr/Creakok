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
                <div class="slide-img bg-img" style="background-image: url(img/bg-img/creakok_open_1920.png);"></div>
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <!-- <p style="text-align:left">메롱메롱</p> -->
                            <!-- Post Content -->
                            <div class="hero-slides-content text-center">
                                <h2></h2>
                                <p></p>
                                <!--
                                <div class="welcome-btn-group">
                                    <a href="#" class="btn alazea-btn mr-30">GET STARTED</a>
                                    <a href="#" class="btn alazea-btn active">CONTACT US</a>
                                </div>    -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

           <!--  Single Hero Post -->
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

             
                                    
                                    
                                    
                <div class="col-12 col-lg-6">
                    <div class="alazea-benefits-area">
                        
                    <div class="section-heading">
                        <h2>이 프로젝트 어때요?</h2>
                    </div>
                        <div class="row">
     
							<c:forEach items="${funding_list}" var="funding"> 
                            <!-- Single Benefits Area -->
                            <div class="col-12 col-sm-6">

                                <div class="single-benefits-area">                   
                                    <a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                                        </a><div class="CommonCard_rect__2wpm4"><a href="#" class="CardLink_link__1k83H CommonCard_image__vaqkf">
                                            <span class="CommonCard_background__3toTR CommonCard_visible__ABkYx" style="background-image:url(img/core-img/ex1.png)">
												</span></a><a href="funding_detail.do?funding_index=${funding.funding_index}">
                                                     <img src="${funding.funding_repre_pic}" alt="">
                                                </a>
                                            
        
                                        </div>
                                    
                                    <div class="CommonCard_info__1f4kq">
                                    <div class="RewardProjectCard_info__3JFub">
                                        <div class="RewardProjectCard_infoTop__3QR5w">
                                        <a href="#" class="CardLink_link__1k83H">
                                            <p class="CommonCard_title__1oKJY RewardProjectCard_title__iUtvs" style="color:#111111; font-size:17px;">
                                                <strong>${funding.funding_subject}</strong>
                                            </p>
                                        </a>
                                    <div style="margin-bottom: 10px;">
                                        <span class="RewardProjectCard_category__2muXk" style="color:#90949C; font-size:13px;">
                                        	${funding.funding_category_name}
                                        </span>
                                        <span class="RewardProjectCard_makerName__2q4oH" style="color:#90949C; font-size:13px;">
                                           	${funding.creator_name}
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
                                           
                                            <div id="bar1" class="barfiller" style="border-radius:50pt">
                                               
                                                <span class="fill" data-percentage="60" style="background: rgb(252, 82, 48); width: 126px; transition: width 1s ease-in-out 0s;border-radius:30pt;"></span>
                                            </div>
                                        </div>
                                          
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#fc5230; font-size:18px; font-weight:bold">
                                             ${funding.percentage}%
                                        </span>                                      
                                        
                                        <span class="RewardProjectCard_amount__2AyJF" style="color:#90949C; font-size:16px; margin-right:5%;font-weight:bold">
                                            ${funding.funding_amount}
                                        </span>
                                        <span class="RewardProjectCard_days__3eece RewardProjectCard_isAchieve__1LcUu">
                                            <span class="RewardProjectCard_remainingDay__2TqyN" style="color:#90949C; margin-right:5px;">${funding.restdays}일</span>
                                            <span class="RewardProjectCard_remainingDayText__2sRLV" style="color:#90949C;">남음</span>
                                            <span class="RewardProjectCard_isAchieve__1LcUu"></span></span>
                                     </div>
                                    </div>  
                                </div>
       
                            </div>
						</c:forEach>
						
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
                
                
                
                
                  <div class="col-12 col-lg-5" style="width:70%">
                    <!-- Section Heading -->
                    <div class="section-heading" style="margin-bottom:20px">
                        <h2 style="margin-bottom: 5px;">실시간 랭킹</h2>
                        
                        
                        <button type="button" title="REWARD" class="TabButton_btnTab__K2OC3 TabButton_active__32awQ" style="font-size:13pt;font-weight:600">
                                                              펀딩
                        </button>
                        &nbsp;&nbsp;
                         <sapn style="font-size:13pt">|</sapn>
                         &nbsp;&nbsp;
                        <button type="button" title="EQUITY" class="TabButton_btnTab__K2OC3" onclick="goodsRanking()" style="font-size:13pt;font-weight:600">
                                                              굿즈
                        </button>
                        <p>
                         	실시간 랭킹으로 현재 HOT한 펀딩/굿즈를 만나보세요.
                        </p>
                    </div>
                    
                   <section id="ranking" class="SectionContainerLayout_container__1f8kt RankingFundingWrap_container__2VQZB RecommendationDesktop_rankingFunding__RiDmN">
                             
                           
                                  <div class="TabContainer_tab__LrP70">
                                   <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309">
                                         <article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:60px;float:left;font-size:20px;font-weight: 500">
                                                     1
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, 에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez">
                                                     <span class="commons_achievementRate__2J-KL" style="margin-bottom: 5px; color:#fc5230;font-weight: 600">
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
                            
                            
                                                              <div class="TabContainer_tab__LrP70">
                                   <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309">
                                         <article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:60px;float:left;font-size:20px;font-weight: 500">
                                                     1
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, 에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez">
                                                     <span class="commons_achievementRate__2J-KL" style="margin-bottom: 5px; color:#fc5230;font-weight: 600">
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
                            
                            
                                                              <div class="TabContainer_tab__LrP70">
                                   <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309">
                                         <article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:60px;float:left;font-size:20px;font-weight: 500">
                                                     1
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, 에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez">
                                                     <span class="commons_achievementRate__2J-KL" style="margin-bottom: 5px; color:#fc5230;font-weight: 600">
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
                            
                            
                                                              <div class="TabContainer_tab__LrP70">
                                   <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309">
                                         <article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:60px;float:left;font-size:20px;font-weight: 500">
                                                     1
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, 에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez">
                                                     <span class="commons_achievementRate__2J-KL" style="margin-bottom: 5px; color:#fc5230;font-weight: 600">
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
                            
                            
                            <div class="TabContainer_tab__LrP70">
                                   <div class="TabContainer_tabList__1TS8l">
                                     <div class="TabContainer_listItem__2XDgU" style="margin-bottom:3%">
                                         <a class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP" href="/web/campaign/detail/75309">
                                         <article>
                                             <div class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
                                                 <p style="color:#111111;width:15px;margin-right:5px;height:60px;float:left;font-size:20px;font-weight: 500">
                                                     1
                                                 </p>
                                                 <span style="width:60px;height:60px;float:left; margin-right:15px;"><img src="img/core-img/b2.png" alt=""></span>
                                                 <p class="commons_title__1yGWm" style="font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500">
                                                     마스크 혁명, '탄성 고정식 덴탈마스크 프레임, 에어리(Airy)'       
                                                 </p>
                                                 <p class="commons_summary__2Ynez">
                                                     <span class="commons_achievementRate__2J-KL" style="margin-bottom: 5px; color:#fc5230;font-weight: 600">
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
                                         
                      </section>                    
                  </div>
                                     

                            
                
                                   
                                                               
                            
                                
    </section>
    <!-- ##### About Area End ##### -->
    
    
    
    
         <!--  ##### 실시간 랭킹 Ajax #####  -->
      	  <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>					                       
               <script>
	                        function goodsRanking(){
								//var jsonData = JSON.stringify(value);
								///var obj = {goods_sale_number:goods_sale_number};
								
								//var jsonData = JSON.stringify(obj);
								//console.log("jsonData: "+jsonData);
								//var jsonData = JSON.stringify(responseData);
								//var GoodsVo = JSON.parse(jsonData);
								
								$.ajax({ 
									 url: "ranking", 
									 type: "GET",
									 async: true,
  								  	 dataType: "json",
									 contentType: "application/json; charset=UTF-8", //★★ 요놈 절대 빼먹으면안됨
									 error:function(request,status,error){
									        alert("실패"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)   	
									 },
									 success: function(responseData){
										var jsonData = JSON.stringify(responseData);
										var ranking_goods = JSON.parse(jsonData);
										console.log(ranking_goods);
										//console.log("rRRRRRRRRRRRRRRRR: "+jsonData);
										
										
										var html = "";
										for(var i=0; i<ranking_goods.length; i++) {
											html += "<div class='TabContainer_tab__LrP70'>";
											html += "<div class='TabContainer_tabList__1TS8l'>";
											html += "<div class='TabContainer_listItem__2XDgU' style='margin-bottom:3%'>";
											html += "<a class='CardType_projectCard__3xhjb CardType_projectCardA__33rbP' href='/web/campaign/detail/75309'>";
											html += "<article>";
											html += "<div class='commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj'>";
											html += "<p style='color:#111111;width:15px;margin-right:5px;height:60px;float:left;font-size:20px;font-weight: 500'>"+(i+1)+"</p>";
	                                        html += "<span style='width:60px;height:60px;float:left; margin-right:15px;'><img src='img/goods/"+ranking_goods[i].goods_repre_pic+"' alt=''>";
	                                        html += "</span>";
	                                        html += "<p class='commons_title__1yGWm' style='font-size:13pt;margin-bottom: 5px; color:#111111;font-weight: 500'>"
	                                        		+ranking_goods[i].goods_name+"</p>";
	                                        html += "<p class='commons_summary__2Ynez'>";
	                                        html += "<span class='commons_achievementRate__2J-KL' style='margin-bottom: 5px; color:#fc5230;font-weight: 600'>"+ranking_goods[i].goods_price+"원</span>";
	                                        		if(ranking_goods[i].goods_category_code == 301) {
	                                        			html += "&nbsp;&nbsp;&nbsp;뷰티</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 302) {
	                                        			html += "&nbsp;&nbsp;&nbsp;디자인소품</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 303) {
	                                        			html += "&nbsp;&nbsp;&nbsp;홈리빙</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 304) {
	                                        			html += "&nbsp;&nbsp;&nbsp;테크/가전</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 305) {
	                                        			html += "&nbsp;&nbsp;&nbsp;패션/잡화</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 306) {
	                                        			html += "&nbsp;&nbsp;&nbsp;푸드</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 307) {
	                                        			html += "&nbsp;&nbsp;&nbsp;여행/레저</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 308) {
	                                        			html += "&nbsp;&nbsp;&nbsp;스포츠/모빌리티</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 309) {
	                                        			html += "&nbsp;&nbsp;&nbsp;반려동물</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 310) {
	                                        			html += "&nbsp;&nbsp;&nbsp;문화/예술</p>";
	                                        		}	                                        		
	                                        		if(ranking_goods[i].goods_category_code == 311) {
	                                        			html += "&nbsp;&nbsp;&nbsp;출산/육아</p>";
	                                        		}
	                                        		if(ranking_goods[i].goods_category_code == 312) {
	                                        			html += "&nbsp;&nbsp;&nbsp;생활/건강</p>";
	                                        		}	 	                                        				
	                                        html += "</div>";
	                                        html += "</article>";
	                                        html += "</a>";                   
	                                        html += "</div>";
	                                        html += "</div>";
	                                        html += "</div>";
	                                        
	                                        $("#ranking").html(html);
										}
											
									}
								})
	                        }
			</script>
           <!--  #####실시간 랭킹 Ajax End #####  -->          
    


    <!-- ##### Testimonial Area Start ##### -->
    <section class="testimonial-area section-padding-100 bg-gray" style="margin-top:80px">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="testimonials-slides owl-carousel">
		             
			
                       
                      <c:forEach items="${creator_list}" var="creator">
                        <div class="single-testimonial-slide">
                            <div class="row align-items-center">
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-thumb">
                                       
                                        <img src="img/community/${creator.creator_profile_photo}" alt="">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="testimonial-content">
                                        <!-- Section Heading -->
                                        <div class="section-heading">
                                     
                                        	<p>이달의 크리에이터</p>
                                            <h2>${creator.creator_name}</h2>
                                        </div>
                                    
                                        <p>${creator.creator_profile_content}</p>
                                        <div class="testimonial-author-info">
                                           
                                            <h6 style="font-size:1em">채널 바로가기</h6>
                                            <a href="https://www.youtube.com/" style="display:inline-block;margin-top:10px;margin-right:5px"><img src="img/community/youtube.png" style="width:49px"></a>
                                            <a href="https://www.instagram.com" style="display:inline-block;margin-top:8px"><img src="img/community/instagram.png" style="width:35px"></a>
                                        </div>
                                    </div>
                                </div>
                          
                            </div>
                        </div>
					   </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Testimonial Area End ##### -->


    
    

    
<!--크리에이터띠 싱단 배너-->
   <section class="subscribe-newsletter-area" style="background-image:linear-gradient(90deg,#fc5230 10%,#2da498 100%);">
        <div class="container">
            
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2 style="color:white; ">소통하는 사회, 크리콕!</h2>
                        <p style="color:white">크리에이터와 대중이 자유롭게 "소통하는 공간", 크리콕</p>
                      	<p class="crowdy-btn-introduction" >
                          <a href="about.do"style="color:white; text-align:center">자세히 알아보기</a>
                        </p>
                       
                    </div>
                </div>
        <!-- Subscribe Side Thumbnail -->
        <div class="subscribe-side-thumb wow fadeInUp" data-wow-delay="500ms" style="visibility: visible; animation-delay: 500ms; animation-name: fadeInUp;">
      </div>
   </section>
    
<!--크리에이터띠 싱단 배너끝-->
	<!-- Hero Section -->
   
 
    
	<section class="hero__section">
        <div class="section-heading text-center">

                        <h2 style="margin-bottom:10px">크리콕 커뮤니티</h2>
                        <p>다양한 크리에이터의 커뮤니티를 방문해보세요.</p>
               
                    <!-- <input type="search" name="searchCreator" id="searchCreator" placeholder="크리에이터를 검색해보세요." style="width:300px; height:35px; background-color:#b7c7c5;opacity:0.7;border:0">
                      <button type="submit" onclick="searchCreator()"> <img src="img/core-img/search.png"></button>  -->
            
        </div>
     
        
		<div class="hero-slider" id="search_creator_result">
			<c:forEach items="${all_creator}" var="all_creator">
				<div class="slide-item">
					<a class="fresco" href="#" data-fresco-group="projects" onclick="location.href='board_page?creator_name=${all_creator.creator_name}'">
						<img src="img/community/${all_creator.creator_profile_photo}" alt="">
					</a>
					
					<h2 style="text-align:center">${all_creator.creator_name}</h2>
					<p style="text-align:center">${all_creator.creator_profile_content}</p>
				</div>
			</c:forEach>
		</div>
		
		<div class="hero-text-slider">
		
			<div class="text-item">

			</div>

		</div>
		
	</section>
	<!-- Hero Section end -->
	
	
 
          <!--  ##### 크리에이터 검색 Ajax #####  -->
          <script src="js_botoTest/slick.min.js"></script>
      	  <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>					                       
               <script>
	                        function searchCreator(){
								//var jsonData = JSON.stringify(value);
								///var obj = {goods_sale_number:goods_sale_number};
								
								//var jsonData = JSON.stringify(obj);
								//console.log("jsonData: "+jsonData);
								//var jsonData = JSON.stringify(responseData);
								//var GoodsVo = JSON.parse(jsonData);

								$.ajax({ 
									 url: "search_creator.do", 
									 type: "GET",
									 async: true,
  								  	 dataType: "json",
  								  	 data:{"creator_name" : $('#searchCreator').val()},
									 contentType: "application/json; charset=UTF-8", //★★ 요놈 절대 빼먹으면안됨
									 error:function(request,status,error){
									        alert("실패"+"code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)   	
									 },
									 success: function(responseData){
										console.log(responseData);
										var jsonData = JSON.stringify(responseData);
										var search_creator = JSON.parse(jsonData);
										console.log(search_creator);
										
										//var html2 = "";
										//$('#search_creator_result').empty();
										//for(var i=0; i<search_creator.length; i++) {
										//	html2 += "<div class='slide-item'>";
										//	html2 += "<a class='fresco' href='#' data-fresco-group='projects'>";
										//	html2 += "<img src='img/community/"+search_creator[i].creator_profile_photo+"' alt=''>";
										//	html2 += "</a>";
										//	html2 += "<h2 style='text-align:center'>"+search_creator[i].creator_name+"</h2>";
										//	html2 += "<p style='text-align:center'>"+search_creator[i].creator_profile_content+"</p>";
										//	html2 += "</div>";
										//}
										
										//$('#search_creator_result').html(html2);
									}
								})
	                        }
	                        

	    				
			</script>
           <!--  ##### 크리에이터 검색 End #####  -->   
 
    
    	<!--====== Javascripts & Jquery ======-->
	<script src="js_botoTest/vendor/jquery-3.2.1.min.js"></script>
	<script src="js_botoTest/jquery.slicknav.min.js"></script>
	<script src="js_botoTest/slick.min.js"></script>
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

               <c:forEach var="goods" items="${goods_list}" >  
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="goods_detail.do?goods_index=${goods.goods_index}"><img src="img/goods/${goods.goods_repre_pic}" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag">
                                <a href="#">Hot</a>
                            </div>

                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15 text-center">
                       	 <p style="margin-bottom:5px;text-align:left">${goods.creator_name}</p>
                            <a href="goods_detail.do?goods_index=${goods.goods_index}">
                                <p style="text-align:left">${goods.goods_name}</p>
                            </a>
                            <h6 style="text-align:left"><strong>${goods.goods_price}</strong> 원</h6>
                        </div>
                    </div>
              
               	 </div>
				</c:forEach>
				
                <div class="col-12 text-center">
 	                 <a href="goods_list.do?cp=1&ps=3&filterBy=goods_sale_number&gCode=300" class="btn alazea-btn" style="background-color:#fc5230;color:white;font-size:1.2em;font-weight:700;height:40px">더보기</a>
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
                        <p>문의사항이 있을 경우 글 남겨주시면 이메일로 답변드리겠습니다.</p>
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
                                        <textarea class="form-control" name="message" id="message" cols="30" rows="10" placeholder="문의 내용"></textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn alazea-btn mt-15" style="background-color:#2da498;color:white;font-size:1.2em;font-weight:700;height:40px">문의하기</button>
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
    
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
</body>

</html>