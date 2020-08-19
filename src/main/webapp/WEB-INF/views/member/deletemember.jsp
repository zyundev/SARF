<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
 
<!DOCTYPE html> 
<html>

<head>
    <meta charset="utf-8">
    <title>Login</title>
    <style>
    input {
    outline: none;
}

.logo {
    text-align: center;
    margin-top: 15px;
    cursor:pointer;
}

input+div {
    position: absolute;
    color: #c0c0c0;
    transition-property: font-size, bottom;
    transition-duration: 0.5s;
    pointer-events: none;
}

.container {
    position: absolute;
    width: 500px;
    height: 500px;
    left: 50%;
    top: 50%;
    margin-top: -250px;
    margin-left: -250px;
}

.container_main {
    height: 20%;
    font-size: 30px;
}

.container_id {
    margin-top: 16px;
    height: 10%;
}

.container_pw {
    margin-top: 48px;
    height: 10%;
}

.container_delete {
    height: 30%;
    text-align: center;
}

.container_id_input, .container_pw_input {
    width: 100%;
    display: block;
    border: none;
    border-bottom: 1px solid #c0c0c0;
    font-size: 20px;
}

.container_delete input {
    background: #ff3333;
    border: solid 1px #f00;
    border-radius: 22px;
    color: #fff;
    cursor: pointer;
    font-size: 13px;
    min-width: 120px;
    padding: 11px 25px 12px 25px;
    text-align: center;
    margin-left: 25px;
}

.container_id_div {
    bottom: 392px;
    left: 3px;
    font-size: 10px;
}

.container_pw_div {
    bottom: 264px;
    left: 3px;
}
    
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
	<c:if test="${msg == false}">
		<script>alert('비밀번호가 맞지 않습니다.');</script>
	</c:if>
    <div class="logo">
        <img src="/resources/images/logo.jpg" alt="로고" width="200px" onclick="location.href='/'">
    </div>
    <form action="deletemember" method="post">
		<div class="container">
	        <div class="container_main">회원 탈퇴</div>
	        <div class="container_id">
	            <input class="container_id_input" type="text" name="id" value="${member.getId()}" readonly>
	            <div class="container_id_div">아이디</div>
	        </div>
	        <div class="container_pw">
	            <input class="container_pw_input" type="password" name="pw">
	            <div class="container_pw_div">비밀번호</div>
	        </div>

	        <div class="container_delete">
	            <input type="submit" value="회원 탈퇴">
	        </div>
	    </div>
    </form>
    <script>
    var pw_div = $('.container_pw_div');
    var pw_input = $('.container_pw_input');

    pw_input.on({
        focus: function() {
            pw_div.css({
                'fontSize': '10px',
                'bottom': '294px'
            });
            pw_input.css('borderBottom', '2px solid #4f9f4f');
        },
        blur: function() {
            if (pw_input.val() == "") {
                pw_div.css({
                    'fontSize': '16px',
                    'bottom': '264px'
                });
                pw_input.css('borderBottom', '1px solid #c0c0c0');
            }
        }
    });
    </script>
</body>

</html>