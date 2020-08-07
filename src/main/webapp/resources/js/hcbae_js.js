function joinformClear() {
    document.getElementById('joinData').reset();
}

function checkJoin(){
    if(document.getElementById('user_fullname').value==''){
        alert("이름을 입력해주세요.");
        return false;
    }
    
    if(document.getElementById('checkEmail_Id').outerText=="이미 존재합니다." ) {
        alert("이미 사용 중인 이름 입니다.");
        return false;
    }
    
    if(document.getElementById('user_login').value=='' || document.getElementById('user_login_confirmation').value==''){
        alert("이메일을 입력해주세요.");
        return false;
    }
    
    if( document.getElementById('checkEmail_Id').outerText == "이미 존재합니다." ) {
        alert("이미 가입한 이메일 주소 입니다.");
        return false;
    }
    
    if( document.getElementById('user_password').value =='' || document.getElementById('user_password_confirmation').value =='' ) {
        alert("비밀번호를 입력해주세요.");
        return false;
    }
    
    if( document.getElementById('user_password').value 
            != document.getElementById('user_password_confirmation').value ) {
        alert("두 비밀번호가 다릅니다.");
        return false;
    }
    
    joinData.submit();
}

function checkEmail(obj){
    let email = obj.value;
    let result = document.getElementById('checkEmail_Id');

    var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          console.log("email:"+this.responseText);
          if(email===''){
              result.innerHTML = ""; //입력한게 없으면 표시도 없다.
          } else {
              if(this.responseText === "exist") {
                  result.innerHTML = "이미 존재합니다."; 
              } else {
                  result.innerHTML = "사용가능합니다.";
              }
          }
        }
    };//end of onreadystatechange
    xhttp.open("GET", "member_readEmail.do?member_email="+email, true);
    xhttp.send();
}

function checkName(obj){
    let name = obj.value;
    let result = document.getElementById('checkName_Id');

    var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          //console.log("name:"+this.responseText);
          if(name===''){
              result.innerHTML = ""; //입력한게 없으면 표시도 없다.
          } else {
              if(this.responseText === "exist") {
                  result.innerHTML = "이미 존재합니다."; 
              } else {
                  result.innerHTML = "사용가능합니다.";
              }    
          }
        }
    };//end of onreadystatechange
    xhttp.open("GET", "member_readName.do?member_name="+name, true);
    xhttp.send();
}

function secessionPassword(member_email){
    if(document.getElementById('checkSecessionResult').innerHTML === "일치"){
        alert("탈퇴 되었습니다. 다시 만나요.");
        location.href="secessionMember.do?member_email="+member_email;
    } else {
        alert("탈퇴 할 수 없습니다.");
    }
}


function changePassword(member_email){
	if(document.getElementById('checkPasswordResult').innerHTML === "일치"
		&& document.getElementById('checkNewPasswordResult').innerHTML === "일치" ){
		alert("비밀번호를 변경합니다. 다시 로그인 해주세요.");
		let new_password = document.getElementById('newPasswordAgain').value;
		location.href="member_changePassword.do?member_email="+member_email+"&new_password="+new_password;
	} else {
		alert("비밀번호를 변경할 수 없습니다.");
	}
}

function checkPassword(member_email){
    let result = document.getElementById('checkPasswordResult');
    let temp_password = document.getElementById('nowPassword').value;
        
    var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          //console.log("pass:"+this.responseText);
          if(temp_password===''){
              result.innerHTML = ""; //입력한게 없으면 표시도 없다.
          } else {
              if(this.responseText === '0'){
                  result.innerHTML = "일치"; 
              } else {
                  result.innerHTML = "불일치";
              }
          }//end of if
        }
    };//end of onreadystatechange
    xhttp.open("GET", "member_readPassword.do?member_email="+member_email+"&member_password="+temp_password, true);
    xhttp.send();
}

function checkSecession(member_email){
    let result = document.getElementById('checkSecessionResult');
    let temp_password = document.getElementById('secessionPassword').value;
        
    var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          //console.log("pass:"+this.responseText);
          if(temp_password===''){
              result.innerHTML = ""; //입력한게 없으면 표시도 없다.
          } else {
              if(this.responseText === '0'){
                  result.innerHTML = "일치"; 
              } else {
                  result.innerHTML = "불일치";
              }
          }//end of if
        }
    };//end of onreadystatechange
    xhttp.open("GET", "member_readPassword.do?member_email="+member_email+"&member_password="+temp_password, true);
    xhttp.send();
}
  
function checkNewPassword(){
    let result = document.getElementById('checkNewPasswordResult');
    let temp_newPassword = document.getElementById('newPassword').value;
    let temp_newPasswordAgain = document.getElementById('newPasswordAgain').value;
  
    if(temp_newPasswordAgain===''){
        result.innerHTML = ""; //입력한게 없으면 표시도 없다.
    } else {
        if(temp_newPassword === temp_newPasswordAgain) { //새로운 비번 입력 두 개가 모두 같으면
            result.innerHTML = "일치"; 
        } else {
            result.innerHTML = "불일치"; 
        }
    }
}//end of checkNewPassword
  
  function changeButtonText(obj){
      var value = obj.value;
      //console.log("????:"+value);
      if(value=="수정") {
        obj.value="취소";
      }
      else {
        obj.value="수정";
        document.getElementById('nowPassword').value ="";
        document.getElementById('checkPasswordResult').innerHTML ="";
        document.getElementById('newPassword').value ="";
        document.getElementById('newPasswordAgain').value ="";
        document.getElementById('checkNewPasswordResult').innerHTML = "";
      }
    }//end of changeButtonText