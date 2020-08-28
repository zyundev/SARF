<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 세션값 확인 --%>
<%@page import="java.util.Enumeration"%>
<% 
Enumeration se = session.getAttributeNames();

while(se.hasMoreElements()){
	String getse = se.nextElement()+"";
	System.out.println("@@@@@@@ session : "+getse+" : "+session.getAttribute(getse));
}
%>
<%-- 세션값 확인 끝 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>글쓰기</title>
<style>
* {
	border: 0;
	padding: 0;
}

div {
	display: block;
}

.base-layout {
	width: 960px;
	margin: 0 auto;
}

.WritingHeader {
	position: relative;
	margin-top: 20px;
	border-bottom: 1px solid #323232;
}

h3 {
	display: block;
	font-size: 1.5em;
	font-weight: bold;
}

.WritingContent {
	position: relative;
	padding-top: 12px;
	padding-bottom: 50px;
}

.WritingTitle {
	padding: 5px 13px 5px 13px;
	border: 1px solid #ebecef;
}

.textarea_input {
	display: block;
	width: 100%;
	min-height: 40px;
	padding: 11px 12px 10px;
	border: 1px solid #ebecef;
	box-sizing: border-box;
	overflow: hidden;
	resize: none;
	word-break: break-all;
	font-size: 15px;
	letter-spacing: -.23px;
	line-height: 17px;
	outline: none;
	border-bottom: 1px solid black;
}

.BaseButton {
	display: inline-block;
	margin-top: 5px;
	font-weight: 700;
	float: right;
	width: 44px;
	height: 39px;
	background: #fff;
	font-weight: bold;
	border: 1px solid #4f9f4f;
	border-radius: 6px;
	cursor: pointer;
	margin-left: 5px;
	box-shadow: inset 0 0 0 1px #4f9f4f!important;
	transition: background-color .3s,color .3s,background .3s,box-shadow .1s ease-in-out; 
}

.BaseButton:hover{
	color:#ffffff;
	background-color:#4f9f4f;
}
</style>
</head>
<body>
	<div class="base-layout">
		<div class="WritingHeader">
			<h3>명소게시판 글쓰기</h3>
		</div>
		<div class="WritingContent">
			<form name="writeForm" method="post" action="/attraction/write" enctype="multipart/form-data"> 
				<!-- 구역 구분 -->
				<div class="WritingTitle">명소 게시판
					<select name="key">
						<option>지역을 선택해주세요.</option>
						<option value="EAST">강동</option>
						<option value="WEST">강서</option>
						<option value="SOUTH">강남</option>
						<option value="NORTH">강북</option>
					</select>
				</div>
				<!-- 제목 -->
				<div>
					<textarea class="textarea_input" placeholder="제목을 입력해 주세요." name="subject" style="height: 40px;"></textarea>
				</div>
				<!-- 내용 -->
				<div style="height: 400px; padding: 5px 13px 5px 13px; border: 1px solid #ebecef;">
					<textarea placeholder="내용을 입력해 주세요." name="content" style="resize: none; font-size: 15px;"></textarea>
				</div>
				<!-- 더 알아보기  -->
				<div>
					<input type="text" name="link" placeholder="더 알아보기 링크" value="http://">
				</div>
				<!-- 이미지 업로드 -->
				<input type="file" name="file">
				<input type="file" name="file2">
				<input type="file" name="file3">
				<div style="border: 1px solid black;">
					<button type="submit" class="BaseButton">등록</button>
					<button type="button" class="BaseButton" onclick="location.href='/attraction/list'">취소</button> 
				</div>
			</form>
		</div>
	</div>
</body>
</html>