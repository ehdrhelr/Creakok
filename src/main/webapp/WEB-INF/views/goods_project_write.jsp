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
                    <h3 style="text-align:center;margin-bottom:40px;font-size:18pt">굿즈 판매하기</h3>
        <div style="width: 60%; margin: auto;" >
            <form method="post" action="/goods_project_write.do">
                             <div >
                                    <input name="write_creator" style="display:block;"class="form-control" id="first_name" 
                                    placeholder="크리에이터" value="" required>
                                </div>
                                
                                 <div >
                                    <input  name="write_goods_price"  style="display:inline-block;width:50%;margin-top:10px;" class="form-control" id="first_name" 
                                     placeholder="가격" required>
                                    <input type="text"  name="write_goods_stock"  style="display:inline-block;width:23.3%;margin-top:10px;margin-left:5px;" class="form-control" id="first_name" 
                                     placeholder="재고량" required>
                                 
                                </div>
                                
                                 <div >
                                    <input name="write_goods_product" style="display:inline-block;width:74.5%"class="form-control" id="first_name" 
                                   placeholder="판매할 제품명" required>
                                    <select name="goods_category_code"style="display:inline-block; width:24%; margin-left:5px;margin-top:10px; padding:5px"
                                    onChange="text.value=goods_category_code[selectedIndex].value">
                                        <option value="">카테고리</option>
                                        <option value="301">뷰티</option>
                                        <option value="302">디자인소품</option>  
                                        <option value="301">홈리빙</option>
                                        <option value="303">테크/가전</option>  
                                        <option value="304">패션/잡화</option>
                                        <option value="305">푸드</option>  
                                        <option value="306">여행/레저</option>
                                        <option value="307">스포츠/모빌리티</option>  
                                        <option value="308">반려동물</option>
                                        <option value="309">문화/예술</option>  
                                        <option value="310">출산/육아</option>  
                                        <option value="311">생활/건강</option>  
                                    </select>           
                                </div>

                <br>
                <textarea id="summernote" name="content"></textarea>
                <label for="write_goods_repre_pic"style="display:inline-block;">대표 이미지 첨부 :  </label>
                <input type="file" name="write_goods_repre_pic" id="write_goods_repre_pic" style="display:inline-block;margin-top:10px; width:85%;padding:2px;"class="form-control" id="first_name" 
                                    onkeydown="goWrite(this.form)" required>    
                <p style="width:100%;text-align:center; margin-top:20px;">
                <input id="subBtn" type="submit" style="padding:3px;background-color:#fc5230;color:white;border:0;border-radius:4px" value="프로젝트 만들기" onclick="goWrite(this.form)"/>
                <input id="subBtn" type="reset"  style="padding:3px;background-color:white;color:#fc5230;border:1px solid #fc5230;border-radius:4px"value="취소하기" onclick="goWrite(this.form)"/>
                </p>                    
            </form>
        </div>
    </div>

     
      <script>
function goWrite(frm) {
    var write_creator = frm.write_creator.value;
    var write_goods_price = frm.write_goods_price.value;
    var write_goods_stock = frm.write_goods_stock.value;
    var write_goods_product = frm.write_goods_product.value;
    var goods_category_code = frm.goods_category_code.value;
    var write_goods_repre_pic = frm.write_goods_repre_pic.value;
   

    if (write_creator.trim() == ''){
        alert("크리에이터명을 입력해주세요");
        return false;
    }
    if(write_goods_price.trim() == ''){
        alert("가격을 입력해주세요");
        return false;
    }
    if(write_goods_stock.trim() == ''){
        alert("재고 수량을 입력해주세요");
        return false;
    }
    if(write_goods_product.trim() == ''){
        alert("제품명을 입력해주세요");
        return false;
    }
    if(goods_category_code.trim() == ''){
        alert("카테고리를 선택해주세요");
        return false;
    }
    if(write_goods_repre_pic.trim() == ''){
        alert("굿즈 대표사진을 입력해주세요");
        return false;
    }
    
    
    frm.submit();
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
              ['style', ['style']],
              ['font', ['bold', 'underline', 'clear']],
              ['color', ['color']],
              ['para', ['ul', 'ol', 'paragraph']],
              ['table', ['table']],
              ['insert', ['link', 'picture', 'video']],
              ['view', ['fullscreen', 'codeview', 'help']]
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