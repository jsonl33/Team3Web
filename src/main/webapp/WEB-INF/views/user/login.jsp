<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team3Web</title>
		<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script>
	 function loginEvent() {
		 	var userID = document.getElementById("id").value;
		    var userPW = document.getElementById("pw").value;
	        alert("=== 이것은 테스트라네 ===\n아이디: " + userID + "\n비밀번호: " + userPW);
	        window.location.href = "/index";
	 }
    </script>
<style>
/* 로그인 폼을 감싸는 컨테이너 */
.login-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
    max-width: 400px; /* 최대 너비 설정 */
    margin: 100px auto 0; /* 상단 여백 추가 */
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
    background-color: white; /* 배경색 추가 */
}
/* 로그인 폼 내부 요소들의 스타일 */
.login-form {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.login-form label {
    font-size: 16px;
    font-weight: bold;
}

.input-group input {
    padding: 10px;
    width: 100%;
    border: 1px solid #ccc;
    border-radius: 3px;
    font-size: 14px;
}


.login-form button {
    margin-top: 20px;
    padding: 12px 24px;
    font-size: 16px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.login-form p {
    margin-top: 10px;
    font-size: 14px;
}

/* 로그인 하위 링크 스타일 */
.login-sub {
    display: flex;
    justify-content: space-between;
    margin-top: 15px;
}

.login-sub-item {
    list-style: none;
}

.login-link {
    color: #777777; /* 회색으로 변경 */
    text-decoration: none;
    font-size: 14px;
}

.login-sub-divider {
	color: #777777;
    margin: 0 10px;
    font-weight: bold;
}

/* 입력 칸과 레이블을 묶는 그룹 스타일 */
.input-group {
	display: flex;
	flex-direction: row;
	align-items: center;
	margin-bottom: 10px;
}

.input-group label {
	margin-right: 10px;
}

.input-group input {
	padding: 5px;
}

.login-form button {
	margin-top: 10px;
	padding: 10px 20px;
	font-size: 16px;
	/* 로그인 버튼을 가운데 정렬 */
	display: block;
	margin: 0 auto;
	/* 로그인 버튼 테두리 제거 */
	border: none;
}

/* 하나의 큰 입력 칸 스타일 */
.large-input {
	padding: 5px;
	width: 300px; /* 큰 입력 칸의 너비 조절 */
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="login-container">
		<h1>로그인</h1>
		 <form action="<%=request.getContextPath()%>/login" method="post" onsubmit="loginEvent();">
            <!-- 로그인 폼 내용 -->
                <div class="input-group">
                    <label for="id">아이디:</label> 
                    <input type="text" id="id" name="id" placeholder="아이디를 입력하거라" required>
                </div>
                <div class="input-group">
                    <label for="pw">비밀번호:</label> 
                    <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하거라" required>
                </div>
                <button type="submit">로그인</button>
                <ul class="login-sub">
                	<li class="login-sub-item">
                		<a class="login-link" href="register">회원가입</a>
                	</li>
                	<li class="login-sub-item">
                    	<span class="login-sub-divider">|</span>
                	</li>
                	<li class="login-sub-item">
                		<a class="login-link" href="#">아이디 찾기</a>
                	</li>
                	<li class="login-sub-item">
                    	<span class="login-sub-divider">|</span>
                	</li>
                	<li class="login-sub-item">
                		<a class="login-link" href="#">비밀번호 찾기</a>
                	</li>
                </ul>
        </form>
	</div>
	
	<!-- Bootstrap JS and Popper.js -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
	<script src="/shop/resources/js/script.js"></script>
</body>
</html>