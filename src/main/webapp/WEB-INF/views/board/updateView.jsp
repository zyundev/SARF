<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>게시판</title>
<style>
	textarea:focus {
		outline: none;
	}
</style>
<script type="text/javascript">
//첫 글자 공백 사용 X
function blank_chk(obj) {                        
    if(obj.value == " ")
    {              
        alert("첫 단어로 공백을 사용할 수 없습니다.");
        obj.focus();
        obj.value = obj.value.replace(' ','');
        return false;
    }
}

// 제목, 내용 빈칸 X
$(document).ready(function() {
	$("#submit").click(function() {
		if($("#sub").val().length == 0) {
			alert("제목을 입력해주세요.");
			$("#sub").focus();
			return false;
		}
		if($("#content").val().length == 0) {
			alert("내용을 입력해주세요.");
			$("#content").focus();
			return false;
		}
	})
})
</script>
</head>
<link rel="stylesheet" href="/resources/css/update.css" />
<body>
	<div class="base-layout">
		<div class="UpdateHeader">
			<h3>게시판 글쓰기</h3>
		</div>
		<nav>홈 - 글 작성</nav>
		<div class="UpdateContent">
			<form name="updateForm" role="form" method="post" action="/board/update">
				<div class="UpdateTitle">자유 게시판</div>
				<input type="hidden" name="bno" value="${update.bno}" readonly="readonly" />
				<div>
					<label for="content" class="textarea_input"><b>제목 : </b><input type="text" placeholder="제목을 입력하세요." id="sub" name="subject" onkeyup="blank_chk(this);" onchange="blank_chk(this);" class="subject_input" value="${update.subject}" /></label>
				</div>
				<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<script type="text/javascript" src="/se2/js/HuskyEZCreator.js" charset="utf-8"></script> 
				<textarea class="textarea_input" id="content" name="content" cols="130" rows="26" placeholder="내용을 입력해주세요." style="resize:none;"><c:out value="${update.content}" /></textarea>
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
				<script type="text/javascript">
   					$(document).ready(function() {

      				$(".cancel_btn").on("click", function() {
       				  event.preventDefault();
       				  if(confirm("수정을 취소하시겠습니까?") == true) {
        			    location.href = "/board/list";
         				}
      				})
   				})
				</script>
				<div>
					<label for="name">작성자 </label><input type="text" id="name" name="name" value="${update.name}" readonly="readonly" />
				</div>
				<div>
					<label for="regdate">작성날짜 </label><fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd" />
				</div>
				<div style="border: 1px solid black;">
				</div>
				<div>
           			<button type="button" class="cancel_btn BaseButton">취소</button>
			        <button id="submit" type="submit" class="update_btn BaseButton">저장</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>