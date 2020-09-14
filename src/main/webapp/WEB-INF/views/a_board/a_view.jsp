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
<style>
	header {
		padding-bottom: 30px;
	}
</style>
</head>

<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			var text = $(".text");
			
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
					formObj.attr("action", "/a_board/a_updateView");
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
					var check = confirm('정말 삭제하시겠습니까?');
					if(check) {
						formObj.attr("action", "/a_board/a_delete");
						formObj.attr("method", "post");
						formObj.submit();
					}
				}
			})
			
			// 취소
			$("#list_btn").on("click", function(){
				
				location.href = "/a_board/a_list";
			})
			
			// 답변 글쓰기
			$("#replyWrite_btn").on("click", function(){
				var content = $(".content").val();
				var replyFormObj = $("form[name='replyForm']");
				
				if(content == ''){
					alert('내용을 입력하세요');
					return "redirect:/a_board/a_view?bno=" + ${read.bno} ;

				} 
				else {
					replyFormObj.attr("action", "/a_board/replyWrite");
					replyFormObj.submit();
				}
			})
		})
</script>
	
<body>

<header>
	<%@ include file="../h_list/bv_head.jsp" %>
</header>

<section id="container">
   <div class="view_list">
         <div class="view_content">
            <!-- 게시판이름 -->
            <div>
               <a class="title_back"href="#" onClick="history.go(-1); return false ; "> 명소게시판 </a>
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
            <div class="comment_box">
            <c:choose>
            <c:when test="${member.id != null}">
               <!-- 댓글 입력창-->
               <p style="float: left; margin-top: 3px; margin-right: 12px; font-size: 17px;">댓글작성</p>    
               <form name="replyForm" method="post" role="form">
                  <input type="hidden" id="bno" name="bno" value="${read.bno}" />               
				  <input type="hidden" id="name" name="name" value="${member.id}" />
					
                  <div class="cmt_writer">
                     <div class="comment_inbox">
                        
                        <em class="comment_inbox_name" >작성자 : ${member.id}</em>
                        <textarea class="content" id="content" name="content" rows="3" style="overflow: hidden; overflow-wrap: break-word;"></textarea>
                        <div class="input_box">
                           <a type="button" id="replyWrite_btn"
                              class="input_button ">등록</a>
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
                     <br><br>
            <!-- 댓글 출력창-->
             <div class="comment_box">
               <p style="float: left; margin-top: 3px; margin-right: 12px; font-size: 17px;">댓글</p>
               <c:forEach items="${replyList}" var="replyList">
                  <div class="comment_writer">
                     <div class="cmt_inbox">
                           <em class="comment_inbox_name"> ${replyList.name}</em>
                        <textarea style="overflow: hidden; outline: none;" readonly="readonly">${replyList.content}</textarea>
                        <span class="comment_info">
                           <fmt:formatDate value="${replyList.regdate}"
                              pattern="yyyy-MM-dd HH:mm:ss" />
                        </span>
                        <div class="right_area_reply">
                        <c:choose>
                        <c:when test="${member.id == replyList.name}">
                        <button type="button" id="replyDelete_btn"
                              class="basebutton reply_skin replyDelete_btn" data-rno="${replyList.rno}">삭제</button>
                        <button type="button" id="replyUpdate_btn"
                              class="basebutton reply_skin replyUpdate_btn" data-rno="${replyList.rno}">수정</button>
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
               <!-- 목록 -->
               <button type="submit" class="basebutton skin size" id="list_btn">목록</button>
            </div>
            <div class="right_area">
               <!-- 수정 -->
               <a type="submit" class="basebutton skin size" id="update_btn">수정</a>
               <!-- 삭제 -->
               <a type="submit" class="basebutton skin size" id="delete_btn">삭제</a>
            </div>
         </div>            
      </div>
</section>

<script>
	$('.replyUpdate_btn').on('click', function(){
		var urlparam = "?rno=" + $(this).attr('data-rno');
		location.href='replyUpdateView' + urlparam;
	})
	$('.replyDelete_btn').on('click', function(){
		var check = confirm('정말 삭제하시겠습니까?');

		if(check){
			var urlparam = "?rno=" + $(this).attr('data-rno') + "&bno=" + $('#bno').val();
			location.href='replyDelete' + urlparam;
		}
		return false;
	})
$('#content').keydown(function(){
        var rows = $('#content').val().split('\n').length;
        var maxRows = 3;
        if( rows > maxRows){
            alert('3줄 까지만 가능합니다');
            modifiedText = $('#content').val().split("\n").slice(0, maxRows);
            $('#content').val(modifiedText.join("\n"));
        }
    })
function adjustHeight() {
  var textEle = $('textarea');
  textEle[0].style.height = 'auto';
  var textEleHeight = textEle.prop('scrollHeight');
  textEle.css('height', textEleHeight);
};
var textEle = $('textarea');
textEle.on('keyup', function() {
  adjustHeight();
});
	
	$('#content').keydown(function(){
        var rows = $('#content').val().split('\n').length;
        var maxRows = 3;
        if( rows > maxRows){
            alert('3줄 까지만 가능합니다');
            modifiedText = $('#content').val().split("\n").slice(0, maxRows);
            $('#content').val(modifiedText.join("\n"));
        }
    })
</script>

<script>
	window.onload = function() {
		setTimeout (function () {
			scrollTo(0,0);
		},100);
	}
	</script>
	
</body>

</html>