<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>게시판 수정</title>
<link rel="stylesheet" href="/resources/css/view.css"/>
</head>
<body>

<form name="modifyForm" role="form" method="post" action="/board/modify">

<div class="view_list">

  <div class="view_content">
  <!-- 게시판이름 -->
	<div class="title"><b>XXX 게시판</b></div>
	<!-- 제목 -->
	<div><b>제목 : </b><input type="text" id="subject" name="subject" value="${modify.subject}"></div>
	<!-- 닉네임, 작성시간 -->
	<div>닉네임 : <label>${modify.name}</label></div>
  	<!-- 작성 시간 -->
  	<div>작성 시간 : <fmt:formatDate value="${modify.regdate}" pattern="yyyy-MM-dd" /></div>
	<hr size="1" color="c0c0c0">
	<!-- 내용 -->
	<input type="text" id="content" name="content" value="${modify.content}""/>
   <hr size="1" color="c0c0c0">
 
 </div>
  <div class="top_btn" style=" padding-bottom: 13px">
    	<div class="right_area">
    	<!-- 수정 -->
    	<button type="submit" class='BaseButton'>등록</button>
		<!-- 삭제 -->
		<button type="button" class='BaseButton' onclick="location.href='history.go(-1)'">취소</button>
   		</div>
  </div>
</div>
</form>

</body>
</html>