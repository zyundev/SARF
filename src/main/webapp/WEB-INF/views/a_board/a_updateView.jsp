<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시판</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {

		$(".cancel_btn").on("click", function() {
			event.preventDefault();
			location.href = "/a_board/a_list";
		})
	})
</script>
<link rel="stylesheet" href="/resources/css/update.css" />
<body>
	<div class="base-layout">
		<div class="UpdateHeader">
			<h3>게시판 글쓰기</h3>
		</div>
		<nav>홈 - 글 작성</nav>
		<div class="UpdateContent">
			<form name="updateForm" role="form" method="post" action="/a_board/a_update">
				<div class="UpdateTitle">자유 게시판</div>
				<input type="hidden" name="bno" value="${update.bno}" readonly="readonly" />
				<div>
					<input type="text" class="textarea_input" placeholder="제목을 입력하세요." id="subject" name="subject" value="${update.subject}" style="height: 40px;"/>
				</div>
				<div style="height: 400px; padding: 5px 13px 5px 13px; border: 1px solid #ebecef;">
					<input type="text" placeholder="내용을 입력하세요." id="content" name="content" value="${update.content}" style="font-size:15px; "/>
				</div>
				<div>
					<label for="name">작성자 </label><input type="text" id="name" name="name" value="${update.name}" readonly="readonly" />
				</div>
				<div>
					<label for="regdate">작성날짜 </label><fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd" />
				</div>
				<div style="border: 1px solid black;">
				</div>
				
				<div>
					<button type="submit" class="update_btn BaseButton">저장</button>
					<button type="submit" class="cancel_btn BaseButton">취소</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>