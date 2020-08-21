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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
						<td class="tit">
							<a href="/board/view?bno=${list.bno}"><c:out value="${list.subject}"/></a>
						</td>
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
			<ul class="paging-ul">
				<c:if test="${pageMaker.prev}">
					<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
				</c:if> 
							
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<li <c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
					<a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
				</c:forEach>
							
				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
				</c:if> 
			</ul>
		</div>
	</div>

	<div align="center">

			<select class="srch_select" name="srchfield">
				<option value="s"<c:out value="${scri.searchType eq 's' ? 'selected' : ''}"/>>제목</option>
				<option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
				<option value="n"<c:out value="${scri.searchType eq 'n' ? 'selected' : ''}"/>>작성자</option>
				<option value="sc"<c:out value="${scri.searchType eq 'sc' ? 'selected' : ''}"/>>제목+내용</option>
			</select> <span class='green_window'> 
			<input name="keyword" id="keywordInput" value="${scri.keyword}" type='text' class='input_text' />
			</span>
			<button id="searchBtn" type="button" class='sch_smit'>검색</button>

	</div>
	
	<script>
		 $(function(){
			 $('#searchBtn').on('click', function() {
			 	self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
			 });
		 });   
	</script>
</body>
</html>