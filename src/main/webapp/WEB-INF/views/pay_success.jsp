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
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    
    <!-- Wadiz Css -->
    <link rel="stylesheet" href="css/wadiz_css1.css">
     <link rel="stylesheet" href="css/wadiz_css2.css">
    <link rel="stylesheet" href="css/wadiz_css3.css">
    <link rel="stylesheet" href="css/wadiz_css4.css">
    
    <!--  table 
    <link rel="stylesheet" href="css/only_goods_review_board_jsp.css"> -->
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
                    <div class="section-heading text-center" style="margin-top:10%;margin-bottom:10%">
                         <h2 style="line-height: 1.3; margin-bottom: 20px;">
                         <img src="img/goods/success-40.png" style="margin-right:5px;margin-bottom:-8px; margin-right:6px">주문이 완료되었습니다!</h2>
                      
                            
                            
 
	                            	<p>
	                                 		주문번호 : ${success_num}</br>
	                                 		주문날짜 : <span id="sysdate">a</span></br>
		                                 	자세한 정보는 주문정보 페이지에서 확인이 가능합니다.
	                                 </p>
	                  
                   </div>
                   <p style="text-align:center">
                   		<a href="../" style="background-color:black; color:white; !important; font-size:13pt; padding:5px 10px;">확인</a>
                   		<a href="member_mypage.do?order_cp=1&member_email=${member_email}" style="background-color:black; color:white; !important; font-size:13pt; padding:5px 10px;">주문내역 확인</a>
                   </p>
                </div>
            </div>

	<script>
		let today = new Date();   
	
		let year = today.getFullYear(); // 년도
		let month = today.getMonth() + 1;  // 월
		let date = today.getDate();  // 날짜
		let hours = today.getHours(); // 시
		let minutes = today.getMinutes();  // 분
		let seconds = today.getSeconds();  // 초
		
		let c_date = year+"-"+month+"-"+date;
		
		document.getElementById("sysdate").innerHTML = c_date;
		
		$.ajax({
			url: "order_time.do",
			data: "order_time=" + c_date,
			type: "POST",
			success : function(data){
				alert("성공")
			},
			error : function(){
				alert("에러")		
			}
		});
	</script>


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