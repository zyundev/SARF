<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>글쓰기</title>
<link rel="stylesheet" href="/resources/css/write.css"/>
</head>
<body>
	<div class="base-layout">
		<div class="WritingHeader">
			<h3>게시판 글쓰기</h3>
		</div>
		<div class="WritingContent">
			<form name="writeForm" method="post" action="/arf/a_write"> <!-- action 경로 수정 -->
				<div class="WritingTitle">명소 게시판
				
				<!-- key 값 보내기 위함 -->
				<select name="key">
				<option value="east">east</option>
				<option value="west">west</option>
				<option value="south">south</option>
				<option value="north">north</option>
				</select>
				</div>
				
				<div>
					<textarea class="textarea_input" placeholder="제목을 입력해 주세요." name="subject" style="height: 40px;"></textarea>
				</div>

				<div style="height: 400px; padding: 5px 13px 5px 13px; border: 1px solid #ebecef;">
					<textarea placeholder="내용을 입력해 주세요." name="content" style="resize: none; font-size: 15px;"></textarea>
				</div>
				<div style="border: 1px solid black;">
					<div>
						<button type='submit' class='BaseButton'>등록</button>
						<!-- 경로 재설정 -->
					</div>
				</div>
			</form>
				<button class='BaseButton' onclick="location.href='/arf/attraction'">취소</button> <!-- action 경로 수정  -->
		</div>
	</div>
</body>
</html>