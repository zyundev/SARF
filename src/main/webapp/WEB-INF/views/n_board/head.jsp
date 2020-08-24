<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" href="/resources/css/main.css" />
<link rel="stylesheet" href="/resources/css/css_menu.css" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="/resources/js/main.js"></script>
</head>
<body>
<!-- 로고 -->
      <div class="logo">
         <a href="/"><img src="/resources/images/logo.jpg" alt="로고" width="300px"></a>
      </div>

		<!-- 메뉴 -->
		<input type="checkbox" id="menuicon"> <label for="menuicon">
			<span></span> <span></span> <span></span>
		</label>

		<div class="sidebar">
			<a href="#">공지사항</a>
			<hr>
		
		<div class="board">
			<a href="/board/list">게시판</a>
			<div>
				<button class="bd">- 자유 게시판</button>
				<br>
				
				<p>
					<button class="bd">- 명소 게시판</button>
				</p>
				
				<br>
				
				<p>
					<button class="bd">- 맛집 게시판</button>
				</p>
				
				<br>
				
				<p>
					<button class="bd">- 축제 게시판</button>
				</p>
				
				<br>
			</div>
		</div>
			<hr>
			<a href="#">명소</a>
			<hr>
			<a href="#">맛집</a>
			<hr>
			<a href="#">축제</a>
			<hr>
			<a href="#">고객센터</a>
			<hr>
			<a href="#">운영진 소개</a>
			<!-- 공지사항 게시판 명소 맛집 축제 고객지원 운영진소개 -->
			<c:choose>
         	<c:when test="${member == null}">
         		<button class="menubar-button" id="signup" onclick="location.href='/member/join'">회원가입</button>
         		<button class="menubar-button" id="login" onclick="location.href='/member/login'">로그인</button>
         	</c:when>
	        <c:otherwise>
	        	<div>${member.getId()} 님</div>
	        	<button class="menubar-button" id="updateuser" onclick="location.href='/member/updatemember'">회원정보수정</button>
				<button class="menubar-button" id="logout" onclick="location.href='/member/logout'">로그아웃</button>
			</c:otherwise>
		 </c:choose>
		</div>
</body>
</html>