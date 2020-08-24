<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>상세 보기</title>
<link href="/resources/css/view.css" rel="stylesheet" type="text/css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$("#update_btn").on("click", function(){
				formObj.attr("action", "/n_board/updateView");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			// 삭제
			$("#delete_btn").on("click", function(){
				formObj.attr("action", "/n_board/delete");
				formObj.attr("method", "post");
				formObj.submit();
			})
			
			// 취소
			$("#list_btn").on("click", function(){
				
				location.href = "/n_board/notice";
			})
			
		})
</script>
	
<body>
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
				<div>
					제목: <label> ${read.subject} </label>
				</div>

				<!-- 닉네임, 작성시간 -->
				<div>
					닉네임: <label> ${read.name} </label>
				</div>

				<!-- 작성 시간 -->
				<div>
					작성 날짜:
					<fmt:formatDate value="${read.regdate}"
						pattern="yyyy-MM-dd HH:mm:ss" />

				</div>
				<br>


				<hr size="1" color="c0c0c0">
				<!-- 내용 -->
				<label>${read.content} </label> <br> <br> <br> <br>

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
</body>
</html>