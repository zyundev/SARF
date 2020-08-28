<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>Document</title>

<link rel="stylesheet" href="/resources/css/qna_write.css">
<link rel="stylesheet" href="/resources/css/qna.css">
<!-- 구글 나눔고딕-->
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">	
</head>
<body>
	<div class="mainarea">
	<form name="writeForm" method="post" action="/qna_board/qna_write">
	<div class="text">1:1문의</div>
	<input type="hidden" name="phone" value="${member.phone}"/>
	<input type="hidden" name="email" value="${member.email}"/>
	<table>
		<tr>
          <th>제목</th><td>
          	<input type="text" name="subject" maxlength="100">
          </td>
        </tr>

		<tr class="namemail">
          <th>이름</th><td><input type="text" name="name" value="${member.id}"></td>
        </tr>  
		<tr class="namemail">
          <th>휴대폰번호</th><td>${member.phone}</td>
        </tr>  
		<tr class="namemail">
          <th>이메일</th><td>${member.email}</td>

	</table>
			<div>
			<button type='submit' class='BaseButton'>등록</button>
			<!-- 경로 재설정 -->
			</div>
					</form>
				<button class='BaseButton' onclick="location.href='/qna_board/qna_list'">취소</button>
	</div>
	
	
</body>
</html>