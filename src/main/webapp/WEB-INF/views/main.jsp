<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <title>SARF</title>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="resources/css/main.css" />
    <link rel="stylesheet" href="resources/css/css_menu.css" />
    <script src="resources/js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
    
</head>
<body>
   <!-- main1 -->
   <div class="loading-container">

      <div class="ldoor">
         <img class="imgsize" src="resources/images/ldoorimage.jpg">
      </div>
      <div class="rdoor">
         <img class="imgsize" src="resources/images/rdoorimage.jpg">
      </div>

   </div>




   <script type="text/javascript">
      $(window).on('load', function() {

         $('.loading-container').fadeOut();

      });
   </script>


   <!-- 로고 메뉴-->
<header>
    <!-- 로고 -->
      <div class="logo">
         <img src="resources/images/logo.jpg" alt="로고" width="300px">
      </div>

      <!-- 메뉴 -->
      <input type="checkbox" id="menuicon"> <label for="menuicon">
         <span></span> <span></span> <span></span>
      </label>

      <div class="sidebar">
         <a href="#">공지사항</a>
         <hr>
         <a href="#">게시판</a>
         <hr>
         <a href="#">명소</a>
         <hr>
         <a href="#">맛집</a>
         <hr>
         <a href="#">축제</a>
         <hr>
         <a href="#">고객센터</a>
         <hr>
         <a href="#">운영진 소개</a>
         <!-- 공지사항 게시판 명소 맛집 축제 고객지원 운영진소개 -->
         <button class="menubar-button" id="signup">회원가입</button>
         <button class="menubar-button" id="login" onclick="location.href='member/login'">로그인</button>
      </div>
   </header>
<br>
<!-- 지도, 팝업, 소개 -->
<main>
    <!-- 지도 -->
    <article class="map">
        <img usemap="#seoul" src="resources/images/map_seoul.jpg" alt="지도" width="100%">

        <map name="seoul">
            <area shape="rect" coords="642,459,800,666" alt="강동" onclick="scroll()">
        </map>
    </article>
    
    <!-- 중단 팝업(default 안보임 상황에 따른 변화 필요 jsp) -->
    <article class="popup" >
        <div data-aos="fade-up">
            <img src="resources/images/a1.jpg" alt="명소" width="300px" height="300px">
            <p>명소</p>
        </div>
        <div data-aos="fade-up">
            <img src="resources/images/r1.jpg" alt="맛집" width="300px" height="300px">
            <p>맛집</p>
        </div>
        <div data-aos="fade-up">
            <img src="resources/images/f1.jpg" alt="축제" width="300px" height="300px">
            <p>축제</p>
        </div>
    </article>
    
    <!-- 개발자 소개 -->
    <article class="intro">
        <p>SARF 전문가와 만나보세요</p>
        <button onclick="location.href='introduce/OurDeveloper.jsp'">Contact us</button>
    </article>
</main>

<!-- 회사 소개 -->
<footer>
    <p>
        ㈜메타넷티플랫폼 I 주소 : 서울 종로구 종로 33길 15 (연지동, 연강빌딩)<br>
        Tel : 02-3218-6300 I Fax : 02-518-1969
    </p>
    <p>
        Copyright © 2020 Metanet Tplatform. All Rights Reserved.
    </p>
</footer>
<script>
    function scroll(){
        window.scrollTo({
            top:550, 
            behavior:'smooth'
        });
    /*
        현재 스크롤 확인
        var scrollPosition = window.scrollY || document.documentElement.scrollTop;
        console.log(scrollPosition);
    */
    }
        $(window).on('load', function() {
            setTimeout(function(){
                scrollTo(0,0);
            }, 100);
            $('.loading-container');
        });
</script>
<script>
    AOS.init();
</script>
</body>
</html>