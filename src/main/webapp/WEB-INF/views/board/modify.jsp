<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>글쓰기</title>
<link rel="stylesheet" href="/resources/css/modify.css"/>
</head>
<body>
<form name="modifyForm" role="form" method="post" action="/board/modify">
	<div class="base-layout">
		<div class="UpdateHeader">
			<h3>게시판 수정</h3>
		</div>
		<div class="UpdateContent">
			<div class="UpdateTitle">자유 게시판</div>
			<div>
				<textarea class="textarea_input" placeholder="제목을 입력해 주세요." name="subject" style="height: 40px;"></textarea>
				</div>

				<div style="height: 400px; padding: 5px 13px 5px 13px; border: 1px solid #ebecef;">
					<textarea placeholder="내용을 입력해 주세요." name="content" style="resize: none; font-size: 15px;"></textarea>
				</div>
				<div style="border: 1px solid black;">
					<div>
						<button type="submit" class='BaseButton'>등록</button>
						<button type="button" class='BaseButton' onclick="location.href='history.go(-1)'">취소</button>
						<!-- 경로 재설정 -->
					</div>
				</div>
		</div>
	</div>
</form>

</body>
</html>