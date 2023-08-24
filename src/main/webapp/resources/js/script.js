console.log("script.js 파일이 로드되었습니다.");

function loginEvent() {
		 	var userID = document.getElementById("id").value;
		    var userPW = document.getElementById("pw").value;
	        alert("=== 이것은 테스트라네 ===\n아이디: " + userID + "\n비밀번호: " + userPW);
	        window.location.href = "/index";
	 }


