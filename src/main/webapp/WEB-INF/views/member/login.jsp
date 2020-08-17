<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html> 
<html>

<head>
    <meta charset="utf-8">
    <title>Login</title>
    <style>
        input {
            outline: none;
        }

        .logo {
            text-align: center;
            margin-top: 15px;
        }
        
        input+div {
            position: absolute;
            color: #c0c0c0;
            transition-property: font-size, bottom;
            transition-duration: 0.5s;
            pointer-events: none;
        }

        .container {
            position: absolute;
            width: 500px;
            height: 500px;
            left: 50%;
            top: 50%;
            margin-top: -250px;
            margin-left: -250px;
        }

        .container_main {
            height: 20%;
            font-size: 30px;
        }

        .container_id {
            margin-top: 16px;
            height: 10%;
        }

        .container_pw {
            margin-top: 48px;
            height: 10%;
        }

        .container_find {
            height: 10%;
            text-align: right;
            padding-top: 11px;
            font-size: 13px;
        }
        
        .container_find_under:hover{
            text-decoration: underline;
        }

        .container_login {
            height: 30%;
            text-align: center;
        }

        .container_id_container_pw_input {
            width: 100%;
            display: block;
            border: none;
            border-bottom: 1px solid #c0c0c0;
            font-size: 20px;
        }

        .container_login input {
            background: #ffffff00;
            border: solid 1px #4f9f4f;
            border-radius: 22px;
            box-shadow: inset 0 0 0 1px #4f9f4f!important;
            color: #4f9f4f;
            cursor: pointer;
            font-size: 13px;
            min-width: 120px;
            padding: 11px 25px 12px 25px;
            text-align: center;
            margin-left: 25px;
        }
        
        .container_login input:hover{
            color:#ffffff;
            background: #4f9f4f;
            transition: background-color .3s,color .3s,background .3s,box-shadow .1s ease-in-out;
        }

        .container_find a {
            text-decoration: none;
            color: #000000aa;
        }

        #container_id_div {
            bottom: 362px;
            left: 3px;
        }

        #container_pw_div {
            bottom: 264px;
            left: 3px;
        }

    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <div class="logo">
        <img src="./logo.jpg" alt="로고" width="200px">
    </div>
    <div class="container">
        <div class="container_main">로그인</div>
        <div class="container_id">
            <input id="container_id_input" class="container_id_container_pw_input" type="text" name="" value="" onfocus="move_container_id_div()" onfocusout="move_container_id_div_return()">
            <div id="container_id_div">아이디</div>
        </div>
        <div class="container_pw">
            <input id="container_pw_input" class="container_id_container_pw_input" type="password" name="" value="" onfocus="move_container_pw_div()" onfocusout="move_container_pw_div_return()">
            <div id="container_pw_div">비밀번호</div>
        </div>
        
        <div class="container_find">
            <a class="container_find_under" href="#">아이디 찾기</a> | 
            <a class="container_find_under" href="#">비밀번호 찾기</a>
        </div>
        
        <div class="container_login">
            <input type="submit" name="" value="로그인">
            <input type="button" name="" value="회원 가입" onclick="location.href='join.html';">
        </div>
    </div>
    
    <script type="text/javascript">
        var id_div = $('#container_id_div');
        var id_input = $('#container_id_input');
        var pw_div = $('#container_pw_div');
        var pw_input = $('#container_pw_input');

        function move_container_id_div() {
            id_div.css('fontSize', '10px');
            id_div.css('bottom', '392px');
            id_input.css('borderBottom', '2px solid #4f9f4f');
        }

        function move_container_id_div_return() {
            if (id_input.val() == "") {
                id_div.css('fontSize', '16px');
                id_div.css('bottom', '362px');
                id_input.css('borderBottom', '1px solid #c0c0c0');
            }
        }

        function move_container_pw_div() {
            pw_div.css('fontSize', '10px');
            pw_div.css('bottom', '294px');
            pw_input.css('borderBottom', '2px solid #4f9f4f');
        }

        function move_container_pw_div_return() {
            if ((pw_input.val() == "")) {
                pw_div.css('fontSize', '16px');
                pw_div.css('bottom', '264px');
                pw_input.css('borderBottom', '2px solid #c0c0c0');
            }
        }

    </script>
</body>

</html>