<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>댓글 수정</title>
<link href="/resources/css/replyupdate.css" rel="stylesheet"
	type="text/css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var formObj = $("form[name='updateForm']");
		
		$(".cancel_btn").on("click", function() {
			event.preventDefault();
			if (confirm("수정을 취소하시겠습니까?") == true) {
				history.go(-1);
			}
		})
	})

</script>
</head>

<body>
	<div class="view_list">
		<div class="view_content">
			<div class="comment_box">
			<!-- 댓글 입력창-->
			<p style="float: left; margin-top: 3px; margin-right: 12px; font-size: 17px;">댓글 수정</p>
			<form name="updateForm" role="form" method="post" action="/v_board/replyUpdate">
				<input type="hidden" name="bno" value="${replyUpdate.bno}"/>
				<input type="hidden" id="rno" name="rno" value="${replyUpdate.rno}" />
				<!-- 
				<input type="hidden" id="page" name="page" value="${scri.page}"> 
				<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
				<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
				<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
				 -->
				<textarea id="content" class="cmt_write_box" name="content">${replyUpdate.content}</textarea>
				<div>
					<button type="button" class="cancel_btn input_button">취소</button>
					<button type="submit" class="update_btn input_button">저장</button>
				</div>
			</form>
			</div>
		</div>
	</div>
</body>
</html>