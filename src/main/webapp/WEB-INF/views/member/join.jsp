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

<body>
	<div class="logo">
        <img src="/resources/images/logo.jpg" alt="로고" width="200px" onclick="location.href='/'">
    </div>
    <form onsubmit="return joinchk()" method="post" action="join">
        <div class="container">
            <div class="container_main">회원가입</div>
            <div class="container_id">
                <input class="container_id_input" type="text" name="id">
                <div class="container_id_div">아이디</div>
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
                <input class="container_addr_input" type="text" name="addr">
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
</body>
</html>