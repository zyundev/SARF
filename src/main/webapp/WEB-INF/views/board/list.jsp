<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 세션값 확인 -->
<%@page import="java.util.Enumeration"%>
<%
	Enumeration se = session.getAttributeNames();

	while (se.hasMoreElements()) {
		String getse = se.nextElement() + "";
		System.out.println("@@@@@@@ session : " + getse + " : " + session.getAttribute(getse));
	}
%>
<!-- 세션값 확인 끝 -->

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>커뮤니티</title>
<link rel="stylesheet" href="/resources/css/list.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!--  자유, 명소, 맛집, 축제 게시판 스타일 수정: 김성규 -->
<style>
#container {
	width: 980px;
	margin: 0 auto;
	text-align: left;
}

.tab {
	font-family: 'Noto Sans KR', sans-serif;
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	margin-top: 30px;
	margin-bottom: -20px;
}

.tab li {
	float: left;
}

.tab li a {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition: 0.3s;
	width: 208px;
}

/* 위에 박스 밑줄 효과 */
.cool-link::after {
	content: '';
	display: block;
	width: 0;
	height: 5px;
	background: #000;
}

.cool-link:hover::after {
	width: 100%;
}

.cool-link-always::after {
	content: '';
	display: block;
	width: 100%;
	height: 5px;
	background: #000;
}

header {
	padding-top: 15px;
	padding-bottom: 75px;
}
</style>

<!--  자유, 명소, 맛집, 축제 게시판 스타일 수정: 김성규 -->
</head>
<body>

	<header>
		<%@ include file="head.jsp"%>
	</header>

	<!--  list 부분, 자유,명소, 맛집, 축제 게시판 style 추가: 김성규 -->
	<div id="container">
		<ul class="tab">
			<li data-tab="tab1" class="cool-link-always"><a
				href="/board/list"><b>자유 게시판</b></a></li>
			<li data-tab="tab2" class="cool-link"><a href="/a_board/a_list"><b>명소
						게시판</b> </a></li>
			<li data-tab="tab3" class="cool-link"><a href="/r_board/r_list"><b>맛집
						게시판</b></a></li>
			<li data-tab="tab4" class="cool-link"><a href="/v_board/v_list"><b>축제
						게시판</b></a></li>
		</ul>
	</div>
	<!--  list 부분, 자유,명소, 맛집, 축제 게시판 style 추가: 김성규 -->

	<!-- location  -->
	<div class="board_list_wrap">
		<div style="margin-bottom: 15px;">
			<h2>자유 게시판</h2>
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
						<td><c:out value="${list.bno}" /></td>
						<td class="tit"><a href="/board/view?bno=${list.bno}"><c:out
									value="${list.subject}" /></a></td>
						<td><c:out value="${list.name}" /></td>
						<td><fmt:formatDate value="${list.regdate}"
								pattern="yyyy-MM-dd" /></td>
						<td><c:out value="${list.readcount}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div style="float: right">
			<button class="write_btn">글쓰기</button>
		</div>
		<div class="paging">
			<ul class="paging-ul">
				<c:if test="${pageMaker.prev}">
					<li><a
						href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
					var="idx">
					<li
						<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
						<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
					</li>
				</c:forEach>
				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	<div align="center">
		<select class="srch_select" name="srchfield">
			<option value="s"
				<c:out value="${scri.searchType eq 's' ? 'selected' : ''}"/>>제목</option>
			<option value="c"
				<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
			<option value="n"
				<c:out value="${scri.searchType eq 'n' ? 'selected' : ''}"/>>작성자</option>
			<option value="sc"
				<c:out value="${scri.searchType eq 'sc' ? 'selected' : ''}"/>>제목+내용</option>
		</select> <span class='green_window'> <input name="keyword"
			id="keywordInput" value="${scri.keyword}" type='text'
			onkeypress="if( event.keyCode==13 ){goSearch();}" class='input_text' />
		</span>

		<button id="searchBtn" type="button" class='sch_smit'>검색</button>
	</div>
	<script>
		$(function(){
			$('#searchBtn').on('click', function() {
				self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
			});
			$('.write_btn').on('click', function(){
				if(${logincheck} == false){
					alert('로그인해주세요.');
					location.href='/member/login';
				}else{
		 			location.href='/board/writeView';
				}
 			});
		});

		function goSearch(){
			//..
				self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
			}
	</script>

	<div class="wrapper">
		<footer>
			<%@ include file="footer.jsp"%>
		</footer>
	</div>

</body>
</html>