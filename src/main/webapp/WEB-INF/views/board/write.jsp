<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>글쓰기</title>
<link rel="stylesheet" href="/resources/css/write.css" />
</head>
<body>
	<div class="base-layout">
		<div class="WritingHeader">
			<h3>게시판 글쓰기</h3>
		</div>
		<div class="WritingContent">
			<div class="WritingTitle">
				XXX 게시판
				<!-- 서버를 통해서 해당 게시판의 값을 가져오기 -->
			</div>
			<div>
				<textarea class="textarea_input" placeholder="제목을 입력해 주세요." style="height: 40px;"></textarea>
			</div>
			<div style="height: 400px; padding: 5px 13px 5px 13px; border: 1px solid #ebecef;">
				<textarea placeholder="내용을 입력해 주세요." style="resize: none; font-size: 15px;"></textarea>
				<!-- 데스크탑으로 테스트 -->
			</div>
			<div style="border: 1px solid black;">
				<div>
					<button type='submit' class='BaseButton' onclick="location.href='history.go(-1)'">취소</button>
					<button type='submit' class='BaseButton' >등록</button>
					<!-- 경로 재설정 -->
				</div>
			</div>
		</div>
	</div>

</body>
</html>