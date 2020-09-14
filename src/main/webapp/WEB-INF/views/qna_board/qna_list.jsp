<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 세션값 확인 -->
<%@page import="java.util.Enumeration"%>
<% 
Enumeration se = session.getAttributeNames();

while(se.hasMoreElements()){
	String getse = se.nextElement()+"";
	System.out.println("@@@@@@@ session : "+getse+" : "+session.getAttribute(getse));
}

%>
<!-- 세션값 확인 끝 -->

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커뮤니티</title>
<link rel="stylesheet" href="/resources/css/qna_list.css">
<link rel="stylesheet" href="/resources/css/qna_menu.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

	<header>
		<%@ include file="../h_list/q_head.jsp" %>
	</header>

    <div class="container">
    	<h3>묻고 답하기</h3>
    <table class="board_list">
	    <thead>
	        <tr>
    	        <th>번호</th>
        	    <th>제목</th>
            	<th>작성자</th>
            	<th>작성일자</th>
        	</tr>
    	</thead>
    	<tbody>
				<c:forEach items="${list}" var="list">
					<tr>
						<td><c:out value="${list.bno}"></c:out></td>
						<td class="tit">
							<a href="/qna_board/qna_view?bno=${list.bno}"><c:out value="${list.subject}"/></a>
						</td>
						<td><c:out value="${list.name}"></c:out></td>
						<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
						<c:set var="read1" value="read1" />
						<c:set var="read2" value="read2" />
						<td>답변대기</td>
						<c:choose>
						<c:when test="${anwser == true}">
						<td>답변완료</td>
						</c:when>
						</c:choose>
					</tr> 
				</c:forEach>
				
	    </tbody>
	</table>
	            <div style="float:right">
				  <button class="write_btn" onclick="location.href='/qna_board/qna_writeView'">글쓰기</button> 
			      </div>
	<script>
		$(function(){
			$('.write_btn').on('click', function(){
				if(${logincheck} == false){
					alert('로그인해주세요.');
					location.href='/member/login';
				}else{
					location.href='/qna_board/qna_writeView'
				}
 			});
		});
	</script>
	</div>
	
	<footer>
		<%@ include file="footer.jsp" %>
   </footer>
	
</body>
</html>
