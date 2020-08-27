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

<link href="/resources/css/qna_view.css" rel="stylesheet" type="text/css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 취소
			$("#list_btn").on("click", function(){
				
				location.href = "/board/list";
			})
			
			// 답변 글쓰기
			$("#replyWrite_btn").on("click", function(){
				var content = $(".content").val();
				var replyFormObj = $("form[name='replyForm']");
				
				if(content == ''){
					alert('내용을 입력하세요');
					return "redirect:/board/view?bno=" + ${read.bno} ;

				} 
				else {
					replyFormObj.attr("action", "/qna_board/qna_replyWrite");
					replyFormObj.submit();
				}
			})
		})
</script>
<body>
<div>
<h3 style="padding: 15px 0 16px 16px; font-size: 25px;">묻고 답하기</h3>
	<table class="board_view">
		<colgroup>
			<col width="15%"/>
			<col width="35%"/>
			<col width="15%"/>
			<col width="35%"/>
		</colgroup>
		
		<tbody>
			<tr>
				<th scope="row">제목</th>
				<td colspan="3">${map.TITLE }</td>
				
			</tr>
			<tr>
				<th scope="row">작성자</th>
				<td>${map.CREA_ID }</td>
				<th scope="row">작성시간</th>
				<td>${map.CREA_DTM }</td>
			</tr>
			<tr>
				<th scope="row">처리상태</th>
				<td>${map.HIT_CNT }</td>
			</tr>
			<tr>
				<td colspan="4">${map.CONTENTS }</td>
			</tr>
		</tbody>
	</table>
	  <div class="comment_box">
  
 <!-- 댓글 입력창-->

 <form>
 	<div class="comment_writer">
		<div class="comment_inbox">
   		 	<em class="comment_inbox_name">답변</em>
	        	<textarea class="cmt_write_box" placeholder="댓글을 남겨보세요"></textarea>
			<div class="input_box">
    			<a class="input_button" href="#" role="button" onclick="alert('댓글을 적어주세요');return false;">등록</a>
    		</div>
     	</div>
	</div>
 </form>
  </div>
  <div>
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>
	</div>
</div>
</body>
</html>