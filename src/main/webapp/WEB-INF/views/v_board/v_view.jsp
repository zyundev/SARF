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
<link href="/resources/css/view.css" rel="stylesheet" type="text/css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$("#update_btn").on("click", function(){
				if(${logincheck} == false){
					alert('로그인해주세요.');
					location.href='/member/login';
					return false;
				}else{
					if("${member.getId()}" != "${read.getName()}"){
						alert('다른사용자의 글을 수정할 수 없습니다.');
						return false;
					}
					formObj.attr("action", "/v_board/v_updateView");
					formObj.attr("method", "get");
					formObj.submit();				
				}
			})
			
			// 삭제
			$("#delete_btn").on("click", function(){
				if(${logincheck} == false){
					alert('로그인해주세요.');
					location.href='/member/login';
				}else{
					if("${member.getId()}" != "${read.getName()}"){
						alert('다른사용자의 글을 삭제할 수 없습니다.');
						return false;
					}
					formObj.attr("action", "/v_board/v_delete");
					formObj.attr("method", "post");
					formObj.submit();
				}
			})
			
			// 목록
			$("#list_btn").on("click", function(){
				
				location.href = "/v_board/v_list";
			})
			
			// 답변 글쓰기
			$("#replyWrite_btn").on("click", function(){
				var content = $(".content").val();
				var replyFormObj = $("form[name='replyForm']");
				
				if(content == ''){
					alert('내용을 입력하세요');
					return "redirect:/v_board/v_view?bno=" + ${read.bno} ;

				} 
				else {
					replyFormObj.attr("action", "/v_board/replyWrite");
					replyFormObj.submit();
				}
			})
		})
</script>
	
<body>
<section id="container">
	<div class="view_list">
			<div class="view_content">
				<!-- 게시판이름 -->
				<div>
					<b>축제 게시판</b>
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
				<div class="comment_box">
				<c:choose>
				<c:when test="${member.id != null}">
					<!-- 댓글 입력창-->
					<p style="float: left; margin-top: 3px; margin-right: 12px; font-size: 17px;">댓글작성</p>
					<form name="replyForm" method="post" role="form">
						<input type="hidden" id="bno" name="bno" value="${read.bno}" />					
						<input type="hidden" id="name" name="name" value="${member.id}" />

						<div class="comment_writer">
							<div class="comment_inbox">
								
								<em class="comment_inbox_name" >작성자 : ${member.id}</em>
								<textarea class="content" name="content"></textarea>
								<div class="input_box">
									<button type="button" id="replyWrite_btn"
										class="input_button basebutton skin size">등록</button>
								</div>
							</div>
						</div>
					</form>
				</c:when>
				<c:otherwise>
					<p style="float: left; margin-top: 3px; margin-right: 12px; font-size: 17px;">로그인 해야 답글 작성 가능합니다.</p>
					<!-- 로그인 버튼은 나중에 목차 달아서 만들 필요 없음 -->
				</c:otherwise>
				</c:choose>
				</div>
				<!-- 댓글 출력창-->
			 	<div class="comment_box">
					<p style="float: left; margin-top: 3px; margin-right: 12px; font-size: 17px;">댓글</p>
					<c:forEach items="${replyList}" var="replyList">
						<div class="comment_writer">
							<div class="comment_inbox">
									<em class="comment_inbox_name">작성자 : ${replyList.name}</em>
								<p>
									작성 날짜 :
									<fmt:formatDate value="${replyList.regdate}"
										pattern="yyyy-MM-dd HH:mm:ss" />
								</p>
								${replyList.content}
								<div class="right_area">
								<c:choose>
								<c:when test="${member.id == replyList.name}">
								<!-- 내가 작성한 답글만 나오게 버튼 만들까? -->
								<button type="button" id="replyUpdate_btn"
										class="basebutton skin size replyUpdate_btn" data-rno="${replyList.rno}">수정</button>

								<button type="button" id="replyDelete_btn"
										class="basebutton skin size replyDelete_btn" data-rno="${replyList.rno}">삭제</button>
								</c:when>
								<c:otherwise></c:otherwise>
								</c:choose>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>


			</div>

			<div class="top_btn" style="padding-bottom: 13px">
				<div class="left_area">
					
					<!-- 					<a class="basebutton skin size">이전글</a>
		
				<a class="basebutton skin size">다음글</a> -->



					<!-- 목록 -->
					<button type="submit" class="basebutton skin size" id="list_btn">목록</button>
				</div>
				<div class="right_area">
					<!-- 수정 -->
					<button type="submit" class="basebutton skin size" id="update_btn">수정</button>
					<!-- 삭제 -->
					<button type="submit" class="basebutton skin size" id="delete_btn">삭제</button>
				</div>
			</div>

		</div>
</section>
<script>
	// 수정 권한 주기
	$('.replyUpdate_btn').on('click', function(){
		var urlparam = "?rno=" + $(this).attr('data-rno');
		location.href='replyUpdateView' + urlparam;
	})
	
	// 삭제 권한 주기 
	$('.replyDelete_btn').on('click', function(){
		var check = confirm('정말 삭제하시겠습니까?');

		if(check){
			var urlparam = "?rno=" + $(this).attr('data-rno') + "&bno=" + $('#bno').val();
			location.href='replyDelete' + urlparam;
		}
		return false;
	})
	
</script>
</body>
</html>