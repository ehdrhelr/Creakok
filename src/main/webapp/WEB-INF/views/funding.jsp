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

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(${Path.COMMON_IMG_PATH}page_funding.png);">
            <h2 style="color:black;text-align:center">
            	FUNDING<br>
            	<span style="font-size:13pt;color:#828282;font-weight:400">크리에이터의 이런 컨텐츠 어때요?</span>
            </h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item" style="font-weight:300; color:#757575;"><i class="fa fa-home"></i> HOME</li>
                            <li class="breadcrumb-item active" aria-current="page"><span style="font-weight:600; color:black;">FUNDING</span></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="most__search__tab">
                        <ul class="nav nav-tabs nav-pills" role="tablist">
                        
                       <li class="nav-item">
                        <c:choose>
                        
                           <c:when test="${funding_categoryName=='전체보기'}">
                            <a class="hcbae-nav nav-link active" data-toggle="tab" href="#"
                            onclick="location.href='funding_list.do?funding_categoryName=전체보기'"  role="tab">
                                                                전체보기
                             </a>
                             </c:when>
                       
                          
                        <c:otherwise>
                        
                        
                        
                       <li class="nav-item">
                            <a class="hcbae-nav nav-link" data-toggle="tab" href="#"
                            onclick="location.href='funding_list.do?funding_categoryName=전체보기'"  role="tab">
                                                                전체보기
                             </a>
                             </li>
                        </c:otherwise>
                        </c:choose> 
                      </li>
                         <c:forEach items="${funding_categoryNames}" var="categoryNames" >
                            <li class="nav-item">
                             <c:choose>
                                  <c:when test="${categoryNames==funding_categoryName}">
                                     <a class="hcbae-nav nav-link active" data-toggle="tab" 
                                     href="#" role="tab" onclick="location.href='funding_list.do?funding_categoryName=${categoryNames}'">
                                         ${categoryNames}
                                         </a>
                                   </c:when>
                              <c:otherwise>
                                     <a class="hcbae-nav nav-link" data-toggle="tab" 
                                       href="#" role="tab" onclick="location.href='funding_list.do?funding_categoryName=${categoryNames}'">
                                        ${categoryNames}
                                     </a>
                                 </c:otherwise>
                                 </c:choose>
                            </li>        
                         </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
       function f(){
    	   
       }
    </script>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Shop Area Start ##### -->
    <section class="shop-page ">
        <div class="container">
            <div class="row">
                <!-- Shop Sorting Data -->
                <div class="col-12">
                    <div class="shop-sorting-data d-flex flex-wrap align-items-center justify-content-between">
                        <!-- Shop Page Count -->
                        <div class="shop-page-count">
                            <p>Showing 1–${fundingVo.pageSize} of ${fundingVo.totalCount} results</p>
                        </div>
                        <!-- Search by Terms -->
                       
                       
                       

                         
                          
                        <div class="search_by_terms">
                           <form action="#" method="post" class="form-inline">
                              <select class="custom-select widget-title" id="fbId" name="filterBy" class="custom-select widget-title" onchange="f(this)">
                                  <c:choose>
                                   <c:when test="${fundingVo.filterBy == 'FUNDING_LIKE_NUMBER'}">
                                    <option value="FUNDING_LIKE_NUMBER" selected>인기순</option>
                                    <option value="FUNDING_WDATE">최신순</option>
                                    <option value="FUNDING_EDATE">마감일순</option>
                                    </c:when>       
                                     <c:when test="${fundingVo.filterBy=='FUNDING_WDATE'}">
                                        <option value="FUNDING_LIKE_NUMBER">인기순</option>
                                        <option value="FUNDING_WDATE" selected>최신순</option>
                                        <option value="FUNDING_EDATE">마감일순</option>
                                    </c:when>       
                                    <c:when test="${fundingVo.filterBy =='FUNDING_EDATE'}">
                                    <option value="FUNDING_LIKE_NUMBER">인기순</option>
                                    <option value="FUNDING_WDATE">최신순</option>
                                    <option value="FUNDING_EDATE" selected>마감일순</option>
                                    </c:when>        
                                  </c:choose>
                                  </select>
                                  
                                  
                                  <select class="custom-select widget-title" id="psId" name="ps" onchange="pageSize(this)">
                                 <c:choose>
                                      <c:when test="${fundingVo.pageSize==3}">
                                          <option value="3" selected>3개씩 보기</option>
                                          <option value="6">6개씩 보기</option>
                                          <option value="9">9개씩 보기</option>                          
                                      </c:when>
                                      <c:when test="${fundingVo.pageSize==6}">
                                         <option value="3">3개씩 보기</option>                                     
                                           <option value="6" selected>6개씩 보기</option>
                                           <option value="9">9개씩 보기</option>
                                      </c:when>                                                            
                                      <c:when test="${fundingVo.pageSize==9}">
                                         <option value="3">3개씩 보기</option>                                     
                                           <option value="6">6개씩 보기</option>
                                           <option value="9" selected>9개씩 보기</option>
                                      </c:when>                                         
                                   </c:choose>
                                 
                                </select>
                              </form>
                              
                          <script language="javascript">
                              function pageSize(select){
                                 //var el = document.getElementById("psId");
                                 var ps = select.value;
                                 //alert("ps : " + ps);
                                 location.href="funding_list.do?funding_ps="+ps;
                              }
                      </script>
                      <script language="javascript">
                              function f(select){
                            	
                                 //var el = document.getElementById("psId");
                                 var filterBy = select.value;
                                 
                                 location.href="funding_list.do?funding_filterBy="+filterBy;
                              }  
                          </script>
                              
                              
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <section class="new-arrivals-products-area ">
        <div class="container">
           

            <div class="row">
                   <c:if test="${!empty fundingVo.list}">
                <!-- Single Product Area -->
              <c:forEach items="${fundingVo.list}" var="fundingVo">
           
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
                                                <!--<span class="fill" data-percentage="60" style="background: rgb(252, 82, 48); width: 126px; transition: width 1s ease-in-out 0s;border-radius:30pt;"></span>-->
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
                            </c:if> 
            </div>
                 <c:if test="${empty fundingVo.list}">
   
         
                <div class="col-12 col-sm-6 col-lg-4">
                      <div class="single-benefits-area">                   
                            현재 진행 중인 펀딩 프로젝트가 없습니다.
                            </div>
                            </div>
                          
                            
                            </c:if> 
                             </div>
            
                <div class="col-12 text-center" style="margin-bottom:100px">
                 <!--   <a href="#" class="btn alazea-btn">더보기</a>-->
                      <nav aria-label="Page navigation"class="text-center">
                      
                            <ul class="pagination" style="margin-top:100px">
                             <c:forEach begin="1" end="${fundingVo.totalPageCount}" var="i">
                             
                               <li class="page-item">
                               <a class="page-link" href="funding_list.do?funding_cp=${i}">
                                <c:choose>
                                  <c:when test="${i==fundingVo.currentPage}">
                                  <strong>${i}</strong>
                                  </c:when>
                    
                                  <c:otherwise>
                                  <span>${i}</span>
                                  </c:otherwise>
                                </c:choose>
                                 </a> 
                                </c:forEach>
                            </ul>
                        </nav>
                </div>
                      
      
    </section>
    <!-- ##### Shop Area End ##### -->

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
    
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
</body>

</html>