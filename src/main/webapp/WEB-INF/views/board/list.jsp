<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>커뮤니티</title>
  <link rel="stylesheet" href="resources/css/list.css">
</head>
<body>
  <!--게시판 외형 -->
  
	<!-- location  -->
         <div class="board_list_wrap">
  <div class="loction">
		<span class="ar">&gt;</span>여행지
    <span class="ar">&gt;</span>
	  <span>명소</span>
	</div>
            <table class="board_list">
                <caption>게시판 목록</caption>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>글쓴이</th>
                        <th>작성일</th>
                        <th>조회</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>5</td>
                        <td class="tit">
                            <a href="view.html">글11</a><!-- 경로 재설정 -->
                        </td>
                        <td>admin</td>
                        <td>2019-08-09</td>
                        <td>조회수</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td class="tit">
                            <a href="view.html">글22</a>
                        </td>
                        <td>admin</td>
                        <td>2020-08-09</td>
                        <td>조회수</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td class="tit">
                            <a href="view.html">글33</a>
                        </td>
                        <td>admin</td>
                        <td>2020-08-09</td>
                        <td>조회수</td>
                    </tr>  
                </tbody>
            </table>
            <div style="float:right">
				  <button class="write_btn" onclick="location.href='board/write'">글쓰기</button> 
			      </div>
            <div class="paging"><!-- spring 클래스 하나 생성해서 조작해야하는 구간 -->
                <a href="#" class="bt">첫 페이지</a>
                <a href="#" class="bt">이전 페이지</a>?>
                <a href="#" class="num on">1</a>
                <a href="#" class="num">2</a>
                <a href="#" class="num">3</a>
                <a href="#" class="bt">다음 페이지</a>
                <a href="#" class="bt">마지막 페이지</a>
            </div>
        </div>
	
<div align="center" >
	<form method="post" action="boardlist.html" name="srchform">
		<select class ="srch_select"name="srchfield">
			<option value="all">모두</option>
			<option value="sub">제목</option>
			<option value="writer">글쓴이</option>
			<option value="content">내용</option>
		</select>
		<span class='green_window'>
			<input type='text' class='input_text' />
		</span>
			<button type='submit' class='sch_smit'>검색</button>
	</form>
</div>
</body>
</html>