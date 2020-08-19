<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <script type="text/javascript">
    var xmlHttpHeader = new XMLHttpRequest();
    xmlHttpHeader.open("GET", "creakok_header.do", true); // true for asynchronous
    xmlHttpHeader.send();
    
    xmlHttpHeader.onreadystatechange = function() {
         if (xmlHttpHeader.readyState == 4 && xmlHttpHeader.status == 200) {
             document.getElementById("header_div").innerHTML= xmlHttpHeader.responseText;
         }
    };
    </script>
    
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

<body >
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
    </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!--텀블벅추가-->
    <div class="Membership__MembershipWrapper-o1o1he-0 irjBzn">
        <div style="margin-top:180px; margin-bottom:50px" class="Wrapper__MembershipBody-sc-140yq7-0 dgBlAy">
            <div style="display: flex;color:white; flex-direction: column;">
                <a class="SocialButton__SocialLink-sc-7k5r2h-0 hGAcLm" href="googleLogin.do">
                <svg width="20" height="20" viewBox="0 0 256 262" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid">
                <path d="M255.878 133.451c0-10.734-.871-18.567-2.756-26.69H130.55v48.448h71.947c-1.45 12.04-9.283 30.172-26.69 42.356l-.244 1.622 38.755 30.023 2.685.268c24.659-22.774 38.875-56.282 38.875-96.027" fill="#4285F4"/>
                <path d="M130.55 261.1c35.248 0 64.839-11.605 86.453-31.622l-41.196-31.913c-11.024 7.688-25.82 13.055-45.257 13.055-34.523 0-63.824-22.773-74.269-54.25l-1.531.13-40.298 31.187-.527 1.465C35.393 231.798 79.49 261.1 130.55 261.1" fill="#34A853"/><path d="M56.281 156.37c-2.756-8.123-4.351-16.827-4.351-25.82 0-8.994 1.595-17.697 4.206-25.82l-.073-1.73L15.26 71.312l-1.335.635C5.077 89.644 0 109.517 0 130.55s5.077 40.905 13.925 58.602l42.356-32.782" fill="#FBBC05"/>
                <path d="M130.55 50.479c24.514 0 41.05 10.589 50.479 19.438l36.844-35.974C195.245 12.91 165.798 0 130.55 0 79.49 0 35.393 29.301 13.925 71.947l42.211 32.783c10.59-31.477 39.891-54.251 74.414-54.251" fill="#EB4335"/>
                </svg>
                                구글 아이디로 가입하기
                </a>
                <a class="SocialButton__SocialLink-sc-7k5r2h-0 jLeKfP" href="naverLogin.do">
                <svg class="naverIcon" width="1em" height="1em" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 18.31"><title>naverIcon</title>
                <path d="M20,19.15H13.33A0.34,0.34,0,0,1,13,19L7,10.22,6.84,10v9.15H0V0.85H6.68A0.32, 0.32,0,0,1,7,1l6,8.75a0.82,0.82,0,0,0,.19.22V0.86H20v18.3Z" transform="translate(0 -0.84)" fill="#fff"></path>
                </svg>네이버 아이디로 가입하기
                </a>
                <a class="SocialButton__SocialLink-sc-7k5r2h-0 jKakao" href="kakaoLogin.do">
                  <svg version="1.0" xmlns="http://www.w3.org/2000/svg" width="20.000000pt" height="20.000000pt" viewBox="0 0 27.000000 27.000000" preserveAspectRatio="xMidYMid meet">
                  <g transform="translate(0.000000,27.000000) scale(0.100000,-0.100000)" fill="#000000" stroke="none">
                  <path d="M76 199 c-30 -23 -35 -69 -10 -90 9 -7 14 -22 11 -36 -5 -27 0 -28 27 -8 11 8 30 15 42 15 34 0 74 37 74 70 0 36 -41 70 -85 70 -18 0 -44 -9 -59 -21z"/>
                  </g>
                  </svg>
                              카카오 아이디로 가입하기
                </a>
            </div>
            <div class="Divider-sc-1wyk970-0 uEieK"><span><span>또는</span></span></div>
            <form id="joinData" name="joinData" style="color:#757575" autocomplete="on" method='post' action='member_serviceAgreements.do' onload='joinformClear()'>
                <div class="SignUp__InputDiv-k5h4n5-0 VpHEi">
                    <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">이름</label>
                    <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq hcbae-member-joinwithEmail-check" id="checkName_Id"></label>
                    <input id="user_fullname" type="text" name="member_name" autocomplete="username" placeholder="사용하실 이름을 입력해주세요" required="" class="Input-sc-1x48dls-0 cbPtEV" value="" onKeyUp="checkName(this)">
                </div>
                <div class="SignUp__InputDiv-k5h4n5-0 VpHEi">
                    <label for="user_login" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">이메일 주소</label>
                    <label for="user_login" class="SignUp__InputLabel-k5h4n5-1 bpYHsq hcbae-member-joinwithEmail-check" id="checkEmail_Id"></label>
                    <input id="user_login" type="email" name="email" placeholder="이메일 주소를 입력해주세요" autocomplete="email" required="" class="Input-sc-1x48dls-0 cbPtEV" value="" onKeyUp="checkEmail(this)">
                    <input id="user_login_confirmation" type="email" name="member_email" autocomplete="email" required="" placeholder="이메일 주소를 확인합니다" class="Input-sc-1x48dls-0 cbPtEV" value=""><br>
                    <span class="SignUp__ErrorMessage-k5h4n5-3 gLiNzH"></span>
                </div>
                <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" style="margin-bottom: 10px;">
                    <label for="user_password" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">비밀번호</label>
                    <input id="user_password" type="password" required="" name="password" placeholder="비밀번호를 입력해주세요" autocomplete="new-password" autocapitalize="off" autocorrect="off" spellcheck="off" class="Input-sc-1x48dls-0 cbPtEV" value="">
                    <input id="user_password_confirmation" type="password" required="" name="member_password" autocapitalize="off" autocorrect="off" autocomplete="new-password" spellcheck="off" placeholder="비밀번호를 확인합니다" class="Input-sc-1x48dls-0 cbPtEV" value="">
                </div>
                <button type="button" class="Button-sc-1x93b2b-0 SignUp__SignUpButton-k5h4n5-2 cWylwi" onclick="checkJoin(); return false;">다음</button>
                <!-- <input type="button" class="Button-sc-1x93b2b-0 SignUp__SignUpButton-k5h4n5-2 cWylwi" value="다음" onclick="checkJoin()"/>  -->
                 
            </form>
            <div class="SignUp__LoginLinkWrapper-k5h4n5-4 hQGkMf">
                <p style="color:#757575;margin-bottom:0">이미 계정이 있으신가요?</p><a href="/login?redirection=%2F" style="color:#fc5230">기존 계정으로 로그인하기</a>
            </div>
        </div>
    </div>    

<!--텀블벅추가-->
    
    <!-- Footer Bottom Area -->
    <script type="text/javascript">
    var xmlHttpFooter = new XMLHttpRequest();
    xmlHttpFooter.open("GET", "creakok_footer.do", true); // true for asynchronous
    xmlHttpFooter.send();
    
    xmlHttpFooter.onreadystatechange = function() {
         if (xmlHttpFooter.readyState == 4 && xmlHttpFooter.status == 200) {
             document.getElementById("footer_div").innerHTML= xmlHttpFooter.responseText;
         }
    };
    </script>
    <div id="footer_div">
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
</body>

</html>