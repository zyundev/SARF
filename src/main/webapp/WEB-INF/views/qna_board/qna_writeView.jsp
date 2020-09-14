<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
   <title>Document</title>

<link rel="stylesheet" href="/resources/css/qna_write.css">

<!-- 구글 나눔고딕-->
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap">
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
		return $("#subject").focus();
	}
}
</script>

</head>
<body>

   <header>
		<%@ include file="../h_list/q_head.jsp" %>
	</header>
   
   <div class="mainarea">
   <form name="writeForm" method="post" action="/qna_board/qna_write">
   <div class="text">1:1문의</div>
   <input type="hidden" name="phone" value="${member.phone}"/>
   <input type="hidden" name="email" value="${member.email}"/>
   <table>
      <tr>
          <th>제목</th><td>
             <input type="text" name="subject" maxlength="100" autofocus>
          </td>
        </tr>

      <tr class="namemail">
          <th>이름</th><td>${member.id}</td>
        </tr>  
      <tr class="namemail">
          <th>휴대폰번호</th><td>${member.phone}</td>
        </tr>  
      <tr class="namemail">
          <th>이메일</th><td>${member.email}</td>
        </tr>  
      <tr>
          <th>내용</th><td><textarea name="content" placeholder="문의할 내용을 적어주세요." style="resize: none; margin: 10px 0px 10px 0px;"></textarea></td>

   </table>
   				<script type="text/javascript">
   					$(document).ready(function() {

      				$(".cancel_btn").on("click", function() {
       				  event.preventDefault();
       				  if(confirm("작성을 취소하시겠습니까?") == true) {
       						history.go(-1);
         				}
      				})
   				})
				</script>
         <div style="float: right">
         <button type='submit' class='write_btn BaseButton'>등록</button>
            <button type="button" class='cancel_btn write_btn BaseButton'>취소</button>
         </div>
               </form>
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