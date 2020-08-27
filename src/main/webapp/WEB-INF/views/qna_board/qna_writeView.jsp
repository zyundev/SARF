<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>Document</title>
<link rel="stylesheet" href="oneqna.css">
<!-- 구글 나눔고딕-->
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">	
</head>
<body>
	<div class="mainarea">
	<div class="text">1:1문의</div>
	<table>
		<tr>
          <th>제목</th><td>
          	<input type="text" maxlength="100">
          </td>
        </tr>
		<tr>
          <th>이름</th><td><input  class="namemail" type="text" maxlength="100"></td>
        </tr>  
		<tr>
          <th>휴대폰번호</th><td><input class="namemail" type="text" maxlength="100"><b>*필수 기입사항이 아닙니다.</b></td>
        </tr>  
		<tr>
          <th>이메일</th><td><input  class="namemail" type="text" maxlength="100"></td>
        </tr>  
		<tr>
          <th>내용</th><td><textarea placeholder="문의할 내용을 적어주세요."></textarea></td>
        </tr>  
	</table>
	</div>
	
	
</body>
</html>