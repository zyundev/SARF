<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script type="text/javascript" src="/smarteditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시판</title>
</head>
<link rel="stylesheet" href="/resources/css/update.css" />
<style>
#content{
	width: 100%;
	height:400px;
}
</style>
<body>
   <div class="base-layout">
      <div class="UpdateHeader">
         <h3>축제게시판 글 수정하기</h3>
      </div>
      <nav>홈 - 글 작성</nav>
      <div class="UpdateContent">
         <form name="updateForm" class="updateform" method="post" action="/festival/update"> 
            <div class="UpdateTitle">지역
	            <select name="newkey" class="keychk">
	            	<option value="wrong" selected>지역을 선택해주세요.</option>
					<option value="EAST">강동</option>
					<option value="WEST">강서</option>
					<option value="SOUTH">강남</option>
					<option value="NORTH">강북</option>
				</select>
            </div>
            
            <input type="hidden" name="bno" value="${update.bno}" readonly="readonly" />
            <input type="hidden" name="key" value="${update.key}" readonly="readonly" />
            <div>
               <input type="text" class="textarea_input" placeholder="제목을 입력하세요." id="subject" name="subject" value="${update.subject}" style="height: 40px;"/>
            </div>
               <textarea placeholder="내용을 입력하세요." id="content" name="content" value="${update.content}" style="font-size:15px; "></textarea>
					<!-- SmartEditor2 -->
					<script type="text/javascript">
			        var oEditors = [];
			        nhn.husky.EZCreator.createInIFrame({
			            oAppRef: oEditors,
			            elPlaceHolder: "content",
			            sSkinURI: "/smarteditor2/SmartEditor2Skin.html",
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
            <div>
				<label>더 알아보기</label>
				<input type="text" name="link" placeholder="더알아보기 링크" value="${update.link}">
			</div>
            <div style="border: 1px solid black;">
            </div>
            <div>
               <button type="button" class="cancel_btn BaseButton" onclick="location.href='/festival/list'">취소</button>
               <button type="button" class="update_btn BaseButton">저장</button>
            </div>
         </form>
      </div>
   </div>
<script type="text/javascript">
$(document).ready(function() {
	$('.update_btn').on('click', function(){
		if($('.keychk').val() == "wrong"){
			alert('지역을 선택해주세요.');
			
			return false;
		}
		if($('.textarea_input').val() == ""){
			alert('제목을 입력해주세요.');
			
			return false;
		}
		$('.updateform').submit();
	})
})
</script>
</body>
</html>