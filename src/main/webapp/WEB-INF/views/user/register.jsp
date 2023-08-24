<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
    // 주소 검색 창 띄우기
    $("#searchAddress").click(function() {
        new daum.Postcode({
            oncomplete: function(data) {
                $("#address").val(data.roadAddress);
                $("#detailAddress").focus();
            }
        }).open();
    });
});
</script>
<style>
.navbar {
        border-top: 3.5px solid #000000;
        height: 70px;
        line-height: 70px;
    }

.navbar-sub {
        border-bottom: 1px solid #e0e0e0;
    }
    
.nav-link {
    	font-weight: 600; 
    	color: black;
    }

.navbar-brand {
        font-size: 28px;
        font-weight: bold;
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
    }

.nav-item i {
        font-size: 18px;
        vertical-align: middle;
        margin-left: 6px;
        margin-right: 6px;
    }

/* 주소 검색 버튼 스타일 */
#searchAddress {
    background-color: #007bff;
    color: white;
    border: none;
    padding: 6px 12px;
    border-radius: 3px;
    cursor: pointer;
}

/* 컨테이너 스타일 */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    max-width: 400px;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    background-color: white;
}

.form-group {
    margin-bottom: 20px;
}

#addressGroup {
    display: flex;
    align-items: center;
}

#address {
    flex: 1;
    margin-right: 10px;
}

#detailAddress {
    flex: 1;
}

.login-sub {
    display: flex;
    justify-content: space-between;
    margin-top: 15px;
}

/* 회원가입 하단 서브폼 */

.register-sub {
    display: flex;
    justify-content: space-between;
    margin-top: 15px;
}

.register-sub-item {
    list-style: none;
}

.register-link {
    color: #777777; /* 회색으로 변경 */
    text-decoration: none;
    font-size: 14px;
}

.register-sub-divider {
	color: #777777;
    margin: 0 10px;
    font-weight: bold;
}

</style>
</head>
<body>
    <nav class="navbar navbar-expand-lg style="background-color: #ffffff;">
		  <div class="container-fluid">
		    <h1><a class="navbar-brand mx-auto" href="/shop/">Team3Web</a></h1>
		
		    <ul class="navbar-nav ml-auto">
		      <li class="nav-item">
		      	<i class="bi bi-search"></i>
		      </li>
		      <li class="nav-item px-lg-2">
		        <i class="bi bi-person-circle"></i>
		      </li>
		      <li class="nav-item">
		        <i class="bi bi-bag"></i>
		      </li>
		    </ul>
		
		  </div>
		</nav>
			<nav class="navbar-sub">
			<ul class="nav justify-content-center">
			  <li class="nav-sub-item">
			    <a class="nav-link" href="#">남성</a>
			  </li>
			  <li class="nav-sub-item">
			    <a class="nav-link" href="#">여성</a>
			  </li>
			  <li class="nav-sub-item">
			    <a class="nav-link" href="#">악세사리</a>
			  </li>
			  <li class="nav-sub-item">
			    <a class="nav-link" href="#">고객센터</a>
			  </li>
			</ul>
		</nav>
    <div class="container">
        <div class="form-container">
            <h1 class="text-center">회원가입</h1>
            <form>
                <div class="form-group">
                    <label for="id">아이디:</label>
                    <input type="text" id="id" name="id" class="form-control" placeholder="ex)Team3Web@Team3Web.co.kr" required>
                </div>
                <div class="form-group">
                    <label for="password">비밀번호:</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="영문,숫자,특수문자 조합 8-16자" required>
                </div>
               	<div class="form-group">
               	<label for="name">이름:</label>
        			<input type="text" id="name" required><br>
				</div>
				<div class="form-group">
        		<label for="age">나이:</label>
        			<input type="number" id="age" required><br>
				</div>
				<div class="form-group">
        		<label>성별:</label>
        			<input type="radio" id="male" name="gender" value="남자" required>
        		<label for="male">남자</label>
        			<input type="radio" id="female" name="gender" value="여자" required>
        		<label for="female">여자</label><br>
				</div>
				<div class="form-group">
        		<label for="birthdate">생년월일:</label>
        			<input type="date" id="birthdate" required><br>
				</div>
				<div class="form-group">
        		<label for="email">이메일:</label>
        			<input type="email" id="email" required><br>
               	</div>
                <div class="form-group">
                    <label for="addressGroup">주소:</label>
                    <div id="addressGroup">
                        <input type="text" id="address" name="address" class="form-control" placeholder="주소를 검색하세요" required readonly>
                        <button type="button" id="searchAddress">주소 검색</button>
                    </div>
                </div>
                <div class="form-group">
                    <label for="detailAddress">상세 주소:</label>
                    <input type="text" id="detailAddress" name="detailAddress" class="form-control" placeholder="상세 주소를 입력하세요" required>
                </div>
                <button type="submit" class="btn btn-primary">회원가입</button>
                <ul class="register-sub">
                    <li class="register-sub-item">
                        <a class="register-link" href="login">로그인</a>
                    </li>
                    <li class="register-sub-item">
                        <span class="register-sub-divider">|</span>
                    </li>
                    <li class="register-sub-item">
                        <a class="register-link" href="#">아이디 찾기</a>
                    </li>
                    <li class="register-sub-item">
                        <span class="register-sub-divider">|</span>
                    </li>
                    <li class="register-sub-item">
                        <a class="register-link" href="#">비밀번호 찾기</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</body>
</html>
