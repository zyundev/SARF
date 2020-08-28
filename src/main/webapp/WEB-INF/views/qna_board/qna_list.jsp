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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 구글 나눔 고딕 -->
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">	
</head>
<body>
    <div class="container">
    	<h3>묻고 답하기</h3>
    <table class="board_list">
	    <thead>
	        <tr>
    	        <th>번호</th>
        	    <th>제목</th>
            	<th>작성자</th>
            	<th>작성일자</th>
            	<th>답변여부</th>
        	</tr>
    	</thead>
    	<tbody>
	        <tr>
	            <td>1</td>
    	        <td>Clothing</td>
        	    <td>Jacket</td>
	           	<td>11</td>
    	        <td>답변안됨</td>
	        </tr>
	    </tbody>
	</table>
	            <div style="float:right">
				  <button class="write_btn" onclick="location.href='write.html'">등 록</button> 
			      </div>
	
	</div>
</body>
</html>
