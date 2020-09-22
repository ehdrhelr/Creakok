<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
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
    
    <style>
    .hcbae_label {
      background-color: rgb(250, 100, 98);
      padding: 5px 10px;
      border-radius: 5px;
      border: 1px ridge black;
      font-size: 0.8rem;
      font-weight: normal;
      height: auto;
      color: white;
    }

    .hcbae_label:hover {
      background-color: rgb(250, 100, 98);
      color: black;
    }

    .hcbae_label:active {
      background-color: rgb(250, 100, 98);
      color: black;
    }
    
    label{
        color: black;
    }
  </style>
  
</head>

<body>

    <div class="Membership__MembershipWrapper-o1o1he-0 irjBzn">
      <div style="width:750px;" class="Wrapper__MembershipBody-sc-140yq7-0 dgBlAy">
        <form id="creator_joinData" name="creator_joinData" style="color:#757575" method='post' enctype="multipart/form-data" action='writeCreatorJoinData.do'>
          <input type="hidden" name="member_email" value="${member.member_email}">
          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" style="width:200px;">
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">크리에이터 이메일</label><br/>
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">${member.member_email}</label>
              
          </div>
        
          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" style="width:200px;">
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">크리에이터 이름</label>
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq hcbae-member-joinwithEmail-check" id="checkName_Id"></label>
              <input id="user_fullname" type="text" name="creator_name" placeholder="사용할 이름을 입력해주세요." class="Input-sc-1x48dls-0 cbPtEV" value="" onKeyUp="checkName(this)">
          </div>
          
          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">크리에이터 소개글</label>
              <input id="user_fullname" type="text" name="creator_profile_content" placeholder="간단하게 자기 소개를 해주세요." class="Input-sc-1x48dls-0 cbPtEV" value="">
          </div>
          
          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">크리에이터 대표사진</label><br/>
              <label for="profile_photo" class="hcbae_label">대표사진 업로드 (PNG, JPG)</label>
              <input type="file" id="profile_photo" name="creator_pics" accept=".jpg, .jpeg, .png" style="display: none;">
              <div class="profile_preview">
                <p>업로드 된 대표사진이 없습니다.</p>
              </div>
          </div>

          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">크리에이터 배너사진</label><br/>
              <label for="banner_photo" class="hcbae_label">배너사진 업로드 (PNG, JPG)</label>
              <input type="file" id="banner_photo" name="creator_pics" accept=".jpg, .jpeg, .png" style="display: none;">
              <div class="banner_preview">
                <p>업로드 된 배너사진이 없습니다.</p>
              </div>
          </div>

          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">인스타그램 링크</label>
              <input id="user_fullname" type="text" name="creator_link_instagram" placeholder="사용하는 인스타그램이 있다면, 링크를 입력해주세요." class="Input-sc-1x48dls-0 cbPtEV" value="">
          </div>

          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">유튜브 링크</label>
              <input id="user_fullname" type="text" name="creator_link_youtube" placeholder="운영하는 유튜브가 있다면, 링크를 입력해주세요." class="Input-sc-1x48dls-0 cbPtEV" value="">
          </div>

          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">유튜브 대표 컨텐츠 1</label>
              <input id="user_fullname" type="text" name="creator_main_content" placeholder="크리에이터가 만든 유튜브 대표 컨텐츠 링크를 입력해주세요." class="Input-sc-1x48dls-0 cbPtEV" value="">
          </div>

          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">유튜브 대표 컨텐츠 2</label>
              <input id="user_fullname" type="text" name="" placeholder="크리에이터가 만든 유튜브 대표 컨텐츠 링크를 입력해주세요." class="Input-sc-1x48dls-0 cbPtEV" value="">
          </div>
          
          <div class="SignUp__InputDiv-k5h4n5-0 VpHEi" >
              <label for="user_fullname" class="SignUp__InputLabel-k5h4n5-1 bpYHsq">유튜브 대표 컨텐츠 3</label>
              <input id="user_fullname" type="text" name="" placeholder="크리에이터가 만든 유튜브 대표 컨텐츠 링크를 입력해주세요." class="Input-sc-1x48dls-0 cbPtEV" value="">
          </div>


          <button type="button" class="Button-sc-1x93b2b-0 SignUp__SignUpButton-k5h4n5-2 cWylwi" onclick="checkCreatorJoin();">신청하기</button>
        </form>
      </div>
  </div>
  
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
  <script src="js/hcbae_js.js"></script>
  
  <script type="text/javascript">
  
  function checkCreatorJoin(){
      if(document.getElementById('checkName_Id').outerText=="이미 존재합니다."){
          alert("이미 사용 중인 이름 입니다.");
          return false;
      } else {
          alert("크리에이터로 신청합니다.");
          creator_joinData.submit();
      }
  }
  </script>
  
  <script>
  const fileTypes = [
    "image/apng",
    "image/bmp",
    "image/gif",
    "image/jpeg",
    "image/pjpeg",
    "image/png",
    "image/svg+xml",
    "image/tiff",
    "image/webp",
    "image/x-icon"
  ];

  function validFileType(file) {
    return fileTypes.includes(file.type);
  }
  
  const input_profile = document.querySelector('#profile_photo');
  const profile_preview = document.querySelector('.profile_preview');
  input_profile.addEventListener('change', updateProfileImageDisplay);
  
  function updateProfileImageDisplay() {
    while(profile_preview.firstChild) {
        profile_preview.removeChild(profile_preview.firstChild);
    }
    const curFiles = input_profile.files;
    if(curFiles.length === 0) {
      const para = document.createElement('p');
      para.textContent = '업로드 된 대표사진이 없습니다.';
      profile_preview.appendChild(para);
    } else {
      const list = document.createElement('ol');
      profile_preview.appendChild(list);

      for(const file of curFiles) {
        const listItem = document.createElement('li');
        const para = document.createElement('p');

        if(validFileType(file)) {
          para.textContent = '위에 표시된 사진으로 등록됩니다.';
          const image = document.createElement('img');
          image.src = URL.createObjectURL(file);

          listItem.appendChild(image);
          listItem.appendChild(para);
        } else {
          para.textContent = '업로드 형식에 맞지 않은 파일입니다.';
          listItem.appendChild(para);
        }

        list.appendChild(listItem);
      }
    }
  }
  
  const input_banner = document.querySelector('#banner_photo');
  const banner_preview = document.querySelector('.banner_preview');
  input_banner.addEventListener('change', updateBannermageDisplay);
  
  function updateBannermageDisplay() {
    while(banner_preview.firstChild) {
        banner_preview.removeChild(banner_preview.firstChild);
    }
    const curFiles = input_banner.files;
    if(curFiles.length === 0) {
      const para = document.createElement('p');
      para.textContent = '업로드 된 대표사진이 없습니다.';
      banner_preview.appendChild(para);
    } else {
      const list = document.createElement('ol');
      banner_preview.appendChild(list);

      for(const file of curFiles) {
        const listItem = document.createElement('li');
        const para = document.createElement('p');

        if(validFileType(file)) {
          para.textContent = '위에 표시된 사진으로 등록됩니다.';
          const image = document.createElement('img');
          image.src = URL.createObjectURL(file);

          listItem.appendChild(image);
          listItem.appendChild(para);
        } else {
          para.textContent = '업로드 형식에 맞지 않은 파일입니다.';
          listItem.appendChild(para);
        }

        list.appendChild(listItem);
      }
    }
  }
  </script>
  
</body>
</html>