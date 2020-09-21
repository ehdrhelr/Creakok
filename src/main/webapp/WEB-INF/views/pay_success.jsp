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

    <link rel="stylesheet" href="/css/summernote/summernote-lite.css">

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
    <section class="team-area section-padding-100-0" style="margin-bottom:10%">
        <div class="container">
        
            <div class="row" style="margin-bottom:100px">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center" style="margin-top:10%;margin-bottom:10%">
                         <h2 style="line-height: 1.3; margin-bottom: 20px;">
                         <img src="img/goods/success-40.png" style="margin-right:5px;margin-top:-5px; margin-right:6px">주문이 완료되었습니다!</h2>
                      
                            
                            
 
	                            	<p>
	                                 		주문번호 : ${success_num}</br>
	                                 		주문날짜 : <span id="sysdate">a</span></br>
		                                 	자세한 정보는 주문정보 페이지에서 확인이 가능합니다.
	                                 </p>
	                  
                   </div>
                   <p style="text-align:center">
                   		<a href="../" style="background-color:black; color:white; !important; font-size:13pt; padding:5px 10px;">확인</a>
                   		<a href="member_order.do?order_cp=1&member_email=${member_email}" style="background-color:black; color:white; !important; font-size:13pt; padding:5px 10px;">주문내역 확인</a>
                   </p>
                </div>
            </div>
            </div>
        </div>
    </section>
    <!-- ##### Team Area End ##### -->
    <script language='javascript'>

function noEvent() {
    if (event.keyCode == 116) {
        event.keyCode= 2;
        return false;
    }
    else if(event.ctrlKey && (event.keyCode==78 || event.keyCode == 82))
    {
        return false;
    }
}
document.onkeydown = noEvent;

</script>

<body oncontextmenu="return false">


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
    <script src="js/hcbae_js.js"></script>

    
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
</body>

</html>