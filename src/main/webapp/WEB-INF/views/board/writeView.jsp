<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>글쓰기</title>
<link rel="stylesheet" href="/resources/css/write.css"/>
<!-- SmartEditor2 라이브러리 --> 
<script type="text/javascript" src="/se2/js/HuskyEZCreator.js" charset="utf-8"></script> 
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div class="base-layout">
		<div class="WritingHeader">
			<h3>게시판 글쓰기</h3>
		</div>
		<div class="WritingContent">
			<form name="writeForm" method="post" action="/board/write">
				<div class="WritingTitle">자유 게시판</div>
				<div>
					<textarea class="textarea_input" placeholder="제목을 입력해 주세요." name="subject" style="height: 40px;"></textarea>
				</div>
				<textarea id="content" name="content" class="content" placeholder="내용을 입력해 주세요."></textarea>
				<!-- SmartEditor2 -->
				<script type="text/javascript">
			        var oEditors = [];
			        nhn.husky.EZCreator.createInIFrame({
			            oAppRef: oEditors,
			            elPlaceHolder: "content",
			            sSkinURI: "/se2/SmartEditor2Skin.html",
			            fCreator: "createSEditor2"
			        });
			        function submitContents(elClickedObj) {
			            // 에디터의 내용이 textarea에 적용됩니다.
			            oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
			            // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
			 
			            try {
			                elClickedObj.form.submit();
			            } catch(e) {}
			       	}
				</script>
				<script>
					$(function() {
						$("#BaseButton").click(function() {
							oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); 
							//textarea의 id를 적어줍니다.
						});
					})
				</script>
				<!-- <script type="text/javascript" src = "/resources/js/notice-write.js"></script> -->
				<div>
					<div class="inputArea">
						<label for="img">이미지</label> 
							<input id="img" type="file" name="file" />
						<div class="select_img"><img src="" /></div>
					</div>
				</div>
				<div>
					<button type='submit' class='BaseButton' onclick='/board/list'>취소</button>
					<button id="BaseButton"type='submit' class='BaseButton'>등록</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>