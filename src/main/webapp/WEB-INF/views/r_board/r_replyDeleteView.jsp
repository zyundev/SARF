<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>댓글 수정</title>
<!-- <link href="/resources/css/view.css" rel="stylesheet" type="text/css" /> -->
<style>
.view_list{
  position: relative;
  width: 280px;
  margin: 0 auto;
  margin-top: 30px;
  font-size: 15px;
}

.view_content{
  padding: 29px;
  border: 1px solid green;
  border-radius: 6px;
}
.comment_box{
	display: inline-block;
}

.input_button{
	display: inline-block;
    min-width: 35px;
    height: 34px;
    font-size: 15px;
    border-radius: 6px;
    box-sizing: border-box;
    
    font-weight: 700;
    text-align: center;
    vertical-align: top;
	float: right;
	border: 1px solid green;
    background: #22B600;
    color: black;
    margin-left: 10px;
}

.cmt_write_box {
	width: 700px;
	height: 78px;
	padding: 13px;
	margin-top: 10px;
	border: 1px solid #cecdce;
	background: #fff;
	line-height: 18px;
	resize: none;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		var formObj = $("form[name='updateForm']");
		
		$(".cancel_btn").on("click", function(){
			location.href = "/r_board/r_readView?bno=${r_replyUpdate.bno}"
				   + "&page=${scri.page}"
				   + "&perPageNum=${scri.perPageNum}"
				   + "&searchType=${scri.searchType}"
				   + "&keyword=${scri.keyword}";
		})
	})
</script>
</head>
<body>
	<div class="view_list">
		<div class="view_content">
			<div class="comment_box">
				<p style="float: left; margin-top: 3px; margin-right: 12px; font-size: 17px;">댓글을 삭제하시겠습니까?</p>
				<form name="updateForm" role="form" method="post" action="/board/replyDelete">
					<input type="hidden" name="bno" value="${r_replyDelete.bno}"/>
					<input type="hidden" id="rno" name="rno" value="${r_replyDelete.rno}" />
					<!-- 
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					 -->
					<!-- <textarea id="content" class="cmt_write_box" name="content" readonly>${replyDelete.content}</textarea> --> 	
					<div>
						<button type="button" class="cancel_btn input_button">뒤로</button>
						<button type="submit" class="delete_btn input_button">삭제</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>