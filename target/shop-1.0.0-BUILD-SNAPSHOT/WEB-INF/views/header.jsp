<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
@keyframes slide-down {
    0% {
        transform: translateY(-100%);
        opacity: 0;
    }
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}

.slide-down-animation {
    animation: slide-down 0.3s ease-out forwards;
}
</style>
</head>
<body>
	<div>
		<nav class="navbar">
			<h1>
				<a class="navbar-brand mx-auto" href="<%=request.getContextPath()%>/">Team3Web</a>
			</h1>
			<ul class="navbar-nav ms-auto me-2 flex-row align-items-center">
				<li class="nav-item">
					<button class="icon-button" id="searchIcon">
						<i class="bi bi-search"></i>
					</button>
				</li>
				<li class="nav-item px-lg-2">
					<a href="<%=request.getContextPath()%>/login">
						<button class="icon-button" id="loginIcon">
							<i class="bi bi-person-circle"></i>
						</button>
					</a>
				</li>
				<li class="nav-item"><button class="icon-button"
					id="cartButton"> <i class="bi bi-bag"></i>
				</button></li>
			</ul>
		</nav>
	</div>

	<div>
		<nav class="navbar-under">
			<ul class="nav nav-underline justify-content-center mb-1">
				<li class="nav-item"><a class="nav-link" href="#">남성</a></li>
				<li class="nav-item"><a class="nav-link" href="#">여성</a></li>
				<li class="nav-item"><a class="nav-link" href="#">악세사리</a></li>
				<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
				<li class="nav-item about-item"><a class="nav-link" href="#">About</a></li>
			</ul>
		</nav>
	</div>
	
	<script>
	document.getElementById('searchIcon').addEventListener('click', function() {
	    // 검색창이 이미 있을 경우 삭제
	    let searchForm = document.getElementById('dynamicSearchForm');
	    if (searchForm) {
	        searchForm.remove();
	        return;
	    }

	    // 검색창 생성
	    searchForm = document.createElement('form');
	    searchForm.id = 'dynamicSearchForm';
	    searchForm.className = 'slide-down-animation';
	    searchForm.method = 'GET';
	    searchForm.action = '/search';
	    searchForm.style.zIndex = '11';
	    searchForm.innerHTML = `
	    	<input class="form-control mb-2" list="datalistOptions" id="exampleDataList" placeholder="Type to search...">
	    	<datalist id="datalistOptions">
	    	  <option value="추후에">
	    	  <option value="동적으로">
	    	  <option value="관련 검색어">
	    	  <option value="나올">
	    	  <option value="예정">
	    	</datalist>
	    `;

	    // 검색창을 nav-underline 바로 아래에 삽입
	    document.querySelector('.nav.nav-underline').after(searchForm);
	    document.getElementById('overlay').style.display = 'block';
	});
	
	//검색창 제출 시 처리
	//document.getElementById('dynamicSearchForm').addEventListener('submit', function(e) {
	  // 여기서는 이벤트 기본 동작을 막지 않습니다. 폼은 정상적으로 제출됩니다.
	  // 백엔드 로직이 구현되면, 서버에서 해당 검색어로 Oracle DB를 조회하고 결과를 반환해야 합니다.
	  // TODO: 백엔드 로직 구현 예정
	//});
	</script>
</body>
</html>