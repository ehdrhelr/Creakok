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

    
    <!--텀블벅추가-->
    <br/>
    <br/><br/><br/><br/><br/><br/><br/>
    
        
    
    <div class="Membership__MembershipWrapper-o1o1he-0 irjBzn">
 					<h3 style="text-align:center;margin-bottom:40px;font-size:18pt"> 리뷰 작성하기</h3>
   
          
          
          
	    <div class="submit_a_review_area mt-50" style="width: 60%; margin: auto;" >
	    	<form method="post" action="goods_review_insert.do#fix_point" onsubmit="return goWrite()">
                                   <div class="row">
                                            <div class="col-12">
                                                <div class="form-group d-flex align-items-center">
                                                    <span class="mr-15">별점 :</span>
                                                    <div class="stars">
                                                        <input type="radio" name="star" class="star-1" id="star-1" onclick="starcheck()" value="1">
                                                        <label class="star-1" for="star-1">1</label>
                                                        <input type="radio" name="star" class="star-2" id="star-2" onclick="starcheck()" value="2">
                                                        <label class="star-2" for="star-2">2</label>
                                                        <input type="radio" name="star" class="star-3" id="star-3" onclick="starcheck()" value="3">
                                                        <label class="star-3" for="star-3">3</label>
                                                        <input type="radio" name="star" class="star-4" id="star-4" onclick="starcheck()" value="4">
                                                        <label class="star-4" for="star-4">4</label>
                                                        <input type="radio" name="star" class="star-5" id="star-5" onclick="starcheck()" value="5">
                                                        <label class="star-5" for="star-5">5</label>
                                                        <input type="hidden" value="1" id="star_result" name="review_rating">
                                                        <span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                        </div>  
		    				      <div>
                                     <label for="reviewer_name">작성자</label>&nbsp;&nbsp;
                                    <input name="review_writer" style="display:inline-block;width:30%;margin-right:5%" class="form-control" id="reviewer_name" 
                                    placeholder="작성자" value="${member.member_name}" readonly>
                                    <label for="goods_name">제품명</label>&nbsp;&nbsp;
                                    <input name="goods_name" style="display:inline-block;width:30%" class="form-control" id="goods_name" 
                                    placeholder="제품명" value="${one_goods.goods_name}" readonly>
                                </div>
                                
                                 <div style="margin-top:10px">
                                    <label for="review_subject" style="margin-right:2%">제목</label>
                                    <input name="review_subject" style="display:inline-block;width:90%" class="form-control" id="review_subject" 
                                   placeholder="제목" required>
                                   <input type="hidden" name="goods_index" value="${goods_index}"/>
                                </div>
                                
				<br>
				<textarea id="summernote" name="review_content"></textarea>
				
				<p style="width:100%;text-align:center; margin-top:20px;">
    				<input id="subBtn" type="submit" style="padding:3px;background-color:#fc5230;color:white;border:0;border-radius:4px;width:100px" value="작성하기"/>
    				<a href="goods_review.do?review_cp=1&goods_index=${goods_index}#fix_point"><input id="subBtn2" type="button"  style="padding:3px;background-color:white;color:#fc5230;border:1px solid #fc5230;border-radius:4px;width:100px" value="목록으로"/></a>
				
                </p>			 		
			</form>
		</div>
    </div>
    
                 
    

      <script>
      function starcheck(){
    	  var star = $("input[name='star']:checked").val();
    	  var star_result = $("#star_result").val(star);
    	  //var num = Number(result);
    	  //console.log(typeof(num));
          //alert(star);
      }
      function goWrite() {
    	var star = $("input[name='star']:checked").val();
    	var summernote = $("#summernote").val();
    	if (star == null){
    		alert("별점을 체크해주세요");
    		return false;
    	}
    	if(summernote == ''){
    		alert("내용을 입력해주세요");
    		return false;
    	}
    	
    	if(summernote != null && star != null){
    			frm.submit();
    		    location.href="goods_review.do?review_cp=1&goods_index="+${goods_index}+"&category_name="+${category_name};
    		    return true;
	}
	
}
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
    
    <script src="/js/summernote/summernote-lite.js"></script>
<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
    <script>
   // $(document).ready(function(){
      $('#summernote').summernote({
        placeholder: '펀딩받고 싶은 컨텐츠의 기획내용을 입력해주세요.',
        tabsize: 2,
        minHeight: 370,
        maxHeight: null,
        callbacks: {    //여기 부분이 이미지를 첨부하는 부분
            onImageUpload : function(files) {
                uploadSummernoteImageFile(files[0],this);
            }
        },
        focus: true,
        toolbar: [
              ['font', ['bold', 'underline', 'clear']],
              ['color', ['color']],
              ['insert', ['link', 'picture']]
            ]
      });
      
      function uploadSummernoteImageFile(file, editor){
          data = new FormData();
          data.append("file_detail_pic", file);
          $.ajax({
                data : data,
                type : "POST",
                url : "/uploadSummernoteImageFile_goods",
                contentType : false,
                processData : false,
                success : function(url){
                    $(editor).summernote('insertImage', url);
                }
          });
      }
 //   });
    </script>
    
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
</body>

</html>