 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>글쓰기</title>
<link rel="stylesheet" href="/resources/css/write.css"/>
<link rel="stylesheet" href="/resources/css/hf_collect/bwrite_menu.css" />
<!-- SmartEditor2 라이브러리 --> 
<script type="text/javascript" src="/se2/js/HuskyEZCreator.js" charset="utf-8"></script> 
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
//첫 글자 공백 사용 X
function blank_chk(obj) {
    if(obj.value == " ") {
        alert("첫 글자를 공백으로 사용할수 없습니다.");
        obj.focus();
        obj.value = obj.value.replace(' ','');
        return false;
    }
}

// 제목, 내용 빈칸 X
function bnc() {
	if($("#subject").val().trim() == "") {
		alert("제목을 입력해주세요.");
		$("#subject").focus();
		return false;
	}
}
</script>
</head>
<body>

	<header>
		<%@ include file="../h_list/bw_head.jsp" %>
	</header>
	
	<div class="base-layout">
		<div class="WritingHeader">
			<h3>게시판 글쓰기</h3>
		</div>
		<div class="WritingContent">
			<form name="writeForm" method="post" action="/board/write" onsubmit="return bnc()">
				<div class="WritingTitle">자유 게시판</div>
				<div>
					<textarea class="textarea_input" placeholder="제목을 입력해 주세요." id="subject" name="subject" onkeyup="blank_chk(this);" style="height: 40px;"></textarea>
				</div>
				<!-- 
					아래 부분의 TEXTAREA는 스마트 에디터에 의해 편집되는 내용을 담는 것으로
					기본적인 정보와 크기, 화면표시(표시되지 않음)으로 설정되어 있습니다. 이 부분에
					스마트 에디터가 표시될 것입니다.
				-->
				<textarea id="content" name="content" class="textarea_input"></textarea>
				<!-- SmartEditor2 -->
				<script type="text/javascript">
				/*
				============================================================================
				이 부분은 위 부분의 TEXTAREA 테그에 씌워질 스마트 에디터 프래임을 만드는 일을 합니다. 
				createInIFrame 함수의 인자로 전달되는 정보는 JSON 객체 방식으로 전달합니다.
				============================================================================
				*/
			        var oEditors = [];
			        nhn.husky.EZCreator.createInIFrame({
			            oAppRef: oEditors,
			            elPlaceHolder: "content",
			            sSkinURI: "/se2/SmartEditor2Skin.html",
			            fCreator: "createSEditor2",
			            htParams: { 
			            	bUseVerticalResizer : false,
			            	fOnBeforeUnload : function(){}
			            }  
			        });
			        function submitContents(elClickedObj) {
			            // 에디터의 내용이 textarea에 적용됩니다.
			            oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
			            // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
			       	}
				</script>
				<script>
					$(function() {
						$("#BaseButton").click(function() {
							oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); 
							//textarea의 id를 적어줍니다.
							var content = document.getElementById("content").value;

				        	if(content == "" || content == null || content == '&nbsp;' || content == '<br>' || content == '<br/>' || content == '<p>&nbsp;</p>') {
						        alert("내용을 작성해주세요.");
						        oEditors.getById["content"].exec("FOCUS"); //포커싱
						        return false;
					       	} else return true;
						});
					})
				</script>
				<div>
					<button type="button" class="BaseButton" onclick="location.href='/board/list'">취소</button>
					<button type="submit" id="BaseButton" class="BaseButton">등록</button>
				</div>
			</form>
		</div>
	</div>
	
	<script>
	window.onload = function() {
		setTimeout (function () {
			scrollTo(0,0);
		},100);
	}
	</script>

</body>
</html>