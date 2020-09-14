<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- 세션값 확인 --%>
<%@page import="java.util.Enumeration"%>
<%
   Enumeration se = session.getAttributeNames();

   while (se.hasMoreElements()) {
      String getse = se.nextElement() + "";
      System.out.println("@@@@@@@ session : " + getse + " : " + session.getAttribute(getse));
   }
%>
<%-- 세션값 확인 끝 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>상세 보기</title>

<link href="/resources/css/qna_view.css" rel="stylesheet"
   type="text/css" />
<script
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<script type="text/javascript">
   $(document).ready(
         function() {
            var formObj = $("form[name='readForm']");

            // 취소
            $("#list_btn").on("click", function() {

               location.href = "/board/list";
            })

            // 답변 글쓰기
            $("#replyWrite_btn").on("click", function() {
               var content = $(".content").val();
               var replyFormObj = $("form[name='replyForm']");

               if (content == '') {
                  alert('내용을 입력하세요');
                  return "redirect:/board/view?bno=" + $
                  {
                     read.bno
                  }
                  ;

               } else {
                  replyFormObj.attr("action", "/qna_board/replyWrite");
                  replyFormObj.submit();
               }
            })

            $('.replyUpdate_btn').on('click', function() {
               var urlparam = "?rno=" + $(this).attr('data-rno');
               location.href = 'replyUpdateView' + urlparam;
            })
            $('.replyDelete_btn').on(
                  'click',
                  function() {
                     var check = confirm('정말 삭제하시겠습니까?');

                     if (check) {
                        var urlparam = "?rno="
                              + $(this).attr('data-rno') + "&bno="
                              + $('#bno').val();
                        location.href = 'replyDelete' + urlparam;
                     }
                     return false;
                  })
         })
</script>
<body>

	<header>
		<%@ include file="../h_list/qv_head.jsp" %>
	</header>
	
   <div class="mainarea">
      <h3 style="padding: 15px 0 16px 16px; font-size: 25px;">묻고 답하기</h3>
      <table class="board_view">
         <colgroup>
            <col width="15%" />
            <col width="35%" />
            <col width="15%" />
            <col width="35%" />
         </colgroup>

         <form name="readForm" role="form" method="post">
            <input type="hidden" id="bno" name="bno" value="${read.bno}" />
         </form>

         <tbody>
            <tr>
               <th scope="row">제목</th>
               <td colspan="3"><c:out value="${read.subject}"></c:out></td>
            </tr>
            <tr>
               <th scope="row">작성자</th>
               <td><c:out value="${read.name}"></c:out></td>
               <th scope="row">작성시간</th>
               <td><fmt:formatDate value="${read.regdate}"
                     pattern="yyyy-MM-dd" /></td>
            </tr>
            <tr>
               <td colspan="4">${read.content}</td>
            </tr>
         </tbody>
      </table>
      <div class="comment_box">
         <!-- 댓글 출력창-->
         <div class="comment_box">
            <c:forEach items="${replyList}" var="replyList" >
               <div class="comment_writer">
                  <div class="comment_inbox">
                     <em class="comment_inbox_name"> 답변 : ${replyList.name}</em>
                        <textarea style="overflow: hidden; outline: none;" readonly="readonly">${replyList.content}</textarea>
                        <span class="comment_info">
                           작성 날짜 :
                           <fmt:formatDate value="${replyList.regdate}"
                              pattern="yyyy-MM-dd HH:mm:ss" />
                        </span>
                     <div class="right_area">
                        <c:choose>
                           <c:when test="${member.id == replyList.name}">
                              <button type="button" id="replyDelete_btn"
                                 class="input_button replyDelete_btn"
                                 data-rno="${replyList.rno}">삭제</button>

                              <button type="button" id="replyUpdate_btn"
                                 class="input_button replyUpdate_btn"
                                 data-rno="${replyList.rno}">수정</button>
                           </c:when>
                           <c:otherwise></c:otherwise>
                        </c:choose>
                     </div>
                  </div>
               </div>
            </c:forEach>
         </div>

         <!-- 댓글 입력창-->

               <c:choose>
                  <c:when test="${member.id == 'admin'}">
         <div class="comment_writer">
            <div class="comment_inbox">
                     <em class="comment_inbox_name">답변</em>
                     <form name="replyForm" method="post" role="form">
                        <input type="hidden" id="bno" name="bno" value="${read.bno}" />
                        <input type="hidden" id="name" name="name" value="${member.id}" />
                        <textarea class="cmt_write_box" name="content"
                           placeholder="댓글을 남겨보세요"></textarea>
                        <div class="input_box">
                           <a class="input_button" id="replyWrite_btn" role="button">등록</a>
                        </div>
                     </form>
            </div>
         </div>
                  </c:when>
               </c:choose>

      </div>
      <div>
         <button type="button" onclick="location.href=href='/qna_board/qna_list'" class="btn" id="list">목록으로</button>
      </div>
   </div>
   
   <script>
	window.onload = function() {
		setTimeout (function () {
			scrollTo(0,0);
		},100);
	}
	</script>
	
</body>
</html>