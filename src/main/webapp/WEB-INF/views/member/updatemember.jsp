<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>updatemember</title>
<link rel="stylesheet" href="/resources/css/updatemember.css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <div class="logo">
        <img src="/resources/images/logo.jpg" alt="로고" width="200px" onclick="location.href='/'">
    </div>
    <form onsubmit="return chk()" method="post" action="updatemember">
        <div class="container">
            <div class="container_main">회원 정보 수정</div>
            <div class="container_id">
                <input class="container_id_input" type="text" name="id" value="${member.getId()}" readonly>
                <div class="container_id_div">아이디</div>
            </div>
            <div class="container_pw">
                <input class="container_pw_input" type="password" name="pw">
                <div class="container_pw_div">변경할 비밀번호를 입력해주세요.</div>
            </div>
            <div class="container_pwcheck">
                <input class="container_pwcheck_input" type="password">
                <div class="container_pwcheck_div">비밀번호 확인</div>
            </div>
            <div class="container_name">
                <input class="container_name_input" type="text" name="name" value="${member.getName()}">
                <div class="container_name_div">이름</div>
            </div>
            <div class="container_addr">
                <input class="container_addr_input" type="text" name="addr" value="${member.getAddr()}">
                <div class="container_addr_div">주소</div>
            </div>
            <div class="container_email">
                <input class="container_email_input" type="email" name="email" value="${member.getEmail()}">
                <div class="container_email_div">이메일</div>
            </div>
            <div class="container_phone">
                <input class="container_phone_input" type="text" name="phone" value="${member.getPhone()}">
                <div class="container_phone_div">전화번호</div>
            </div>
            <div class="container_update">
                <input class="container_update_input" type="submit" value="정보 수정">
                <button class="container_delete_button" type="button" onclick="location.href='deletemember'">회원 탈퇴</button>
            </div>
        </div>
    </form>
    <script src="/resources/js/updatemember.js"></script>
</body>
</html>