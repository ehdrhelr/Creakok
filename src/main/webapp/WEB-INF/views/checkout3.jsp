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

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
    <div id="header_div">
    <jsp:include page="creakok_header.jsp" flush="true"/>
    </div>
    </header>
    <!-- ##### Header Area End ##### -->
    
    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
        <!-- Top Breadcrumb Area -->
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(img/bg-img/24.jpg);">
            <h2>CHECKOUT</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                             <li class="breadcrumb-item" style="font-weight:300; color:#757575;"><i class="fa fa-home"></i>HOME</li>
                            <li class="breadcrumb-item" aria-current="page"><span style="font-weight:600; color:black;">CHECKOUT</span></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->




    <!-- ##### Checkout Area Start ##### -->
    <div class="checkout_area mb-100">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-12">
                    <div class="checkout_details_area clearfix">
                        <h5 style="margin-bottom:5px;">주문자 정보</h5>
                        <form action="funding_pay.do?funding_index=${funding_detail.funding_index}" method="post" name="f">
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <label for="first_name">이름 *</label>
                                    <input  name="Payinfo_name" class="form-control" id="first_name" onkeydown="enterCheck(this)" value="" required>
                                </div>
                                <div class="col-6 mb-4">
                                    <label for="email_address">이메일 주소</label>
                                    <input name="Payinfo_email" class="form-control" id="email_address" onkeydown="enterCheck(this)" value="" required>
                                </div>
                                <div class="col-6 mb-4">
                                    <label for="phonenumber">연락처 *</label>
                                    <input name ="Payinfo_phonenumber"class="form-control" value="" onkeydown="enterCheck(this)" required>
                                </div>                       
                              </div>
                         <h5 style="margin-top:20px;">결제 내용</h5>
						
						<label for="amountPay">밀어주기 금액</label>
						
						<select id="amountPay" name="amountPay" onChange="amountPay2()">
						        <option class="form-control" value="">--선택--</option>
						        <option class="form-control" value="5000">5,000</option>
						        <option class="form-control" value="10000">10,000</option>
						        <option class="form-control" value="50000">50,000</option>
						</select> 
						
						<script language="javascript">
						function amountPay2(){
						
							var a = document.getElementById("amountPay");
							var b = a.options[a.selectedIndex].value;
							//alert(b);
							
							var resultToshow = document.getElementById('amountToshow');
							resultToshow.innerHTML=b;
							var result = document.getElementById('amountPaygot');
							
							result.value=b;
							alert(b);
							alert(c);
							                          
						
						}
						
						
						</script>
                <div class="col-12 mb-4">
                    <div class="checkout-content">
                    
                      <!--  <h5 class="title--" style="margin-top:20px;">주문 내역</h5>  --> 
                        <div class="products">
                            <div class="products-data">
                                <h5>Funding</h5>
                                <div class="single-products d-flex justify-content-between align-items-center">
                                    <p>${fundingCheckoutInfo.funding_subject}</p>
                                      <input type="hidden" name = "fundingName" id="fundingName" value="${fundingCheckoutInfo.funding_subject}">
                                    <h5 id="amountToshow"></h5>
                                    <input type="hidden" name = "amountPaygot" id="amountPaygot" value="0">
                                
                                </div>
                            </div>
                        </div>
                        <div class="subtotal d-flex justify-content-between align-items-center">
                            <h5>담당 크리에이터</h5>
                            <h5>${fundingCheckoutInfo.creator_name}</h5>
                        </div>
                    
			         </div>
                    </div>
                    
                    
                    
                    
                     <h5 class="col-12 mb-4" style="margin-top:20px;">결제방법</h5>
                     <div class="col-12 mb-4">
                     <table>
                                <tbody>
                                    <tr>
                                        <td>
                                            <ul class="pay-method" >    
                                             <li style="margin-bottom:10px;">
	               								 <input type="radio" class="chk-rdo" id="payByAcc" name="radio_paymethod"  style="height:18px;vertical-align:middle;width:18px !important; display:inline;" value="B" onClick="deposit()"> 무통장입금 <em>
	               								 <span class="op-bank-dc-price fc-red"></span></em>             
		               								 <select name="pay_data" class="w280 MK_bank_select_list MK_pay_add_choice" style="width:50%;">
			               								 <option value="">입금 계좌번호 선택(반드시 주문자 성함으로 입금)
			               								 </option>                       
			               								 <option value="국민은행 464401-04-096884 (예금주:(주)크리콕)">국민은행 464401-04-096884 (예금주:(주)크리콕)
			               								 </option>            
		               								 </select>  
               								 </li>
                                             <li style="margin-bottom:10px;">
                								<input type="radio" class="chk-rdo" name="radio_paymethod"  style="height:18px;vertical-align:middle;width:18px !important;" value="C" onClick="payByCard()"> 신용카드/네이버페이/카카오페이
                								     <em><span class="op-card-dc-price fc-red"></span></em>
                							 </li>
                                            </ul>                                       
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        
                        <div id="evidence" style="display:none;">                        
                        	<div class="tbl-order" style="margin-top:0px;border-top:0px;">
                            <table>
                       
                                <tbody>
                                     <tr>
                                <th scope="row"><div class="txt-l">증빙 신청</div></th>
                                <td style="padding-left: 18px;">
                                     <input type="radio" name="evidencecheck" form="order_form" onclick="" value="N" checked="checked" style="height:18px;vertical-align:middle;width:18px !important;"> 신청안함
                                	 <input type="radio" name="evidencecheck" form="order_form" onclick="" value="cashbill" style="height:18px;vertical-align:middle;width:18px !important;"> 현금영수증
                                                                                                                                    
                               <div style="padding-top:5px;">
                               		<div id="evidence_data"><script type="text/javascript" src="/js/check.js"></script>                                                
	                               		<div id="evidence_cashbill_data" style="display:none;">                                                                                                                            
		                               		<span id="cashbilltype">
							                    <select name="evidence_banktype" class="bank-type" onchange="togglecashbilltype(this.value)">
							                        <option value="0" selected="">핸드폰 번호
							                        </option><option value="1">국세청 현금영수증 카드
							                        </option><option value="2">사업자 번호
							                    </option></select>
							                </span>                                                                                             
	                                    </div>
                               		</div>                                            
                               </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        </div>
                        
                        
                        
                         <div class="col-12 text-center" style="margin-bottom:100px;">
	                        <div class="checkout-btn mt-30" style="width:60%;display:inline">
	                          <input type="submit" value="주문하기" class="btn alazea-btn" style="color:white;background-color:#fc5230;border:0;display:inline-block;width:150px">
	                          <input type="reset" value="주문 취소" class="btn alazea-btn" style="color:#fc5230; background-color:white; border:1px solid #fc5230; display:inline-block;width:150px">
	                        </div>
	                     </div>
                        </form>
                    </div>
                </div>
               
                
            </div>
        </div>
       
    </div>
    <!-- ##### Checkout Area End ##### -->
    
    
    <script language="javascript">
		function deposit(){
			document.getElementById("evidence").style.display="block";
	
		}
		function payByCard(){
			document.getElementById("evidence").style.display="none";
		}
		
    </script>
    
    

    
<script src="js/pay/orderpay.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) { 
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<script src="js/pay/trim.js"></script>
<script language="javascript"> 

	function enterCheck(elm){
		if(event.keyCode == 13){
			if(elm == f.email){
				f.pwd.focus();
			}else{
				check();
			}
		}
	}
</script>



    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area bg-img" style="background-image: url(img/bg-img/3.jpg);">
        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container">
                <div class="row">

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="footer-logo mb-30">
                                <a href="#"><img src="img/core-img/logo.png" alt=""></a>
                            </div>
                            <p>Lorem ipsum dolor sit samet, consectetur adipiscing elit. India situs atione mantor</p>
                            <div class="social-info">
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>QUICK LINK</h5>
                            </div>
                            <nav class="widget-nav">
                                <ul>
                                    <li><a href="#">Purchase</a></li>
                                    <li><a href="#">FAQs</a></li>
                                    <li><a href="#">Payment</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">Return</a></li>
                                    <li><a href="#">Advertise</a></li>
                                    <li><a href="#">Shipping</a></li>
                                    <li><a href="#">Career</a></li>
                                    <li><a href="#">Orders</a></li>
                                    <li><a href="#">Policities</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>BEST SELLER</h5>
                            </div>

                            <!-- Single Best Seller Products -->
                            <div class="single-best-seller-product d-flex align-items-center">
                                <div class="product-thumbnail">
                                    <a href="shop-details.html"><img src="img/bg-img/4.jpg" alt=""></a>
                                </div>
                                <div class="product-info">
                                    <a href="shop-details.html">Cactus Flower</a>
                                    <p>$10.99</p>
                                </div>
                            </div>

                            <!-- Single Best Seller Products -->
                            <div class="single-best-seller-product d-flex align-items-center">
                                <div class="product-thumbnail">
                                    <a href="shop-details.html"><img src="img/bg-img/5.jpg" alt=""></a>
                                </div>
                                <div class="product-info">
                                    <a href="shop-details.html">Tulip Flower</a>
                                    <p>$11.99</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget">
                            <div class="widget-title">
                                <h5>CONTACT</h5>
                            </div>

                            <div class="contact-information">
                                <p><span>Address:</span> 505 Silk Rd, New York</p>
                                <p><span>Phone:</span> +1 234 122 122</p>
                                <p><span>Email:</span> info.deercreative@gmail.com</p>
                                <p><span>Open hours:</span> Mon - Sun: 8 AM to 9 PM</p>
                                <p><span>Happy hours:</span> Sat: 2 PM to 4 PM</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Bottom Area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="border-line"></div>
                    </div>
                    <!-- Copywrite Text -->
                    <div class="col-12 col-md-6">
                        <div class="copywrite-text">
                            <p>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
                        </div>
                    </div>
                    <!-- Footer Nav -->
                    <div class="col-12 col-md-6">
                        <div class="footer-nav">
                            <nav>
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Service</a></li>
                                    <li><a href="#">Portfolio</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

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