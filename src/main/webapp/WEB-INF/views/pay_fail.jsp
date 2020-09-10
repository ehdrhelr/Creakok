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
    
    <!-- Wadiz Css -->
    <link rel="stylesheet" href="css/wadiz_css1.css">
     <link rel="stylesheet" href="css/wadiz_css2.css">
    <link rel="stylesheet" href="css/wadiz_css3.css">
    <link rel="stylesheet" href="css/wadiz_css4.css">
    
    <!--  table  -->
    <link rel="stylesheet" href="css/only_goods_review_board_jsp.css">
<style>
    @font-face {
  font-family: 'Jalnan';
  src: url('fonts/Jalnan.ttf');
}  
    .wideImg{
        max-width: 135%;!important;
    }
 </style>    
 

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
                         <h2 style="line-height: 1.3; margin-bottom: 20px;">
                         <img src="img/goods/warning-30.png" style="margin-right:5px;margin-bottom:-4px;">결제에 실패하였습니다.</h2>
                      
                            
                            
             <div  style="font-size:12pt;margin-bottom:7%">
                	<table>
	                    <colgroup>
	                        <col width="30%">
	                        <col width="70%">
	                    </colgroup>
	                    <thead>
	                        <tr>
	                            <th style="padding:3px !important;">
	                            	<p style="color:black;text-align:left;font-size:1em;font-wieght:700">
	                            		실패 사유
	                            	</p><br/>
	                            </th>
	                            <th style="text-align:left"> 
	                            		<p style="color:black;font-size:14pt;font-weight:500;margin-bottom:10px">
	                            			${fail_msg}
	                            		</p>
	                            		<p style="text-align:left">
	                                 	결제승인이 실패되었습니다. 실패사유를 확인하신 후 재시도를 하시거나,<br/>
	                                  	   계속 실패되시는 경우 고객센터로 문의주시기 바랍니다.
	                                 </p>
	                            
	                            </th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                            <tr>
	                                <th style="padding:3px !important;">
	                                	<p style="color:black;text-align:left;font-size:1em;font-wieght:700">
	                                		문의 안내
	                                	</p>
	                               </th>
	                                <th style="padding:3px !important;">
	                                	<p style="text-align:left">
	                                		고객센터 : 02.707.1480
	                                	</p>
	                                </th>
	                             </tr>
	                    </tbody>
	                </table>
                   </div>
                   <p><a href="../" style="background-color:black; color:white; !important; font-size:13pt; padding:5px 10px;">확인</a></p>
                </div>
            </div>




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