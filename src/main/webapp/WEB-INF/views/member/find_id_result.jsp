<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style>
.div_id{
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
		<c:when test="${find_id_chk == false }">
			<div class="div_id"><font color="#ff4444"><b>일치하는 아이디가 없습니다.</b></font></div>
			<button class="close_btn" type="button" onclick="window.close();">닫기</button>
		</c:when>
		<c:when test="${find_id_chk == true }">
			<div class="div_id">${find_id.getName()}님의 아이디는 <font color="#4f9f4f"><b>${find_id.getId()}</b></font>입니다.</div>
			<button class="close_btn" type="button" onclick="window.close();">닫기</button>
		</c:when>
	</c:choose>
</body>
</html>