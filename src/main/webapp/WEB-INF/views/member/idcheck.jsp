<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 확인</title>
</head>
<body>
	<c:choose>
		<c:when test="${idcheck == false }">
			<div>이미 사용중인 아이디입니다. 다른 아이디를 입력해 주세요.</div>
			<button type="button" onclick="popupcloseX()">닫기</button>
		</c:when>
		<c:when test="${idcheck == true }">
			<div>사용할 수 있는 아이디 입니다.</div>
			<button type="button" onclick="popupcloseY()">닫기</button>
		</c:when>
	</c:choose>
	<script>
		function popupcloseX(){
			opener.$('.idcheck').css('backgroundColor', '#4f9f4f');
			window.close();
		}
		function popupcloseY(){
			opener.$('.idcheck').css('backgroundColor', '#c0c0c0');
			window.close();
		}
	</script>
</body>
</html>