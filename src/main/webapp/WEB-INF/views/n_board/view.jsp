<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>상세 보기</title>
<link href="/resources/css/notice.css" rel="stylesheet" type="text/css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
	header {
		padding-bottom: 30px;
	}
</style>
</head>

<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$("#update_btn").on("click", function(){
				if(${logincheck} == false){
					alert('로그인해주세요.');
					location.href='/member/login';
				}
				if("${member.getId()}" != "${read.getName()}"){
					alert('다른사용자의 글을 수정할 수 없습니다.');
					return false;
				}
				formObj.attr("action", "/n_board/updateView");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			// 삭제
			$("#delete_btn").on("click", function(){
				if(${logincheck} == false){
					alert('로그인해주세요.');
					location.href='/member/login';
				}
				if("${member.getId()}" != "${read.getName()}"){
					alert('다른사용자의 글을 삭제할 수 없습니다.');
					return false;
				}
				var chck = confirm('삭제하시겠습니까?');
				if(chck){
					formObj.attr("action", "/n_board/delete");
					formObj.attr("method", "post");
					formObj.submit();
				}
			})
			
			// 취소
			$("#list_btn").on("click", function(){
				
				location.href = "/n_board/notice";
			})
			
		})
</script>
	
<body>

<header>
	<%@ include file="../h_list/nv_head.jsp" %>
</header>

<section id="container">
	<div class="view_list">
			<div class="view_content">
				<!-- 게시판이름 -->
				<div>
					<b>공지 사항</b>
				</div>

				<!-- 번호 -->
				<form name="readForm" role="form" method="post">
					<input type="hidden" id="bno" name="bno" value="${read.bno}" />
				</form>

				<!-- 제목 -->
				<div class="title">
					 <label> ${read.subject} </label>
				</div>

				<!-- 닉네임, 작성시간 -->
				<div class="nametag">
					<label> ${read.name} </label>
				</div>

				<!-- 작성 시간 -->
				<div class="sysdate">
					<fmt:formatDate value="${read.regdate}"
						pattern="yyyy-MM-dd HH:mm:ss" />

				</div>

				<!-- 내용 -->
				 <div style="margin-top: 5px; ">${read.content} </div> <br> <br> <br> <br> <br>

				<br>
			</div>
			<div class="top_btn" style="padding-bottom: 13px">
				<div class="left_area">
					
					<!-- 					<a class="basebutton skin size">이전글</a>
		
				<a class="basebutton skin size">다음글</a> -->

					<!-- 목록 -->
					<button type="submit" class="basebutton skin size" id="list_btn">목록</button>
				</div>
				
				<c:if test="${member.id == 'admin'}">
				<div class="right_area">
					<!-- 수정 -->
					<button type="submit" class="basebutton skin size" id="update_btn">수정</button>
					<!-- 삭제 -->
					<button type="submit" class="basebutton skin size" id="delete_btn">삭제</button>
				</div>
				</c:if>
			</div>

		</div>
</section>

<script>
	window.onload = function() {
		setTimeout (function () {
			scrollTo(0,0);
		},100);
	}
	</script>
</body>
</html>