<%@ page contentType="text/html; charset=utf-8" 
import="creakok.com.domain.Member_origin, creakok.com.domain.Member_category, creakok.com.filesetting.Path"%>
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
    
	<link rel="stylesheet" href="css/only_goods_review_board_jsp.css">
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
        <div class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center" style="background-image: url(${Path.COMMON_IMG_PATH}page_mypage.png);">
            <h2 style="color:black">My Page</h2>
        </div>

        <div class="container"> <!--Home>My Page-->
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item" style="font-weight:300; color:#757575;"><i class="fa fa-home"></i> Home</li>
                            <li class="breadcrumb-item active" aria-current="page"><span style="font-weight:600; color:black;">My Page</span></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div> <!--end of Home>My Page-->


        <div class="container"> 
          <!-- Nav tabs -->
            <div class="row"> <!--My Page Tabs Headers-->
                <div class="col-12">
                    <div class="most__search__tab">
                        <ul class="nav nav-tabs nav-pills" role="tablist">
                            <c:if test="${member.member_email == Member_category.SUPER_ACCOUNT}">
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link" data-toggle="tab" href="#standby_creator" role="tab">크리에이터 신청명단</a>
                            </li>
                            
                            <!-- 인덱스 문의글 -->
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link" data-toggle="tab" href="#qna-list" role="tab">문의글 목록</a>
                            </li>   
                            </c:if>
                            
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link" data-toggle="tab" href="#jjim-list" role="tab">좋아요 리스트</a>
                            </li>
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link" data-toggle="tab" href="#member-modify" role="tab">회원정보수정</a>
                            </li>
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link active" data-toggle="tab" href="#my_order" role="tab">주문내역</a>
                            </li>
                            <li class="nav-item">
                                <a class="hcbae-nav nav-link" data-toggle="tab" href="#my_funding" role="tab">펀딩내역</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> <!--end of My Page Tabs Headers-->


            <div class="tab-content"> <!--My Page Tabs Contents-->
            
                <div id="standby_creator" class="container tab-pane" style="margin-bottom:7%">
                    <h3 style="margin-bottom:20px">크리에이터 신청 리스트</h3>
                      <table style="">
                      <colgroup>
                          <col width="12%">
                          <col width="12%">
                          <col width="20%">
                          <col width="20%">
                          <col width="30%">
                          <col width="6%">
                      </colgroup>
                       <thead>
                          <tr>
                              <th style="padding:1.5px !important;">이름</th>
                              <th style="padding:1.5px !important;">이메일</th>
                              <th style="padding:1.5px !important;">소개</th>
                              <th style="padding:1.5px !important;">대표사진</th>
                              <th style="padding:1.5px !important;">배너사진</th>
                              <th style="padding:1.5px !important;">등록/취소</th>
                          </tr>
                      </thead>  
                      <tbody>
                        <c:if test="${empty standby_list}">
                          <tr>
                            <td colspan="6" style="border-bottom:1px solid black">신청 내역이 없습니다.</td>   
                          </tr>
                        </c:if>
                        <c:if test="${!empty standby_list}">
                          <c:set var="listCount" value="0"/>
                          <c:forEach items="${standby_list}" var="creator">
                             <tr class="order_click_tr">
                                <td style="padding:3px !important;">${creator.creator_name}</td>
                                <td style="padding:3px !important;">${creator.member_email}</td>
                                <td style="padding:3px !important;">${creator.creator_profile_content}</td>
                                <td style="padding:3px !important;"><img src="${Path.IMG_STORE_COMMUNITY_SHORT}${creator.creator_profile_photo}"></td>
                                <td style="padding:3px !important;"><img src="${Path.IMG_STORE_COMMUNITY_SHORT}${creator.creator_banner_photo}"></td>
                                <td style="padding:3px !important;">
                                  <input type="button" value="등록" onclick="addCreator_standby('${creator.creator_name}')"><br/>
                                  <input type="button" value="삭제" onclick="deleteCreator_standby('${creator.creator_name}')">
                                  <script type="text/javascript">
                                  function deleteCreator_standby(creator_name){
                                      let result = confirm(creator_name+'을 크리에이터 신청 리스트에서 삭제하겠습니까?')
                                      if(result){
                                          location.href="deleteCreator_standby.do?creator_name="+creator_name;    
                                      }
                                  }
                                  function addCreator_standby(creator_name){
                                      let result = confirm(creator_name+'을 크리에이터로 등록하겠습니까?')
                                      if(result){
                                          location.href="addCreator_standby.do?creator_name="+creator_name;    
                                      }
                                  }
                                  </script>
                                  
                                </td>
                              </tr>
                          <c:set var="listCount" value="${listCount + 1}"/>
                          </c:forEach>
                        </c:if>
                      </tbody>
                  </table>
                </div>
                
                <!--  문의 글 목록     -->
                <div id="qna-list" class="container tab-pane" style="margin-bottom:7%">
                    <h3>문의 글</h3>
                    <p>답변했을 경우 '답변 등록'을 눌러주세요</p>
                    
                      <table style="">
                      <colgroup>
                          <col width="5%">
                          <col width="9%">
                          <col width="15%">
                          <col width="15%">
                          <col width="40%">
                          <col width="8%">
                          <col width="8%">
                      </colgroup>
                       <thead>
                          <tr>
                              <th style="padding:1.5px !important;">No</th>
                              <th style="padding:1.5px !important;">이름</th>
                              <th style="padding:1.5px !important;">이메일</th>
                              <th style="padding:1.5px !important;">제목</th>
                              <th style="padding:1.5px !important;">내용</th>
                              <th style="padding:1.5px !important;">답변 여부</th>
                          </tr>
                          
                      </thead>  
                      <tbody>
                        <c:if test="${empty contact_list}">
                          <tr>
                            <td colspan="6" style="border-bottom:1px solid black">문의글이 없습니다.</td>   
                          </tr>
                        </c:if>
                        <c:if test="${!empty contact_list}">
                          
                          <c:forEach items="${contact_list}" var="contact">
                             <tr class="order_click_tr">
                                <td style="padding:3px !important;">${contact.contact_index}</td>
                                <td style="padding:3px !important;">${contact.contact_name}</td>
                                <td style="padding:3px !important;">${contact.contact_email}</td>
                                <td style="padding:3px !important;">${contact.contact_subject}</td>
                                <td style="padding:3px !important;">${contact.contact_message}</td>
                                <td style="padding:3px !important;">
                                    <c:if test="${empty contact.contact_ok}">
                                        <a href="qna_answer_ok.do?contact_index=${contact.contact_index}" style="color:white;background-color:black;padding:2px">답변 등록</a> 
                                    </c:if>
                                    <c:if test="${contact.contact_ok == '답변완료'}">
                                                                                답변 완료
                                    </c:if>
                                </td>
                                
                              </tr>
    
                          </c:forEach>
                        </c:if>
                      </tbody>
                  </table>
                </div>
                <!--  문의 글 목록  End   -->       
            
            
            
                <div id="jjim-list" class="container tab-pane">
                    <h3>좋아요 리스트</h3>
                    <p>리스트를 어떻게 표시할까?</p>
                    
                    <div id="mypage_funding_area"></div>
                    
                    <div id="mypage_goods_area"></div>
                    
                    
                    <script type="text/javascript">
                    function readFundingLikeList(){
                    	if('${member.member_email}' == '') {
                            return;
                        }
                        
                        var xmlHttpFundingLikeList = new XMLHttpRequest();
                        xmlHttpFundingLikeList.onreadystatechange = function() {
                             if (xmlHttpFundingLikeList.readyState == 4 && xmlHttpFundingLikeList.status == 200) {
                            	 //var returnV = xmlHttpFundingLikeList.responseText; 
                                 //console.log(returnV);
                                 document.getElementById("mypage_funding_area").innerHTML= xmlHttpFundingLikeList.responseText;
                             }
                        };
                        xmlHttpFundingLikeList.open("GET", "readFundingLikeList.do?member_email=${member.member_email}", true); // true for asynchronous
                        xmlHttpFundingLikeList.send();
                    }
                    readFundingLikeList();
                    
                    function readGoodsLikeList(){
                        if('${member.member_email}' == '') {
                            return;
                        }
                        
                        var xmlHttpGoodsLikeList = new XMLHttpRequest();
                        xmlHttpGoodsLikeList.onreadystatechange = function() {
                             if (xmlHttpGoodsLikeList.readyState == 4 && xmlHttpGoodsLikeList.status == 200) {
                                 //var returnV = xmlHttpGoodsLikeList.responseText; 
                                 //console.log(returnV);
                                 document.getElementById("mypage_goods_area").innerHTML= xmlHttpGoodsLikeList.responseText;
                             }
                        };
                        xmlHttpGoodsLikeList.open("GET", "readGoodsLikeList.do?member_email=${member.member_email}", true); // true for asynchronous
                        xmlHttpGoodsLikeList.send();
                    }
                    readGoodsLikeList();
                    </script>
                    
                </div>
              
                <div id="member-modify" class="container tab-pane fade">
                
                    <div class="hcbae-member-modify-area">
                        <h3>회원 이메일</h3>
                        <label>${member.member_email}</label> 
                        <label style="float:right;">가입일 : ${member.member_joindate}</label>
                    </div>
                    <div class="hcbae-member-modify-area">
                        <h3>이름</h3>
                        <label>${member.member_name}</label>
                        
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#member-name-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this)">
                        </span>
                        <div id="member-name-area" class="collapse">
                          <div class="hcbae-member-modify-input">
                            <label>새로운 이름을 입력해주세요.</label><br>
                            <input type="text" class="hcbae-mypage-input-box-border" id="nowName" placeholder="새로운 이름" onKeyUp="checkName(this);">
                            <label id="checkName_Id"></label>
                          </div>
                          <span>
                          <input class="btn" type="button" value="변경하기" onclick="changeName('${member.member_email}')">
                          </span>
                        </div>
                    </div>
                    
                    <div class="hcbae-member-modify-area">
                        <h3>프로필 사진</h3>
                        <p>${member.member_profile_pic}</p>
                        
                        <c:if test="${!empty member.member_profile_pic}">
                          <img style="height:100px;" src="${member.member_profile_pic}">                                
                        </c:if>
                        
                        <span class="hcbae-member-modify-button">
                        
                        <c:if test="${member.member_origin_code==Member_origin.SIGNUP_NORMAL}">
                          <input class="btn" type="button" data-target="#profile-pic-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this)">
                        </c:if>

                        </span>
                        <div id="profile-pic-area" class="collapse">
                          <p>사진 저장 관련하여 정리 되고 프로필 사진을 표시할 수 있게 되면 추가 수정하자.</p>
                        </div>
                    </div>
                    <c:if test="${member.member_origin_code==Member_origin.SIGNUP_NORMAL}">
                    <div class="hcbae-member-modify-area">
                        <h3>비밀번호</h3>
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#password-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this); clearModifyPasswordArea();">
                        </span>
                        
                        <div id="password-area" class="collapse">

                          <div class="hcbae-member-modify-input">
                            <label>현재 비밀번호를 입력해주세요.</label><br>
                            <input type="password" class="hcbae-mypage-input-box-border" id="nowPassword" placeholder="현재 비밀번호" onKeyUp="checkPassword('${member.member_email}');">
                            <label id="checkPasswordResult"></label>
                          </div>
                          
                          <div class="hcbae-member-modify-input">
                            <label>새로운 비밀번호를 입력해주세요.</label><br>
                            <input type="password" class="hcbae-mypage-input-box-border" id="newPassword" placeholder="새로운 비밀번호" >
                            <br><br>
                            <input type="password" class="hcbae-mypage-input-box-border" id="newPasswordAgain" placeholder="새로운 비밀번호 확인" onKeyUp="checkNewPassword()">
                            <label id="checkNewPasswordResult"></label>
                          </div>
                          
                          <span>
                          <input class="btn" type="button" value="변경하기" onclick="changePassword('${member.member_email}')">
                          </span>

                        </div>
                    </div>
                    </c:if>
                    
                    <div class="hcbae-member-modify-area">
                        <h3>수정할 정보가 뭐가 더 있을까?</h3>
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#add-modify-area" data-toggle="collapse" value="수정" onclick="changeButtonText(this)">
                        </span>
                        
                        <div id="add-modify-area" class="collapse">
                        <p>수정할 내용을 어떻게 수정할 지 고민해보고 추가하자.</p>
                        </div>   
                    </div>
                    
                    <div class="hcbae-member-modify-area">
                        <h3>회원탈퇴</h3>
                        <span class="hcbae-member-modify-button">
                        <input class="btn" type="button" data-target="#secession-area" data-toggle="collapse" value="수정">
                        </span>
                        
                        <div id="secession-area" class="collapse">
                            <p>CREAKOK을 탈퇴하시겠습니까? (굳이? ㅠㅠ)</p>
                            <c:if test="${member.member_origin_code==Member_origin.SIGNUP_NORMAL}">
                              <div class="hcbae-member-modify-input">
                                <label>현재 비밀번호를 입력해주세요.</label><br>
                                <input type="password" class="hcbae-mypage-input-box-border" id="secessionPassword" placeholder="현재 비밀번호" onKeyUp="checkSecession('${member.member_email}')">
                                <label id="checkSecessionResult"></label>
                              </div>
                              
                              <span>
                              <input class="btn" type="button" value="탈퇴하기" onclick="secessionPassword('${member.member_email}')">
                              </span>              
                            </c:if>
                            <c:if test="${member.member_origin_code!=Member_origin.SIGNUP_NORMAL}">
                              <span>
                              <input class="btn" type="button" value="탈퇴하기" onclick="secessionSocial('${member.member_email}')">
                              </span>
                            </c:if>
                        </div>                           
                    </div>
                    
                </div>
                
                
                
                <!--  주문 내역   -->
                 <div id="my_order" class="container tab-pane active" style="margin-bottom:10%">
                    <h3 style="margin-bottom:20px">주문 내역(총 ${order_count}개)</h3>
                   
                    
                    <div id="mypage_funding_area"></div>
                    
                    <div id="mypage_goods_area"></div>
                    
                    <table style="">
                    <colgroup>
                        <col width="5%">
                        <col width="15%">
                        <col width="20%">
                        <col width="30%">
                        <col width="15%">
                        <col width="15%">
                    </colgroup>

                    <tbody>
                    
                        <c:if test="${empty order_info}">
                           <td colspan="6">
                                                                주문 내역이 없습니다.</td>
                           </td>               
                        </c:if>
                        <c:if test="${!empty order_info}">
                            
                              <tr class="orderInfo_detail">
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">No : </span><span>${order_list_number}</span>
                                 </td>
                                 <input type="hidden" id="order_index" name="order_index" value="${order_info.order_index}">
                                 
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;border-left:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">주문인 : </span><span>${order_info.buyer_name}</span> 
                                 </td>
                              </tr>
                              <tr class="orderInfo_detail">
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">연락처 : </span><span>${order_info.buyer_phone}</span>
                                 </td>
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;border-left:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">이메일 : </span><span>${order_info.member_email}</span> 
                                 </td>
                              </tr>
                              <tr class="orderInfo_detail"">
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">주문날짜 : </span><span>${order_info.buy_date}</span>
                                 </td>
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;border-left:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">주      소 : </span><span>${order_info.buy_addr}</span> 
                                 </td>
                              </tr>
                              
                              <tr class="orderInfo_detail">
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">총 금액 : </span><span>${order_info.buyer_pay_price} 원</span>
                                 </td>
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;border-left:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">상품명 : </span><span>${order_info.buy_product_name}</span> 
                                 </td>
                              </tr>
  
                              <tr class="orderInfo_detail">
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">주문번호 : </span><span>${order_info.buyer_merid}</span>
                                 </td>
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:1px solid #bdbdbd;border-left:1px solid #bdbdbd;padding:10px">
                                   <span style="font-weight:700">결제여부 : </span> 
                                   <span>
                                     <c:if test="${order_info.buyer_pay_ok == 'ready'}">
                                                                                        미결제
                                     </c:if>
                                     <c:if test="${order_info.buyer_pay_ok == 'paid'}">
                                                                                        결제완료
                                     </c:if>
                                     <c:if test="${order_info.buyer_pay_ok == 'cancelled'}">
                                                                                        결제취소
                                     </c:if>
                                     <c:if test="${order_info.buyer_pay_ok == 'failed'}">
                                                                                        결제실패
                                     </c:if>
                                   	</span>
                                 </td>
                              </tr> 
                              
                              <tr class="orderInfo_detail">
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:2px solid black;padding:10px">
                                   <span style="font-weight:700">카드승인번호 : </span><span>${order_info.buyer_card_num}</span>
                                 </td>
                                 <td colspan="3" style="font-size:12pt;color:black;text-align:left;border-bottom:2px solid black;border-left:1px solid #bdbdbd;padding:10px">
                                   
                                 </td>
                              </tr>
					 </c:if>



                    </tbody>
                </table>
                			<p style="text-align:center;margin-top:20px">
                                <a href="member_order.do?member_email=${order_info.member_email}&order_cp=1" style="font-size:13pt;background-color:black; color:white; width:130px; padding:3px;">목록으로</a>
                                <a href="#" onclick="popupPost()" style="font-size:13pt;background-color:white;border:1px solid black; color:black; width:130px; padding:3px;">주문 취소</a>
                            </p>
                </div>
                
                <!--  펀딩 내역   -->
                 <div id="my_funding" class="container tab-pane" style="margin-bottom:10%">
                    <c:if test="${empty funding_pay_info}">
                       <h3>펀딩 내역(총  0개)</h3>              
                    </c:if>
                    <c:if test="${!empty funding_pay_info}">
                        <h3>펀딩 내역(총 ${funding_pay_count}개)</h3>
                    </c:if>
                    <p style="margin-bottom:20px">펀딩 제목을 클릭하시면 해당 펀딩에 대한 상세내역을 확인하실 수 있습니다.</p>
                    
                    <div id="mypage_funding_area"></div>
                    
                    <div id="mypage_goods_area"></div>
                    
                    <table style="">
                    <colgroup>
                        <col width="5%">
                        <col width="25%">
                        <col width="20%">
                        <col width="15%">
                        <col width="10%">
                        <col width="15%">
                        <col width="10%">
                    </colgroup>
                     <thead>
                        <tr>
                            <th style="padding:1.5px !important;">No</th>
                            <th style="padding:1.5px !important;">펀딩 제목</th>
                            <th style="padding:1.5px !important;">펀딩액</th>
                            <th style="padding:1.5px !important;">펀딩 진행여부</th>
                            <th style="padding:1.5px !important;">결제예정일</th>
                            <th style="padding:1.5px !important;">결제상태</th>
                        </tr>
                    </thead>  
                    <tbody>
                      
                        <c:if test="${empty funding_pay_info.funding_pay_list}">
                            <tr>
                           <td colspan="6" style="border-bottom:1px solid black">
                                                                펀딩 내역이 없습니다.
                           </td>  
                           </tr>
                        </c:if>
                        
                        
                        <c:if test="${!empty funding_pay_info.funding_pay_list}">
                         <c:forEach items="${funding_pay_info.funding_pay_list}" var="funding_payinfo">
                             <tr class="order_click_tr">
                                 <td style="padding:3px !important;">${funding_payinfo.funding_list_number}</td>
                                 <td style="padding:3px !important;">
                                    <a href="member_fundingpayDetail.do?funding_payinfo_index=${funding_payinfo.funding_payinfo_index}&member_email=${funding_payinfo.member_email}&funding_list_number=${funding_payinfo.funding_list_number}" style="color:black;">
                                     ${funding_payinfo.funding_subject}
                                    </a>
                                 </td>
                                 <td style="padding:3px !important;">${funding_payinfo.funding_payinfo_amountpay} 원</td>
                                 <td style="padding:3px !important;">
                                     <c:if test="${funding_payinfo.funding_ok == 'true'}">
                                                                                    확정
                                     </c:if>
                                     <c:if test="${funding_payinfo.funding_ok == 'false'}">
                                                                                     미정
                                     </c:if>
                                 </td>
                                 <td style="padding:3px !important;">${funding_payinfo.funding_datepayment}</td>
                                 <td id="review_view" style="padding:1.5px !important;">
                                     <c:if test="${funding_payinfo.success_pay == 'true'}">
                                                                                    결제 예약 완료
                                     </c:if>
                                     <c:if test="${funding_payinfo.success_pay == 'false'}">
                                                                                     결제 대기
                                     </c:if>
                                 </td>
                              </tr>
                        </c:forEach>
                     </c:if>
                     
                      <tr>
                            <td colspan="6" align="center" style="border-bottom:0px">
                             <c:forEach begin="1" end="${funding_pay_info.funding_pay_totalPageCount}" var="i">
                                      <a href="member_mypage.do?focus=funding&fundingpay_cp=${i}&member_email=${funding_pay_info.member_email}#fix_point" style="color:black; font-size:11pt">
                                  <c:choose> 
                                  <c:when test="${i==funding_pay_info.funding_pay_cp}">
                                      <strong>${i}</strong>
                                  </c:when>
                                  <c:otherwise>
                                      ${i}
                                  </c:otherwise>
                                  </c:choose>
                              </a>
                              
                              &nbsp;
                              </c:forEach>
                            </td>
                       </tr>
                    </tbody>
                </table>
                </div>
                <!--  펀딩 내역  End -->               
                
                
            </div> <!--My Page Tabs Contents-->
        </div>
    </div>

    <script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>   
    <script type="text/javascript">

          function popupPost(){ 
              const popupWidth = 800;
              const popupHeight = 450;
              const popupX = (window.screen.width/2)-(popupWidth/2);
              const popupY= (window.screen.height/2)-(popupHeight/2);
              window.open('goods_pay_cancel.do?order_index=${order_info.order_index}', '환불 신청', 'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
            } 

    </script>

            
  <script
    src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script><!-- jQuery CDN --->
  

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