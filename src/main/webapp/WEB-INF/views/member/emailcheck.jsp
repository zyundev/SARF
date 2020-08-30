<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 확인</title>
<style>
.div_email{
    margin-left: 22px;
    margin-top: 10px;
}
.close_btn {
	margin-top: 15px;
	margin-left: 100px;
	display: inline-block;
	font-weight: 700;
	width: 44px;
	height: 39px;
	background: #fff;
	font-weight: bold;
	border: 1px solid #4f9f4f;
	border-radius: 6px;
	cursor: pointer;
	box-shadow: inset 0 0 0 1px #4f9f4f!important;
	transition: background-color .3s,color .3s,background .3s,box-shadow .1s ease-in-out; 
}

.close_btn:hover{
	color:#ffffff;
	background-color:#4f9f4f;
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${emailcheck == false }">
			<div class="div_email"><font color="#ff4444"><b>이미 사용중인 이메일</b></font>입니다. <br>다른 아이디를 입력해 주세요.</div>
			<button class="close_btn" type="button" onclick="popupcloseX()">닫기</button>
		</c:when>
		<c:when test="${emailcheck == true }">
			<div class="div_email"><font color="#4f9f4f"><b>사용할 수 있는 이메일</b></font>입니다.</div>
			<button class="close_btn" type="button" onclick="popupcloseY()">닫기</button>
		</c:when>
	</c:choose>
	<script>
		function popupcloseX(){
			opener.$('.emailcheck').css('backgroundColor', '#4f9f4f');
			window.close();
		}
		function popupcloseY(){
			opener.$('.emailcheck').css('backgroundColor', '#c0c0c0');
			window.close();
		}
	</script>
</body>
</html>