<%@ page contentType="text/html; charset=utf-8"%>
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
    
    <script language='javascript'>
			   function check()
			   {
				   for(var i=0; i<document.input.elements.length; i++)
				   {
					  if(document.input.elements[i].value == '')
					  {
						 alert('모든 값을 입력 하셔야 합니다. ');
						 return false;
					  }
				   }
				   document.input.submit();
			   }
			</script>
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
                    <h2 class="text-center" style="margin-top: 150px; margin-bottom:30px">리뷰 작성하기</h2>
                    <div class="text-center" style="margin-bottom:70px">
                        <table class="table" style="width:70%;margin:0 auto;width:70%;margin:0 auto;margin-bottom:10px;">
                              <tbody><tr><td>작성자</td><td>
                                <input type="text"  ="" class="form-control" name="member_name" value="" readonly=""></td></tr>
                                  <tr><td>작성자</td><td>
                                    <input type="text"  ="" class="form-control" name="member_email" value="" readonly=""></td></tr>
                                    <tr>
                                    <td>제목</td><td>
                                        <input type="text"  ="" class="form-control" name="board_subject"></td></tr><!--   <tr>
                                     <td>비밀번호</td>
                                     <td><input type="password"  class="form-control" name="password"></td>
                                     </tr>
                                --><tr><td>글내용</td><td><textarea rows="10" cols="50" name="board_content" class="form-control"></textarea></td></tr>
                              </tbody>
                         </table>
                         <input type="submit" value="글쓰기" class="btn" style="background-color:black !important; color:white">
                         <input type="reset" value="다시작성" class="btn" style="background-color:black !important; color:white">
                         <button type="button"  class="btn" style="background-color:black !important; color:white" onclick="location.href='board_page#fix_point'">전체 게시글보기</button>
                       </form>
                  </div>
                  </div>
                </div>
  
				</div>  
			</div>


	<!-- wrap -->
   <!-- 게시판 영역 end -->

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                    <h2 class="text-center" style="margin-top: 150px; margin-bottom:30px">리뷰 작성하기</h2>
                    <div class="text-center" style="margin-bottom:70px">
                        <table class="table" style="width:70%;margin:0 auto;width:70%;margin:0 auto;margin-bottom:10px;">
                              <tbody><tr><td>작성자</td><td>
                                <input type="text"  ="" class="form-control" name="member_name" value="" readonly=""></td></tr>
                                  <tr><td>작성자</td><td>
                                    <input type="text"  ="" class="form-control" name="member_email" value="" readonly=""></td></tr>
                                    <tr>
                                    <td>제목</td><td>
                                        <input type="text"  ="" class="form-control" name="board_subject"></td></tr><!--   <tr>
                                     <td>비밀번호</td>
                                     <td><input type="password"  class="form-control" name="password"></td>
                                     </tr>
                                --><tr><td>글내용</td><td><textarea rows="10" cols="50" name="board_content" class="form-control"></textarea></td></tr>
                              </tbody>
                         </table>
                         <input type="submit" value="글쓰기" class="btn" style="background-color:black !important; color:white">
                         <input type="reset" value="다시작성" class="btn" style="background-color:black !important; color:white">
                         <button type="button"  class="btn" style="background-color:black !important; color:white" onclick="location.href='board_page#fix_point'">전체 게시글보기</button>
                       </form>
                  </div>
                  </div>
                </div>
  
				</div>  
			</div>


	<!-- wrap -->
   <!-- 게시판 영역 end -->

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                    <h2 class="text-center" style="margin-top: 150px; margin-bottom:30px">리뷰 작성하기</h2>
                    <div class="text-center" style="margin-bottom:70px">
                        <table class="table" style="width:70%;margin:0 auto;width:70%;margin:0 auto;margin-bottom:10px;">
                              <tbody><tr><td>작성자</td><td>
                                <input type="text"  ="" class="form-control" name="member_name" value="" readonly=""></td></tr>
                                  <tr><td>작성자</td><td>
                                    <input type="text"  ="" class="form-control" name="member_email" value="" readonly=""></td></tr>
                                    <tr>
                                    <td>제목</td><td>
                                        <input type="text"  ="" class="form-control" name="board_subject"></td></tr><!--   <tr>
                                     <td>비밀번호</td>
                                     <td><input type="password"  class="form-control" name="password"></td>
                                     </tr>
                                --><tr><td>글내용</td><td><textarea rows="10" cols="50" name="board_content" class="form-control"></textarea></td></tr>
                              </tbody>
                         </table>
                         <input type="submit" value="글쓰기" class="btn" style="background-color:black !important; color:white">
                         <input type="reset" value="다시작성" class="btn" style="background-color:black !important; color:white">
                         <button type="button"  class="btn" style="background-color:black !important; color:white" onclick="location.href='board_page#fix_point'">전체 게시글보기</button>
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
    
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
</body>

</html>