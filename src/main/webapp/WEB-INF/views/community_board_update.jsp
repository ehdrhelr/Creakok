<%@page import="java.sql.Connection"%>
<!-- <%@page import="org.apache.catalina.connector.OutputBuffer"%> -->
<%@page import="creakok.com.domain.Board"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="Header.jsp"/>


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

	<!-- 게시판 영역 start -->
			<nav class="page-nav">
	<div class="inner">
		<ul>
			<li class="current"><a href="#">Review</a></li>
		</ul>
	</div>
	</nav>
		<div class="r_list">
				<div class="choose">
				
				<div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                    <h2 class="text-center" style="margin-top: 150px; margin-bottom:30px">글 수정</h2>
                    <form name="input" action="board_update?board_index=${board.board_index}" method="post"/>
                    <input type="hidden" name="board_index" value="${board.board_index}">
                    <div class="text-center" style="margin-bottom:70px">
                        <table class="table" style="width:70%;margin:0 auto;width:70%;margin:0 auto;margin-bottom:10px;">
                              <tbody><tr><td>작성자</td><td>
                                <input type="text" class="form-control" name="member_name" value="${board.member_name}" readonly=""></td></tr>
                                  <tr><td>Email</td><td>
                                    <input type="text" class="form-control" name="member_email" value="${board.member_email}" readonly=""></td></tr>
                                    <tr>
                                    <td>제목</td><td>
                                        <input type="text" class="form-control" name="board_subject" value="${board.board_subject}"></td></tr>
                                        <tr><td>글내용</td><td><textarea rows="10" cols="50" name="board_content" class="form-control">${board.board_content}</textarea></td></tr>
                              </tbody>
                         </table>
                         <input type="submit" value="수정하기" class="btn" style="background-color:black !important; color:white">
                         <button type="button" class="btn" style="background-color:black !important; color:white" onclick="location.href='board_content?board_index=${board.board_index}'">돌아가기</button>
                       </form>
                  </div>
                  </div>
                </div>
                
				</div>  
			</div>

	<!-- wrap -->
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
    
    <script>
	//CKEDITOR 적용 
	CKEDITOR.replace('content', {
	         
	    width:'100%',
	    height:'350'
	         
	});
 
	</script>
</body>

</html>