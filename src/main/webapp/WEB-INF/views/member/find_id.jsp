<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>아이디 찾기</title>
    <style>
        input {
            outline: none;
        }

        input+div {
            position: absolute;
            color: #c0c0c0;
            transition-property: font-size, bottom;
            transition-duration: 0.5s;
            pointer-events: none;
        }

        .logo {
            text-align: center;
            margin-top: 15px;
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

        .container_name {
            margin-top: 16px;
            height: 10%;
        }

        .container_email {
            margin-top: 48px;
            height: 10%;
        }

        .container_find {
            height: 10%;
            text-align: right;
            padding-top: 11px;
            font-size: 13px;
        }

        .container_login {
            height: 30%;
            margin-top: 50px;
            text-align: center;
        }

        .container_name_container_email_input {
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

        #container_name_div {
            bottom: 362px;
            left: 3px;
            border-bottom: 0;

        }

        #container_email_div {
            bottom: 264px;
            left: 3px;
        }

    </style>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <div class="logo">
        <a href="#"><img src="./logo.jpg" alt="로고" width="200px"></a>
        <!-- 메인화면 넘기는 경로 -->
    </div>
    <div class="container">
        <div class="container_main">아이디 찾기</div>
        <div class="container_name">
            <input id="container_name_input" class="container_name_container_email_input" type="text" onfocus="move_container_name_div()" onfocusout="move_container_name_div_return()">
            <div id="container_name_div">이름</div>
        </div>
        <div class="container_email">
            <input id="container_email_input" class="container_name_container_email_input" type="password" onfocus="move_container_email_div()" onfocusout="move_container_email_div_return()">
            <div id="container_email_div">이메일 주소</div>
        </div>
        <div class="container_login">
            <input type="submit" value="조회 하기">
        </div>
    </div>
    <script type="text/javascript">
        var name_div = $('#container_name_div');
        var name_input = $('#container_name_input');
        var email_div = $('#container_email_div');
        var email_input = $('#container_email_input');
        
        function move_container_name_div() {
            name_div.css('fontSize', '10px');
            name_div.css('bottom', '392px');
            name_input.css('borderBottom', '2px solid #4f9f4f');
        }

        function move_container_name_div_return() {
            if (name_input.val() == "") {
                name_div.css('fontSize', '16px');
                name_div.css('bottom', '362px');
                name_input.css('borderBottom', '1px solid #c0c0c0');
            }
        }

        function move_container_email_div() {
            email_div.css('fontSize', '10px');
            email_div.css('bottom', '294px');
            email_input.css('borderBottom', '2px solid #4f9f4f');
        }

        function move_container_email_div_return() {
            if ((email_input.val() == "")) {
                email_div.css('fontSize', '16px');
                email_div.css('bottom', '264px');
                email_input.css('borderBottom', '2px solid #c0c0c0');
            }
        }
    </script>
</body>

</html>
