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
          console.log("pass:"+this.responseText);
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