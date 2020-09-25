<%@ page contentType="text/html; charset=utf-8" import="creakok.com.domain.LikeType"%>
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

    <!--  텀블벅
    <link rel="stylesheet" type="text/css" href="./css/hcbae/app.f329cff8a7f4484aad7e.css">
    <link rel="stylesheet" href="./css/hcbae/semantic.css">   -->
    
   <style>
        .storyContent h3 {
          font-size: 1.5rem;
          font-weight: normal;
          color: #666;
          margin-top: 0;
          line-height: 1.5;
          margin-bottom: 6.5px;
        }
    </style>
</head>

<body onload="readGoodsLike();">
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
            <h2>GOODS DETAILS</h2>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                        	<li class="breadcrumb-item" style="font-weight:300; color:#757575;"><i class="fa fa-home"></i>HOME</li>
                            <li class="breadcrumb-item" style="font-weight:300; color:#757575;">GOODS</li>
                         	<li class="breadcrumb-item active" aria-current="page"><span style="font-weight:600; color:black;">GOODS DETAILS</span></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->


    <div id="react-view" class="tbb-only-ff">
        <div class="ScrollTop__ScrollTopBtnWrapper-j9uqn7-1 etlKsY"><button class="ScrollTop__ScrollTopBtn-j9uqn7-2 QGKgG"><span>최상위로</span></button>
            <div class="ScrollTop__StyledIcon-j9uqn7-0 jOcSCe"><svg width="22px" height="18px" viewBox="0 0 22 18" version="1.1" xmlns="http://www.w3.org/2000/svg">
                    <g id="Page-1" stroke="none" fill-rule="evenodd">
                        <g id="jump-to-top" transform="translate(-1.000000, 0.000000)">
                            <path d="M12.006,5.987 L22.75,16.437 C22.9,16.587 23,16.837 23,17.087 C23,17.338 22.9,17.587 22.7,17.737 C22.35,18.087 21.75,18.087 21.35,17.737 L12.006,8.587 L2.611,17.737 C2.261,18.087 1.662,18.087 1.262,17.737 C0.912,17.387 0.912,16.787 1.262,16.437 L12.006,5.987 L12.006,5.987 Z M22.175,0 C22.631,0 23,0.37 23,0.825 L23,0.877 C23,1.332 22.63,1.702 22.175,1.702 L1.825,1.702 C1.369,1.702 1,1.332 1,0.877 L1,0.825 C1,0.369 1.37,0 1.825,0 L22.175,0 Z" id="Shape"></path>
                        </g>
                    </g>
                </svg>
            </div>
        </div>

        <div class="ProjectIntroduction__ProjectIntroductionBackground-sc-1o2ojgb-0 gsZkXT">
            <div class="Container-gci8y7-0 MskhC">
                <div class="ProjectIntroduction__ProjectIntroductionWrapper-sc-1o2ojgb-1 bnFLKn">
                    <div class="ProjectIntroduction__ProjectOutline-sc-1o2ojgb-2 jbdzfG">
                        <div class="ProjectIntroduction__ProjectOutlineInner-sc-1o2ojgb-3 fFIyMZ"><a href="#"><span class="ProjectIntroduction__ProjectCategory-sc-1o2ojgb-4 fNvuiJ">${category_name}</span></a>
                            <h1 id="product_name" class="ProjectIntroduction__ProjectTitle-sc-1o2ojgb-5 cWQlcy">${one_goods.goods_name}</h1>
                            <div class="ProjectIntroduction__Creators-sc-1o2ojgb-6 fsPnxP">
                            <span class="ProfileImg__StyledProfileImg-sc-1vio56c-0 gOcHWp"></span>
                            <a target="_blank" rel="noopener noreferrer" class="ProjectIntroduction__CreatorName-sc-1o2ojgb-7 jDbkqK" href="board_page?creator_name=${one_goods.creator_name}">
                            	${one_goods.creator_name}</a></div>
                        </div>
                    </div>
                    <div class="ProjectIntroduction__ProjectIntroductionMainColumn-sc-1o2ojgb-8 ZOwbJ">
                        <figure class="ProjectIntroduction__ProjectCoverImageFigure-sc-1o2ojgb-9 fUBtAC">
                        <!--  <img src="${one_goods.goods_repre_pic}" alt="프로젝트 커버 이미지" class="ProjectIntroduction__ProjectCoverImage-sc-1o2ojgb-11 hGsHpc" /></figure> -->
                         <p alt="프로젝트 커버 이미지" class="ProjectIntroduction__ProjectCoverImage-sc-1o2ojgb-11 hGsHpc" style="background:url(img/goods/${one_goods.goods_repre_pic});background-repeat:no-repeat;background-size:cover;background-position:-0px -50px"></p>
                    </div>
                    <aside class="ProjectIntroduction__ProjectIntroductionSubColumn-sc-1o2ojgb-12 fHdIrJ">
                        <div class="ProjectIntroduction__FundingStatus-sc-1o2ojgb-13 gGVEjs"  style="margin-bottom:50px">
                            <div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY">
                                <div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV" style="margin-right:20px;">가격</div>
                                <span id="product_price" class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA" style="font-size:2.3em; font-weight:600;">${one_goods.goods_price}</span>
                                <span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU">원</span>
                                
                                
                                
                            </div>

     
	                              <div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY">
	                             	<div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV"  style="margin-right:20px;">수량</div>
	                                 <div class="quantity">
	                                        <span class="qty-minus" style="padding:10px;" onclick="minus()"><i class="fa fa-minus" aria-hidden="true"></i></span>
	                                        <input type="number" class="qty-text" style="width:40px" id="qty" step="1" min="1" max="12" name="quantity" value="1" readonly>
	                                        <span class="qty-plus" onclick="plus()" style="padding:10px"><i class="fa fa-plus" aria-hidden="true"></i></span>
	                                    </div>
	                           	 </div>  
                     
                      <script language="javascript">
                              function plus(){
                                var effect = document.getElementById('qty'); 
                                var qty = effect.value; 
                                    
                                var result = document.getElementById('price_qty');
                                if(qty < ${one_goods.goods_stock_number}){
                                    var amount = ${one_goods.goods_price} * (Number(qty)+1);
                                    
                                    var result2 = document.getElementById('price_qty2');
                                    var amount2 = (${one_goods.goods_price} * (Number(qty)+1))+3000; 
                                    result2.innerHTML= amount2;
                                    
                                    result.innerHTML= amount;
                                } else {
                                    var amount = 0;
                                }
                                

                                if( !isNaN( qty ) & qty < ${one_goods.goods_stock_number} ) effect.value++;
                                return false;
                            }
                            function minus(){
                                var effect = document.getElementById('qty'); 
                                var qty = effect.value; 
                                
                                if(qty>1){
                                    var result = document.getElementById('price_qty');
                                    var amount = ${one_goods.goods_price} * (Number(qty)-1);
                                    
                                    var result2 = document.getElementById('price_qty2');
                                    var amount2 = (${one_goods.goods_price} * (Number(qty)-1))+3000; 
                                    
                                    result2.innerHTML= amount2;
                                }
                                
                                if(amount>0){
                                    result.innerHTML= amount;
                                }
                                if(amount2>0){
                                    result2.innerHTML= amount2;
                                }
                                if( !isNaN( qty ) && qty  >1) effect.value--;
                                    return false; 
                            }
                       </script>
                       
                       
                        		<hr style="height:1px">
                        		
                        		                
                            <div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY">
                                <div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV" id="totalis">TOTAL    :   </div>
                                <div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV" id="no_product" style="font-size:1.3em; font-weight:600;"><span id="price_qty">${one_goods.goods_price}</span> + <span style="font-size:1em; font-weight:100;">(배송비)</span> 3000원  =</div>
                                <div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA" id="no_product2" style="font-size:2.3em; font-weight:600;text-align:right"><span id="price_qty2">${one_goods.goods_price+3000}</span>
                                <span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU">원</span></div>
                            </div>                         
                            
                               
                       </div>
          
                        
                     
                     <div class="ProjectIntroduction__ProjectButtons-sc-1o2ojgb-19 fHOYOE">
                            <div class="ProjectIntroduction__ProjectButtonsInner-sc-1o2ojgb-20 jHbICj">
                                <div class="ProjectIntroduction__PrimaryButton-sc-1o2ojgb-21 knPvZB">
                                    <div class="PledgeButton__Wrapper-arwur9-0 krUjgk">
                                  	<!--  <a href="#" onclick="goodsOrder()" id="buy_button" class="Button-sc-1x93b2b-0 PledgeButton__StyledButton-arwur9-1 oNWny" style="background-color:#fc5230"> -->	
                                    	<a href="#" onclick="goodsOrder()" id="buy_button" class="Button-sc-1x93b2b-0 PledgeButton__StyledButton-arwur9-1 oNWny" style="background-color:#fc5230;color:white;border:0.1em solid #fc5230 !important;width:100%;height:56px;text-align:center;border-radius:5px;line-height: 50%;font-size:16.5px">	
                                    		구매하기
                                   	 	</a> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="ProjectIntroduction__ProjectButtonsInner-sc-1o2ojgb-20 jHbICj">
                                <div class="ProjectIntroduction__PrimaryButton-sc-1o2ojgb-21 knPvZB">
                                    <div class="PledgeButton__Wrapper-arwur9-0 krUjgk">
                                    <button class="Button-sc-1x93b2b-0 PledgeButton__StyledButton-arwur9-1 oNWny" style="background-color:white;color:#fc5230;border:0.1em solid #fc5230 !important;line-height: 50%;" onclick="addCart()">장바구니</button>
                                    </div>
                                </div>
                                

                                <div class="Tooltip__TooltipWrapper-sc-1czh1yq-0 kPQaEe ProjectIntroduction__StyledTooltip-sc-1o2ojgb-23 bUoWGM">
                                    <div class="ProjectIntroduction__SecondaryButton-sc-1o2ojgb-24 fnDZVR">
                                        <div class="LikeButton__Wrapper-whittq-0 dFOIsS ProjectIntroduction__StyledLikeButton-sc-1o2ojgb-22 jUCdsF">
                                        <button type="button" class="LikeButton__LikedBtn-whittq-1 neDEf"  onclick="clickGoodsLike();"><span>좋아요</span></button></div>
                                    </div>
                                </div>
                                <div class="ProjectIntroduction__TertiaryButton-sc-1o2ojgb-26 fGephg"><button type="button" class="Button-sc-1x93b2b-0 ProjectIntroduction__ShareSNSButton-sc-1o2ojgb-25 llyixJ goods_share" data-clipboard-text="1" onclick="urlClipCopy()">
                                        <div class="Icon__SVGICON-sc-1xkf9cp-0 cVaVMe"><svg viewBox="0 0 44 44">
                                                <path d="M35.4706,40.396 C32.9362,40.396 30.877,38.51 30.877,36.192 C30.877,33.874 32.9362,31.988 35.4706,31.988 C38.0028,31.988 40.0642,33.874 40.0642,36.192 C40.0642,38.512 38.0028,40.396 35.4706,40.396 M8.5316,26.204 C5.9994,26.204 3.938,24.318 3.938,22 C3.938,19.68 5.9994,17.796 8.5316,17.796 C11.0638,17.796 13.1252,19.68 13.1252,22 C13.1252,24.32 11.0638,26.204 8.5316,26.204 M35.4706,3.604 C38.0028,3.604 40.0642,5.49 40.0642,7.808 C40.0642,10.126 38.0028,12.012 35.4706,12.012 C32.9362,12.012 30.877,10.126 30.877,7.808 C30.877,5.488 32.9362,3.604 35.4706,3.604 M35.4706,28.384 C33.022,28.384 30.8198,29.334 29.2644,30.844 L16.7024,24.228 C16.9334,23.522 17.061,22.774 17.061,22 C17.061,21.226 16.9334,20.48 16.7046,19.772 L29.2644,13.156 C30.8198,14.668 33.022,15.616 35.4684,15.616 C40.183,15.616 44,12.12 44,7.808 C44,3.496 40.1808,0 35.4706,0 C30.7582,0 26.939,3.496 26.939,7.808 C26.939,8.582 27.0666,9.328 27.2954,10.036 L14.7334,16.652 C13.1802,15.142 10.978,14.192 8.5294,14.192 C3.8236,14.192 0,17.688 0,22 C0,26.312 3.8192,29.808 8.5316,29.808 C10.978,29.808 13.1802,28.86 14.7356,27.348 L27.2954,33.964 C27.0666,34.67 26.939,35.418 26.939,36.192 C26.939,40.504 30.7582,44 35.4706,44 C40.1808,44 44,40.504 44,36.192 C44,31.88 40.1808,28.384 35.4706,28.384"></path>
                                            </svg></div>
                                </button>
                                </div>
                                
                                <a name="fix_point"></a>
                                
                            </div>
                        </div>
                    </aside>
                    
                </div>
            </div>
                          <!--  클립보드 복사    -->
                          <script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.7.1/clipboard.min.js"></script>
                          <script>
                            function urlClipCopy() {
                               // var here = window.location.href;
                               // alert(here);
                                
                                $('.goods_share').attr('data-clipboard-text', document.location.href);
                                var clipboard = new Clipboard('.goods_share');
                                clipboard.on('success', function(e) {
                                    alert('주소가 복사되었습니다');
                                    console.log(e);
                                });
                                clipboard.on('error', function(e) {
                                    console.log(e);
                                });
                              }
                          </script>
                                      
						<script language="javascript">
                        	 function goodsOrder(){
			                  	var p_amount = document.getElementById('price_qty').innerHTML; 
			                  	var price_amount = Number(Number(p_amount)+3000);
			                  	//alert(price_amount);
			                  	
			                  	var product_name = document.getElementById('product_name').innerHTML;
			                  	//alert(product_name);
			                  	var product_price = document.getElementById('product_price').innerHTML;
			                  	
			                  	var effect = document.getElementById('qty'); 
		                  		var qty = effect.value; 
		                  		if('${one_goods.goods_stock_number}' != 0) {
			                  		if('${member.member_email}' == '') {
			                  			alert('로그인 해주세요');
			                  			location.href="member_login.do";
			                            return false;
			                  		}
			                  		if('${member.member_email}' != '') {
			                  			location.href="goods_order.do?price_amount="+price_amount+"&product_name="+product_name+"&product_price="+product_price+"&qty="+qty;	
			                  		}
		                  		} else {
		                  			alert('품절된 상품입니다');
		                  		}
                        	 }
                       </script>         
            
            
        </div><span style="font-size:0"></span>
        <div id="contentsNavigation">
            <nav class="ContentsNavigation__ProjectContentsNavigation-mwsx7i-1 bmUMcp">
                <div class="ContentsNavigation__ProjectContentsNavigationInner-mwsx7i-2 OvVKa">
                    <div class="ContentsNavigation__NavLeft-mwsx7i-3 buZwam">
                    <a class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB"  href="goods_detail.do?goods_index=${goods_index}#fix_point">상품상세정보</a>
                    <a class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB"  href="goods_review.do?review_cp=1&review_ps=5&goods_index=${one_goods.goods_index}&category_name=${category_name}#fix_point">리뷰<span class="ContentsNavigation__CommunityPostAmount-mwsx7i-6 jXWmuN">(${review_size})</span></a>
                    <a aria-current="page" class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB active" href="goods_qna.do?qna_cp=1&qna_ps=5&goods_index=${one_goods.goods_index}&category_name=${category_name}#fix_point" style="color:rgba(0,0,0,1);border-bottom:3px solid rgba(0,0,0,1);padding-bottom:calc(0.5rem - 3px)">Q&A<span class="ContentsNavigation__CommunityPostAmount-mwsx7i-6 jXWmuN">(${qna_list_size})</span></a></div>
                </div>
            </nav>
        </div>
        <div class="ProjectPage__ProjectContentsBackground-f3cisk-0 lbhpFL">
            <div class="Container-gci8y7-0 MskhC">
                <div class="ProjectPage__ProjectContents-f3cisk-1 ftClLq">
                
                
                
                    <div class="ProjectPage__ProjectContentsMainColumn-f3cisk-2 hzJfoW">
                        <div class="ProjectPage__MainColumnInner-f3cisk-4 kGPPtA">
                            <div class="Card-sc-1sgtmvk-0 iZjgMf">
                                <div class="StoryCard__StoryCardInner-sc-6cra5i-0 giOSQG">
                                    <div class="storyContent" style="padding:15px;font-size:10pt;height:500px">
                                      <!-- <img src="${one_goods.goods_detail_pic}">  -->
                                      
                                      
                                      
                                        <!-- 게시판 영역 start -->

    
                                      <div class="container">
                                      <!--  <div style="padding:15px"> -->
                                           <div style="font-size:10pt;"> 
                                                  <h3>Q&A(${qna_list_size})</h3>
                                                   <p style="font-size:12pt;color:#666666;margin-bottom:10px;">문의 글 남겨주시면 답변 드리겠습니다.</p>
                                                  <table style="">
                                                      <colgroup>
                                                          <col width="10%">
                                                          <col width="30%">
                                                          <col width="20%">
                                                          <col width="10%">
                                                          <col width="10%">
                                                      </colgroup>
                                                       <thead>
                                                          <tr>
                                                              <th style="padding:1.5px !important;">No</th>
                                                              <th style="padding:1.5px !important;">제목</th>
                                                              <th style="padding:1.5px !important;">작성자</th>
                                                              <th style="padding:1.5px !important;">날짜</th>
                                                              <th style="padding:1.5px !important;">답변</th>
                                                          </tr>
                                                      </thead>  
                                                      <tbody>
                                                            <tr> 
                                                              <td style="padding:1.5px !important;">${qna_list_number}</td>
                                                              <td style="padding:1.5px !important;">
                                                                  <a href="#" style="color:black;">
                                                                      ${one_qna.goods_qna_subject}
                                                                  </a>
                                                              </td>
                                                              <td style="padding:1.5px !important;">${one_qna.member_name}</td>
                                                              <td style="padding:1.5px !important;">${one_qna.goods_qna_wdate}</td>
                                                              <td id="review_view" style="padding:1.5px !important;">
                                                                <c:if test="${!empty one_qna.goods_qna_answer}">
                                                                                                                                        답변 완료
                                                                </c:if>
                                                                <c:if test="${empty one_qna.goods_qna_answer}">
                                                                                                                                        답변 대기
                                                                </c:if>
                                                              </td>
                                                          </tr> 
                                                           <tr>
                                                              <td colspan="5">
                                                                  <p style="text-align:center;font-size:10pt;color:black;font-size:10pt;margin-bottom:3%;margin-top:3%">${one_qna.goods_qna_content}</p> 
                                                               </td>
                                                          </tr>
                                                          
                                                          
                                                          
                                                          <!-- 크리에이터 답변이 있을 때 -->
                                                         
                                                          	<c:if test="${!empty one_qna.goods_qna_answer}">
                                                            
                                                            
                                                               <tr id="answer_is">
                                                                <td colspan="5">
                                                                   <p style="color:black;font-size:11pt;font-weight:600;text-align:left;margin-top:2%">└ ${one_qna.creator_name} 
                                                                       <span style="font-weight:400"> 님의 답변 :</span> 
                                                                       <span id="answer_here" style="font-weight:500">${one_qna.goods_qna_answer}</span>
                                                                       <span style="font-weight:300;margin-left:5px">(${one_qna.goods_qna_adate})</span>&nbsp;&nbsp;
                                                                       
                                                                     <c:if test="${member.member_email == creator.member_email}">  
                                                                       <a href="#" style="color:#858585;font-weight:300" onclick="answerUpdate()">수정</a>&nbsp;
                                                                       <span style="color:#858585;font-weight:300">|</span>&nbsp;
                                                                       <a href="goods_qna_answer_delete.do?goods_qna_index=${one_qna.goods_qna_index}&goods_index=${one_qna.goods_index}&category_name=${category_name}#fix_point" style="color:#858585;font-weight:300">삭제</a>
                                                                    </c:if>
                                                                       
                                                                   </p>
                                                                </td>
                                                               </tr>
                                                            
                                                          </c:if>
                                                      
                                                          <!-- 크리에이터 답변이 있을 때 End -->
                                                          
                                                          
                                                          
                                                          <!-- 크리에이터 답변이 없을 때 -->
                                                          <c:if test="${member.member_email == creator.member_email}">
                                                               <c:if test="${empty one_qna.goods_qna_answer}">
                                                                  <tr>
                                                                      <td colspan="5" style="border:0;text-align:left">
                                                                          <button style="background-color:#8a8888;color:white;padding:3px 5px 3px 5px" onclick="answer()">답변 달기</button>
                                                                      </td>
                                                                  </tr>
                                                               </c:if>   
                                                                  <tr id="answer" style="display:none">
                                                                      <td colspan="5" style="border:0">
                                                                          <form action="goods_qna_answer_insert.do#fix_point" method="post" style="position:relative;height:60px">
                                                                              
                                                                                  <label for="answer3" style="position:absolute;left:0;top:10;margin:0;display:inline-block;">└ 답변 :</label>&nbsp;
                                                                                  <textarea id="answer3" name="answer" rows="2" placeholder="답변 입력" style="width:87%;position:absolute;left:0;top:10;margin-left:60px;"></textarea>
                                                                                  <input type="hidden" name="goods_qna_index" value="${one_qna.goods_qna_index}">
                                                                                  <input type="hidden" name="goods_index" value="${one_qna.goods_index}">
                                                                                  <input type="hidden" name="category_name" value="${category_name}">
                                                                            
                                                                          
                                                                      </td>
                                                                      
                                                                  </tr>
                                                                  <tr id="answer2" style="display:none;text-align:right;border-top:0">
                                                                          <td colspan="5" style="text-align:right">
                                                                              <input type="submit" value="답변 등록" style="border:0;color:white;background-color:black;height:30px;padding:1px 3px 1px 3px;font-size:10pt;width:70px;margin-bottom:20px">
                                                                          </td>
                                                                          </form>
                                                                      </tr>
                                                           </c:if>
                                                          <!-- 크리에이터 답변이 없을 때 End -->
                                                          
  
                                                          <!-- 크리에이터 답변 수정 -->
                                                          
                                                            <tr id="update" style="display:none">
                                                                <td colspan="5" style="border:0">
                                                                    <form action="goods_qna_answer_insert.do#fix_point" method="post" style="position:relative;height:60px"> 
                                                                         <label for="answer" style="position:absolute;left:0;top:10;margin:0;display:inline-block;">└ 답변 :</label>&nbsp;
                                                                            <textarea id="answer3" name="answer" rows="2" placeholder="답변 입력" style="width:87%;position:absolute;left:0;top:10;margin-left:60px;">${one_qna.goods_qna_answer}</textarea>
                                                                            <input type="hidden" name="goods_qna_index" value="${one_qna.goods_qna_index}">
                                                                            <input type="hidden" name="goods_index" value="${one_qna.goods_index}">
                                                                            <input type="hidden" name="category_name" value="${category_name}">
                                                                      
                                                                    
                                                                </td>
                                                                <tr id="update2" style="display:none;text-align:right;border-top:0">
                                                                    <td colspan="5" style="text-align:right">
                                                                        <input type="submit" value="답변 수정" style="border:0;color:white;background-color:black;height:30px;padding:1px 3px 1px 3px;font-size:10pt;width:70px;margin-bottom:20px">
                                                                    </td>
                                                                    </form>
                                                                </tr>
                                                            </tr>
                                                          <!-- 크리에이터 답변 수정 End -->
  
                                                          
                                                      </tbody>
                                                  </table>
                                                  <p style="width:100%;text-align:center;margin-top:10px">
                                                       <a href="goods_qna.do?qna_cp=1&qna_ps=5&goods_index=${one_qna.goods_index}#fix_point" style="background-color:black; color:white; width:130px; padding:3px">목록</a>
                                                   <c:if test="${member.member_name == one_qna.member_name}"> 
                                                       <a href="goods_qna_update_form.do?goods_qna_index=${one_qna.goods_qna_index}&goods_index=${one_qna.goods_index}#fix_point" style="background-color:black; color:white; width:130px; padding:3px">수정</a>
                                                       <a href="goods_qna_delete.do?goods_qna_index=${one_qna.goods_qna_index}&goods_index=${one_qna.goods_index}#fix_point" style="background-color:black; color:white; width:130px; padding:3px">삭제</a>
                                                   </c:if>
                                                  </p>
                                           </div> 
                                  
                                       </div> 
                                     <!-- 게시판 영역 end -->
             </div>
          </div>
        </div>
      </div>
   </div>  
   
    <script src="js/js_board/jquery-1.12.4.js"></script>    
    <script>
        //$("#answer").hide(); // display 속성을 none 으로 바꾼다. 
        function answer(){
            $("#answer").show();
            $("#answer2").show();
        }
        function answerUpdate(){
        	$("#answer_is").hide();
            $("#update").show();
            $("#update2").show();        	
        }
    </script>               
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
                    Swal.fire({
                        icon: 'success',
                        title: '댓글이 삭제되었어요!',
                        showConfirmButton: false,
                        timer: 1500     
                    }).then($().ready(function(){
                        location.href = "comment_delete?board_index=${board.board_index}&comment_index="+comment_index;
                        })
                    )
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
                     <div class="ProjectPage__ProjectContentsSubColumn-f3cisk-3 egbEFv">
                        <div class="ProjectPage__SubColumnInner-f3cisk-6 qujmm">
                            <div class="Card-sc-1sgtmvk-0 iZjgMf ProjectPage__StyledCreatorCard-f3cisk-5 lfTmkG">
                                <div class="CreatorCard__CreatorCardInner-sc-1ifohey-0 iubrbI">
                                    <div class="CreatorCard__CreatorCardLabel-sc-1ifohey-1 erXxPv">크리에이터 소개</div>
                                    <div class="CreatorCard__CreatorProfile-sc-1ifohey-2 bnLQVO">
                                    <span class="ProfileImg__StyledProfileImg-sc-1vio56c-0 gwsafG" style="background-image: url(img/community/${creator.creator_profile_photo});"></span>
                                    <a target="_blank" href="#"><span class="CreatorCard__CreatorName-sc-1ifohey-3 ksslMx">${creator.creator_name}</span></a></div>
                                    <div class="CreatorCard__CreatorBiography-sc-1ifohey-4 kTXqqU">
                                        </div>
                                    <div class="Divider-sc-17hnup0-0 eUqLBU"></div>
                                      <div class="CreatorCard__CreatorStats-sc-1ifohey-5 dhVdtT">
                                        <p>${creator.creator_profile_content}</p>
                                    </div>  
                                    <div class="CreatorCard__CreatorContactButton-sc-1ifohey-6 jpHksr">
                                        <button class="Button-sc-1x93b2b-0 jQspcv" onclick="goCreator()">
                                            <i class="_3YmAkQhwzI7o-uUWz_8Mp4 _1QY7TzdLHKX3-BKPDNNYKF">
                                                                                                커뮤니티 놀러가기
                                            </i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                            <div class="Sticker__Ghost-sc-1si6lg8-1 jchKaE" style="height: auto;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                           

     <script>
      function goCreator(){
          location.href="board_page?creator_name=${creator.creator_name}";
      }
    </script>   


    <!-- ##### Related Product Area Start ##### -->
    <div class="related-products-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-heading text-center">
                        <h2>관련 상품</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <c:if test="${empty four_goods}">
                       <p style="text-align:center;width:100%;margin-bottom:10%"> 관련 굿즈가 없습니다.</p>
                </c:if>
                
                <c:forEach items="${four_goods}" var="goods_related">
                <!-- Single Product Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-product-area mb-100">
                        <!-- Product Image -->
                        <div class="product-img">
                            <a href="goods_detail.do?goods_index=${goods_related.goods_index}"><img src="img/goods/${goods_related.goods_repre_pic}" alt=""></a>
                            <!-- Product Tag -->
                            <div class="product-tag">
                                <a href="#">Hot</a>
                            </div>
                            

                        </div>
                        <!-- Product Info -->
                        <div class="product-info mt-15">
                            <p style="margin-bottom:5px;color:black">${goods_related.creator_name}</p>
                            <a href="goods_detail.do?goods_index=${goods_related.goods_index}" style="color:black">
                                <p style="color:black;font-weight:500">${goods_related.goods_name}</p>
                            </a>
                            <h6 style="color:black;font-size:1.5em">${goods_related.goods_price}&nbsp;<span style="color:black;font-weight:400">원</span></h6>
                        </div>
                    </div>
                </div>
             </c:forEach>
            </div>
            
        </div>
    </div>
    <!-- ##### Related Product Area End ##### -->

    <!--  재고 수량 0일 때(품절 처리)  -->
    <script src="js/js_board/jquery-1.12.4.js"></script>    
	<script>
		if('${one_goods.goods_stock_number}' == 0){
             //alert('0');
             $("#totalis").css('display','none');
             $("#no_product").css('display','none');
             $("#wonwon").css('display','none');
             $("#price_qty2").html("품절된 상품입니다"); 
             $("#price_qty2").css('font-size', '0.7em');
             $("#price_qty2").css('font-weight', '600');
             
             $("#buy_button").css('background-color', '#828282');
             $("#buy_button").css('border', '0.1em solid #828282');
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

    <!--hcbae 텀블벅 가져오기 start-->
    <div id="ch-plugin">
        <div id="ch-plugin-core">
            <style data-styled="" data-styled-version="4.4.1"></style>
            <div data-ch-testid="full-screen-push-message" hidden="" class="sc-cfWELz cBlAAQ sc-bvTASY jSHOPs" style="z-index: 100000000 !important;">
                <div class="sc-cCVOAp dGYzMw">
                    <div class="sc-bJHhxl kBVAxN">
                        <div name="cancel" size="16" width="24" height="24" class="sc-jtRfpW kTLTSp"></div>
                    </div>
                    <div class="sc-epGmkI kJmkgC">
                        <div size="24" radius="8px" class="sc-kpOJdX gclMhu"></div>
                        <div class="sc-fQkuQJ louPTg">(알 수 없음)</div>
                        <div class="sc-TuwoP jyELua">9:00am</div>
                    </div>
                    <div class="sc-hAXbOi eHMWJu">
                        <div class="sc-dphlzf pYDXh"></div>
                    </div>
                </div>
            </div>
        </div>
        <div id="ch-plugin-script" style="display:none">
            <iframe id="ch-plugin-script-iframe" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;" src="./saved_resource.html"></iframe>
        </div>
    </div>
    <script type="text/javascript" async="" src="./js/hcbae/linkid.js"></script>
    <script type="text/javascript" async="" src="./js/hcbae/gtm.js"></script>
    <script type="text/javascript" async="" src="./js/hcbae/amplitude-5.2.2-min.gz.js"></script>
    <script type="text/javascript" async="" src="./js/hcbae/analytics.js"></script>
    <script type="text/javascript" async="" src="./js/hcbae/ch-plugin-web.js" charset="UTF-8"></script>
    <script type="text/javascript" async="" src="./js/hcbae/analytics.min.js"></script>
    <script src="./js/hcbae/kakao.min.js"></script>
    <script src="./js/hcbae/semantic.js"></script>
    <script type="application/javascript" src="https://d2om2e6rfn032x.cloudfront.net/wpa/bundle.app.173e0183d7bc9f5995e8.js"></script>

    <!--hcbae 텀블벅 가져오기 end-->
    <script type="text/javascript">
    function readGoodsLike(){
        if('${member.member_email}' == '') {
            return;
        }
        
        let formData = new FormData();
        formData.append('like_content_index','${one_goods.goods_index}');
        formData.append('like_type_code','${LikeType.GOODS_LIKE}');
        formData.append('like_member_email','${member.member_email}');
        
        let xmlHttpLike = new XMLHttpRequest();
        xmlHttpLike.open("POST", "readLike.do", true); // true for asynchronous
        xmlHttpLike.send(formData);
        xmlHttpLike.onreadystatechange = function() {
            if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                let obj = document.querySelector(".neDEf");
                if(xmlHttpLike.responseText == '${LikeType.LIKE_NOT_EXIST}'){
                    obj.classList.remove('isLiked');
                } else if(xmlHttpLike.responseText == '${LikeType.LIKE_EXIST}') {
                    obj.classList.add('isLiked');
                }
            }
       };
    }

    function clickGoodsLike(){
        if('${member.member_email}' == '') {
            alert('로그인해주세요.');
            return;
        }
        
        let formData = new FormData();
        formData.append('like_content_index','${one_goods.goods_index}');
        formData.append('like_type_code','${LikeType.GOODS_LIKE}');
        formData.append('like_member_email','${member.member_email}');

        let xmlHttpLike = new XMLHttpRequest();
        xmlHttpLike.open("POST", "clickLike.do", true); // true for asynchronous
        xmlHttpLike.send(formData);
        xmlHttpLike.onreadystatechange = function() {
            if (xmlHttpLike.readyState == 4 && xmlHttpLike.status == 200) {
                let obj = document.querySelector(".neDEf");
                if(xmlHttpLike.responseText == '${LikeType.LIKE_NOT_EXIST}'){
                    obj.classList.add('isLiked');
                } else if(xmlHttpLike.responseText == '${LikeType.LIKE_EXIST}') {
                    obj.classList.remove('isLiked');
                }
            }
       };
    }
    </script>

    <script type="text/javascript">
    function addCart(){
    	if('${member.member_email}' == '') {
    	     alert('로그인해주세요.');
    	     return;
    	}
        
        let formData = new FormData();
        formData.append('member_email', '${member.member_email}');
        formData.append('goods_index', '${one_goods.goods_index}');
        formData.append('goods_category_code', '${one_goods.goods_category_code}');
        formData.append('goods_name', '${one_goods.goods_name}');
        formData.append('goods_repre_pic', '${one_goods.goods_repre_pic}');
        formData.append('unit_price', document.getElementById('product_price').innerText );
        formData.append('unit_count', document.getElementById('qty').value );
    
        let xmlHttp = new XMLHttpRequest();
        xmlHttp.onreadystatechange = function() {
             if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                 //console.log("#####:"+xmlHttp.responseText);
                 if(xmlHttp.responseText=="add_ok") {
                     alert('상품을 장바구니에 담았습니다.');
                 }
             }
        };

       xmlHttp.open("POST", "addCart.do", true); // true for asynchronous
       xmlHttp.send(formData);
    }
    </script>  
    
    <jsp:include page="Language.jsp" flush="false">
    <jsp:param name="page_name" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    </jsp:include>
    
</body>

</html>