<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커뮤니티</title>
<link rel="stylesheet" href="/resources/css/list.css">
</head>
<body>
	<!-- location  -->
	<div class="board_list_wrap">
		<div class="loction">
			<span class="ar">&gt;</span>여행지 <span class="ar">&gt;</span> <span>명소</span>
		</div>
		<table class="board_list">
			<caption>게시판 목록</caption>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
			</thead>
			<tbody>   
				<c:forEach items="${list}" var="list">
					<tr>
						<td><c:out value="${list.bno}"></c:out></td>
						<td>	
									
						<a href="/board/view?bno=${list.bno}">	
						<c:out value="${list.subject}"></c:out></a></td>
				
						<td><c:out value="${list.name}"></c:out></td>
						<td><fmt:formatDate value="${list.regdate}"	pattern="yyyy-MM-dd" /></td>
						<td><c:out value="${list.readcount}"></c:out></td>
					</tr> 
				</c:forEach>
			</tbody>
		</table>
		<div style="float: right">
			<button class="write_btn" onclick="location.href='/board/writeView'">글쓰기</button>
		</div>     
		<div class="paging">
			<!-- spring 클래스 하나 생성해서 조작해야하는 구간 -->
			<a href="#" class="bt">첫 페이지</a> <a href="#" class="bt">이전 페이지</a>?>
			<a href="#" class="num on">1</a> <a href="#" class="num">2</a> <a
				href="#" class="num">3</a> <a href="#" class="bt">다음 페이지</a> <a
				href="#" class="bt">마지막 페이지</a>
		</div>
	</div>

	<div align="center">
		<form method="post" action="boardlist.html" name="srchform">
			<select class="srch_select" name="srchfield">
				<option value="all">모두</option>
				<option value="sub">제목</option>
				<option value="writer">글쓴이</option>
				<option value="content">내용</option>
			</select> <span class='green_window'> <input type='text'
				class='input_text' />
			</span>
			<button type='submit' class='sch_smit'>검색</button>
		</form>
	</div>
</body>
</html>