<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Join</title>
    <link rel="stylesheet" href="resources/css/join.css">
    <script type="text/javascript" src="resources/js/join.js"></script>
  </head>
  <body>
      <form onsubmit="return joinchk()" method="post" action="login.html">
      <div class="container">
        <div class="container_main">회원가입</div>
          <div class="container_id">
            <input id="container_id_input" type="text" onfocus="move_container_id_div()" onfocusout="move_container_id_div_return()">
            <div id="container_id_div" class="container_id_div">아이디</div>
          </div>
          <div class="container_pw">
            <input id="container_pw_input" type="password" onfocus="move_container_pw_div()" onfocusout="move_container_pw_div_return()">
            <div id="container_pw_div" class="container_pw_div">비밀번호</div>
          </div>
          <div class="container_pwcheck">
            <input id="container_pwcheck_input" type="password" onfocus="move_container_pwcheck_div()" onfocusout="move_container_pwcheck_div_return()">
            <div id="container_pwcheck_div" class="container_pwcheck_div">비밀번호 확인</div>
          </div>
          <div class="container_name">
            <input id="container_name_input" type="text" onfocus="move_container_name_div()" onfocusout="move_container_name_div_return()">
            <div id="container_name_div" class="container_name_div">이름</div>
          </div>
          <div class="container_birth">
            <input id="container_birth_input" type="text" onfocus="move_container_birth_div()" onfocusout="move_container_birth_div_return()">
            <div id="container_birth_div" class="container_birth_div">생년월일</div>
          </div>
          <div class="container_email">
            <input id="container_email_input" type="email" onfocus="move_container_email_div()" onfocusout="move_container_email_div_return()">
            <div id="container_email_div" class="container_email_div">이메일</div>
          </div>
          <div class="container_phone">
            <input id="container_phone_input" type="text" onfocus="move_container_phone_div()" onfocusout="move_container_phone_div_return()">
            <div id="container_phone_div" class="container_phone_div">전화번호</div>
          </div>
          <div class="container_join">
            <input class="container_join_input" type="submit" value="회원 가입">
          </div>
      </div>
    </form>
  </body>
</html>
