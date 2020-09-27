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

</head>

<body>
   <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-circle"></div>
        <div class="preloader-img">
            <img src="img/core-img/creakok.png" alt="">
        </div>
    </div>

    
    
        <div class="Membership__MembershipWrapper-o1o1he-0 irjBzn">
                    <h3 style="text-align:center;margin-bottom:40px;font-size:18pt">환불 신청</h3>
        <div class="text-center">
            <form method="post" action="funding_pay_delete.do" id="frm" target="_self" onsubmit="return false">
                                 <div>
                                    <label for="product_name" style="margin-right:5px">상품명 : </label>&nbsp;
                                    <input name="product_name" style="display:inline-block;width:60%;margin-bottom:10px"class="form-control" 
                                    placeholder="" value="${funding_payinfo.funding_subject}" readonly>
                                </div>
                                    <input type="hidden" name="order_index" value="${funding_payinfo.funding_payinfo_index}">
                                                               
                                <div>
                                    <label for="order_number" style="margin-right:5px">주문번호 : </label>
                                    <input name="order_number" style="display:inline-block;width:60%"class="form-control" 
                                    placeholder="" value="${funding_payinfo.success_id}" readonly>
                                </div>
                                
                                 <div >
                                    <label for="paycancel_money" style="margin-right:5px">환불금액 : </label>
                                    <input type="number" min="10" name="paycancel_money"  style="display:inline-block;width:60%;margin-top:10px;" class="form-control"
                                     placeholder="" value="${funding_payinfo.funding_payinfo_amountpay}"readonly>
                                 </div>
                                 <div>
                                  
                                    <label>환불 사유 : </label>
                                    <select name="paycancel_reason" style="display:inline-block; width:60%; margin-left:5px;margin-top:10px; padding:5px"
                                        onChange="paycancel_reason.value=paycancel_reason[selectedIndex].value">
                                        <option value="none">환불 이유 선택</option>
                                        <option value="11">실수로 구매함</option>
                                        <option value="22">단순 변심</option>
                                        <option value="33">사이즈가 맞지 않음</option>  
                                        <option value="44">제품 불량</option>
                                        <option value="55">배송료 불만</option>  
                                        <option value="66">기타</option>
                                    </select> 
                                   </div>  
                                   
 
                <p style="width:100%;text-align:center; margin-top:20px;">
                <input id="subBtn" type="submit" style="padding:3px;background-color:black;color:white;border:0;" value="환불 신청" onclick="goWrite()"/>
                <input id="subBtn" type="button" onclick="closePopup()"  style="padding:3px;background-color:white;color:black;border:1px solid black;"value="취소하기"/>
                </p>                    
            </form>
        </div>
    </div>

       <!-- 아임포트 서버에 결제 요청  -->
      <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script><!-- jQuery CDN --->

          
      <script>
        function goWrite() {
        	var select_reason = $("select[name=paycancel_reason]").val();
        	
            if(select_reason == 'none'){
                alert("환불 이유를 선택해주세요");
                return false;
            } else {
            	document.getElementById('frm').submit();
            	opener.document.location.href="/";
            	//self.close();
            	
            	return true;
            }
        }
        
        function closePopup(){
        	self.close();
        }
      </script>
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
    
</body>

</html>