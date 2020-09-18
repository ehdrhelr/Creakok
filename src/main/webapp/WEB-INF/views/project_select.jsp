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
    
    <link rel="stylesheet" href="css/only_goods_review_board_jsp.css">
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

   
        <!-- ##### Team Area Start ##### -->
    <section class="team-area section-padding-100-0">
        <div class="container">
        
            <div class="row" style="margin-bottom:100px">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center" style="margin-top:10%">
                         <h2 style="font-family:Jalnan;line-height: 1.3; margin-bottom: 20px;"><span style="color:#2da498">CREA</span><span style="color:#cccccc">TOR</span> <span style="color:#fc5230">KOK!</span></h2>
                        <p>크리콕은 내가 관심있는 크리에이터를 고르고<br/>
                            펀딩, 커뮤니티 등 다양한 방법으로 <br/>
                            크리에이터와 함께 소통할 수 있는 공간입니다.</p>
                            
                      <a href="/fundingwrite_form.do"><img src="img/project/funding_project.png" alt="project_make" style="margin-top:30px"></a>
                      <a href="/goods_project_write_form.do"><img src="img/project/goods_project.png" alt="project_make" style="margin-top:30px"></a>
                    </div>
                </div>
            </div>
            
            
 <!--
            <div class="row">
                <img src="img/plus/funding.png" alt="">
                <img src="img/plus/funding.png" alt="">
                
                Single Team Member Area 
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb
                        <div class="team-member-thumb">
                             <img src="img/plus/funding.png" alt="">
                        </div>
                        <!-- Team Member Info
                        <div class="team-member-info mt-30">
                            <h5 style="font-size:13pt;font-weight:500;">컨텐츠 펀딩</h5>
                            <p>크리에이터의 '이런 컨텐츠 어때요?'</p>
                        </div> 
                    </div>
                </div>

                Single Team Member Area
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-team-member text-center mb-100">
                        <!-- Team Member Thumb
                        <div class="team-member-thumb">
                             <img src="img/plus/goods.png" alt="">
                        </div>
                        <!-- Team Member Info
                      
                        <div class="team-member-info mt-30">
                            <h5 style="font-size:13pt;font-weight:500;">굿즈 판매</h5>
                            <p>크리에이터의 특별한 굿즈를 만나보세요</p>
                        </div>
                    </div>
                </div>  -->



            </div>
        </div>
    </section>
    <!-- ##### Team Area End ##### -->

        
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