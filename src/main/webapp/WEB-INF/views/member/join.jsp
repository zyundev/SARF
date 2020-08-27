<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Join</title>

<link rel="stylesheet" href="/resources/css/join.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<script>
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "localhost";

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/resources/address/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.addr.value = roadFullAddr;
}
</script>

<body>
	<div class="logo">
        <img src="/resources/images/logo.jpg" alt="로고" width="200px" onclick="location.href='/'">
    </div>
    <form onsubmit="return joinchk()" method="post" action="join" name="form">
        <div class="container">
            <div class="container_main">회원가입</div>
            <div class="container_id">
                <input class="container_id_input" type="text" name="id">
                <div class="container_id_div">아이디</div>
                <button type="button" class="idcheck">중복 확인</button>
            </div>
            <div class="container_pw">
                <input class="container_pw_input" type="password" name="pw">
                <div class="container_pw_div">비밀번호</div>
            </div>
            <div class="container_pwcheck">
                <input class="container_pwcheck_input" type="password">
                <div class="container_pwcheck_div">비밀번호 확인</div>
            </div>
            <div class="container_name">
                <input class="container_name_input" type="text" name="name">
                <div class="container_name_div">이름</div>
            </div>
            <div class="container_addr">
                <input class="container_addr_input" type="text" name="addr" onclick="goPopup()" readonly>
                <div class="container_addr_div">주소</div>
            </div>
            <div class="container_email">
                <input class="container_email_input" type="email" name="email">
                <div class="container_email_div">이메일</div>
            </div>
            <div class="container_phone">
                <input class="container_phone_input" type="text" name="phone">
                <div class="container_phone_div">전화번호</div>
            </div>
            <div class="container_join">
                <input class="container_join_input" type="submit" value="회원 가입">
            </div>
        </div>
    </form>
    <script src="/resources/js/join.js"></script>
    <script>
	$('.idcheck').on('click', function(){
		var url = "/member/idcheck?id=" + $('.container_id_input').val();
		
   		window.open(url, "idchk", "width=570,height=420, scrollbars=yes, resizable=yes");
	}) 
    </script>
</body>
</html>