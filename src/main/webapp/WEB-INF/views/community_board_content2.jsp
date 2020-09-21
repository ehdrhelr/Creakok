<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.LikeType"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    
    <!-- Title -->
    <title>COMMUNITY - CREAKOK</title>

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

   <link rel='stylesheet' id='global-css'  href='css/css_board/global.css' type='text/css' media='all' />
  
	<link href="css/css_board/reservation_page.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css"
	href="timepicker/jquery.datetimepicker.css"/ >
	<link rel="shortcut icon" href="bit_logo.png" />
	
	 <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
   	<script src="js/js_board/jquery.form.min.js"></script>
  	<script src="js/js_board/jquery.validate.min.js"></script>
  	<script src="js/js_board/vue.min.js"></script>
   	<script src="js/js_board/jquery.cookie.js"></script>

	<script src="js/js_board/moment.min.js"></script>
   	<script src="js/js_board/moment-timezone-with-data.min.js"></script>

   	<script src="js/js_board/vueComponent/vue-filter.js"></script>
   	
   	<script src="js/js_board/app/App.js"></script>
   
   	<script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="timepicker/jquery.js"></script>
	<script src="timepicker/jquery.datetimepicker.full.min.js"></script>
	<script src="js/js_board/login.js"></script>

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
		function no_right() {
			Toast.fire({
				icon: 'error',
				title: '수정 권한이 없어요.'
			})
		}
			
		function deleteComment(comment_index) {
			Swal.fire({
				title: '정말 삭제하시겠어요?',
				text: "삭제하면 되돌릴 수 없어요",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#2da498',
				cancelButtonColor: '#fc5230',
				confirmButtonText: '지워주세요!',
				cancelButtonText: '아니요'			
			}).then((result) => {
				if (result.value) {
					location.href = "comment_delete?board_index=${board.board_index}&comment_index="+comment_index;
				}
			})			
		}
		
		function deleteBoard() {
			Swal.fire({
				title: '정말 삭제하시겠어요?',
				text: "삭제하면 되돌릴 수 없어요",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#2da498',
				cancelButtonColor: '#fc5230',
				confirmButtonText: '지워주세요!',
				cancelButtonText: '아니요'			
			}).then((result) => {
				if (result.value) {
					location.href = "board_delete?board_index=${board.board_index}&creator_name=${board.creator_name}";
				}
			})			
		}
		
		function check() {
			for(var i=0; i<document.form.elements.length; i++) {
				if(document.form.elements[i].value == "") {
				     alert("모든 값을 입력 하셔야 합니다. ");
					 return false;
				}
		    }
			document.form.submit();
	    }
		
		function updateComment(comment_index) {(async () => {
			const { value: text } = await Swal.fire({
			  input: 'textarea',
			  inputPlaceholder: '이곳에 새로운 댓글을 작성해주세요...',
			  inputAttributes: {
			    'aria-label': 'Type your message here'
			  },
			  showCancelButton: true,
			  confirmButtonColor: '#2da498',
			  cancelButtonColor: '#fc5230',
			  confirmButtonText: '이렇게 수정할래요',
			  cancelButtonText: '수정 안할래요'
				})
			if (text) {	 
				  var board_indexId = document.getElementById("board_index").value;
				  location.href="comment_update?board_index="+board_indexId+"&comment_index="+comment_index+"&comment_content="+text;						  
				}
			})()
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
    
    <!-- ##### Hero Area Start ##### -->
    <section class="team-area section-padding-100-0" style="margin-top:100px;">
        
         <div class="container">
            <div class="row" style="width:80%;margin:0 auto">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
						<h2 class="text-center" style="margin-bottom:30px">게시글</h2>
						<div style="text-align:center">
                           	<label class="control-label">작성 날짜</label>
				   			<span style="margin-right:30px"><fmt:formatDate value="${board.board_wdate}" pattern="yyyy-MM-dd" /></span>
					   	 	<label for="view">조회</label>
					   	 	<span style="margin-right:30px">${board.board_view}</span>
					    	<label for="like">좋아요</label>
					    	<span id="board_like">${board.board_like}</span>
					    	&nbsp;&nbsp;&nbsp;
					    	<a href="#" class="wishlist-btn" onclick="testhcbae('${board.board_index}')">
                       		<i class="board_list_like icon_heart_alt"></i>
                       		</a>
                       	</div>
	                    
                        <table class="table" style="margin:0 auto;width:100%;margin:0 auto;margin-bottom:10px;">
						   <tbody><tr><td>작성자</td><td>
                                <input type="text" class="form-control" name="member_name" value="${board.member_name}" readonly=""></td></tr>
                                  <tr><td>Email</td><td>
                                    <input type="text" class="form-control" name="member_email" value="${board.member_email}" readonly=""></td></tr>
                                    <tr>
                                    <td>제목</td><td>
                                        <input type="text" class="form-control" name="board_subject" value="${board.board_subject}" readonly></td></tr>
                                        <tr>
                                        	<td>글내용</td>
                                       			<td>
                                        			<span id="textarea" style="overflow:auto; width:100%; height:500px; text-align:left" name="board_content" class="form-control" readonly>${board.board_content}</span>
                                       			</td>
                                        </tr>
                              </tbody>
                         </table>
                         
						<p style="text-align:center">
                        <c:if test="${!empty member}">
                        	<c:if test="${member.member_email == board.member_email}">
                        		
	                        		<input type="reset" value="수정" class="" style="background-color:black !important; color:white;width:85px;height:38px;border-radius:.25rem;" onclick="location.href='board_update?board_index=${board.board_index}';">
	                       	 		<input type="reset" value="삭제" class="" style="background-color:black !important; color:white;width:85px;height:38px;border-radius:.25rem;" onclick="deleteBoard()">
                        	
                        	</c:if>
						
								<input type="reset" value="답글 쓰기" class="" style="background-color:black !important; color:white;width:85px;height:38px;border-radius:.25rem;" onclick="location.href='board_answer?board_index=${board.board_index}';">
	                        </c:if>
	                       
	                       	 <button type="button" class="" style="background-color:black !important; color:white;width:133px;height:38px;border-radius:.25rem;display:inline-block" onclick="location.href='board_page?creator_name=${board.creator_name}#fix_point'">전체 게시글보기</button>
						</p>
					
						<!----------------------- 댓글 조회 부분 --------------------->
                        <table class="table" style="margin:0 auto;margin-bottom:10px;">        	
							<c:forEach items="${commentList}" var="repList">
							<div style="margin-top:40px;margin-bottom:40px">
								<p style="text-align:left; margin-bottom:10px"><img src="img/member_profile_pics/${repList.member_profile_pic}" style="margin-right:5px;width:50px;display:inline-block">${repList.member_name}
								(<fmt:formatDate value="${repList.comment_wdate}" pattern="yyyy-MM-dd" />)</p> 
								<input type="text" class="form-control" name="comment_content" value="${repList.comment_content}" style="height:40px;width:100%" readonly>
								
								<c:if test="${!empty member}">
									<c:if test="${member.member_email == repList.member_email}">
										<input type="hidden" id="board_index" value="${repList.board_index}">
										
										<p style="text-align:left;margin-top:10px">
											<input type="reset" value="수정" class="commentUpdateBtn" style="background-color:black !important; 
											color:white;width:70px;font-size:1em;height:30px;border-radius:.25rem;"
											onclick="updateComment('${repList.comment_index}')">
		                         			<input type="reset" value="삭제" class="commentDelBtn" style="background-color:black !important; 
		                         			color:white;width:80px;font-size:1em;height:30px;border-radius:.25rem;" 
		                         			onclick="deleteComment('${repList.comment_index}')">
		                         		</p>
									</c:if>
								</c:if>
							</div>
                       		</c:forEach> 
                       		
                       	</table>      


<!----------------------------------- 댓글 작성 부분 ---------------------------------------->
	                     		<div style="margin-top:40px;margin-bottom:40px">
		                     		<c:if test="${empty member}">                     		
			                       		<p style="text-align:left;">댓글 작성하기</p>
			                       		<p style="text-align:left;margin-top:10px">
			                       		<input type="text" class="form-control" id="comment_content" name="comment_content" value="로그인 후 이용해주세요." style="height:40px" readonly>                      		 
                          		 		</p>
                          		 	</c:if>
                          		 	
                          			<c:if test="${!empty member}">
                          			   	<section class="replyForm">
											<form role="form" method="post" autocomplete="off" class="form-horizontal">
												<input type="hidden" id="board_index" name="board_index" value="${board.board_index}" readonly="readonly" />
												<input type="hidden" id="member_email" name="member_email" value="${member.member_email}" readonly="readonly" />
												<input type="hidden" class="form-control" name="member_name" value="${member.member_name}" readonly="readonly"/>
												<input type="hidden" class="form-control" name="member_profile_pic" value="${member.member_profile_pic}" readonly="readonly"/>
					                       		
					                       		<div class="form-group" style="margin-top:40px;margin-bottom:40px">
					                       			
					                       				<p style="text-align:left;">댓글 작성하기</p>
					                       				<p style="text-align:left;margin-top:10px">
					                       					<input id="comment_content" type="text" class="form-control" name="comment_content" value="" style="height:40px;">                     		 
		                          						</p>
		                          					
		                          						<p style="text-align:left;margin-top:10px">
											  			<button type="button" class="repSubmit btn-success" style="background-color:black !important; color:white;width:50px;font-size:1em;height:30px;border-radius:.25rem;" onclick="check()">작성</button>
											 			</p>
											 			<script>
														  var formObj = $(".replyForm form[role='form']");
														   
														  $(".repSubmit").click(function(){
														   var comment_content = $("#comment_content").val();
														   if (comment_content == '') {
															   Toast.fire({
																	icon: 'info',
																	title: '내용을 입력해주세요.'
																})
																return false;
														   }   
														   formObj.attr("action", "comment_write");													   
														   formObj.submit();
														  });
														 </script>
										  		</div>
								  	  		</form>
								  	  	</section>
						  				</c:if>
						  			</div>
						  			

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

                       		
		
                            
                            
                            

    
    
    <!-- 맨 아래 여백 -->
	<div class="Membership__MembershipWrapper-o1o1he-0 irjBzn">
	</div>		  			
   <!-- 맨 아래 여백 end -->
    
    


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
    function testhcbae(index){
        if('${member.member_email}' == '') {
            check_login();
            return;
        }
        
        let formData = new FormData();
        formData.append('like_content_index',index);
        formData.append('like_type_code','${LikeType.COMMUNITY_LIKE}');
        formData.append('like_member_email','${member.member_email}');
        
        let xmlHttpLike = new XMLHttpRequest();
        xmlHttpLike.onreadystatechange = function() {
        	if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
            	makeBoardLikeList();
		       
            }
       };
       xmlHttpLike.open("POST", "clickLike.do", true); // true for asynchronous
       xmlHttpLike.send(formData); 

    }
    
    function makeBoardLikeList(){
    	
        if('${member.member_email}' == '') {
            return;
        }
        let likeList = document.querySelectorAll('.board_list_like'); // list 여러개다.
        let tmep_count=0;
        let formData = new FormData();
        let xmlHttpLike = new XMLHttpRequest();

        
        formData = new FormData();
        formData.append('like_content_index','${board.board_index}');
        formData.append('like_type_code','${LikeType.COMMUNITY_LIKE}');
        formData.append('like_member_email','${member.member_email}');
        
        xmlHttpLike = new XMLHttpRequest();
        xmlHttpLike.onreadystatechange = function() {
            if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                if(xmlHttpLike.responseText == '${LikeType.LIKE_NOT_EXIST}'){ //responseText는 ajax의 결과물
                    likeList[tmep_count].classList.remove('icon_heart');
                    likeList[tmep_count].classList.add('icon_heart_alt');
                } else if(xmlHttpLike.responseText == '${LikeType.LIKE_EXIST}') {
                    likeList[tmep_count].classList.remove('icon_heart_alt');
                    likeList[tmep_count].classList.add('icon_heart');
                }  
                readBoardLike();
            }
       };
       xmlHttpLike.open("POST", "readLike.do", false); // true for asynchronous
       xmlHttpLike.send(formData);
       tmep_count++;
       
    }
    makeBoardLikeList();
	</script>
		
		<script>
			function updateBoardLike() {
            	var like = document.getElementById('board_like');

      			like.innerHTML = ${board.board_like+1};
            }
			
			function readBoardLike() {
			    if('${member.member_email}' == '') {
			    	check_login();
			        return;
			    }
			        
			    let formData = new FormData();
			    formData.append('like_content_index','${board.board_index}');
			    formData.append('like_type_code','${LikeType.COMMUNITY_LIKE}');			  
			        
			    let xmlHttpLike = new XMLHttpRequest();
			    xmlHttpLike.onreadystatechange = function() {
			   	 	if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
						console.log(xmlHttpLike.responseText);   
						document.getElementById("board_like").innerHTML = xmlHttpLike.responseText;
			       		 }
			    };
			    xmlHttpLike.open("POST", "getNewBoardLike", true); // true for asynchronous
			    xmlHttpLike.send(formData);
			}
			
        </script>   
   
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
</body>
</html>
