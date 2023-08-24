console.log("user.js 파일이 로드되었습니다.");

// 로그인 아이콘 클릭 시 로그인 페이지로 이동 -> 스크립트 에러로 임시로 주석처리
document.getElementById('loginIcon').addEventListener('click', function() {
    window.location.href = '/shop/login';
});