<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
   src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>게시판</title>
</head>
<link rel="stylesheet" href="/resources/css/update.css" />
<style>

</style>
<body>
   <div class="base-layout">
      <div class="UpdateHeader">
         <h3>맛집게시판 글 수정하기</h3>
      </div>
      <nav>홈 - 글 작성</nav>
      <div class="UpdateContent">
         <form name="updateForm" class="updateform" method="post" action="/restaurant/update"> 
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
            <div style="height: 400px; padding: 5px 13px 5px 13px; border: 1px solid #ebecef;">
               <input type="text" placeholder="내용을 입력하세요." id="content" name="content" value="${update.content}" style="font-size:15px; "/>
            </div>
            <div>
				<label>더 알아보기</label>
				<input type="text" name="link" placeholder="더알아보기 링크" value="${update.link}">
			</div>
            <div style="border: 1px solid black;">
            </div>
            <div>
               <button type="button" class="cancel_btn BaseButton" onclick="location.href='/restaurant/list'">취소</button>
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