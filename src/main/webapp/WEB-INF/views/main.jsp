<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>SARF</title>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<link rel="stylesheet" href="/resources/css/main.css" />
<link rel="stylesheet" href="/resources/css/css_menu.css" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="/resources/js/main.js"></script>

</head>
<body>

	<c:if test="${deletemsg == false}">
		<script>alert('회원 탈퇴되었습니다.');</script>
	</c:if>
   <!-- main1 -->
   <div class="loading-container">
      <div class="ldoor">
         <img class="imgsize" src="/resources/images/ldoorimage.jpg">
      </div>
      <div class="rdoor">
         <img class="imgsize" src="/resources/images/rdoorimage.jpg">
      </div>
   </div>
   <!-- 로고 메뉴-->
<header>
    <!-- 로고 -->
      <div class="logo">
         <img src="/resources/images/logo.jpg" alt="로고" width="300px">
      </div>

		<!-- 메뉴 -->
		<input type="checkbox" id="menuicon"> <label for="menuicon">
			<span></span> <span></span> <span></span>
		</label>

		<div class="sidebar">
			<a href="/n_board/notice">공지사항</a>
			<hr>
		
		<div class="board">
			<a class="cursor">게시판</a>
			<div>
				<a href="/board/list"><button class="bd menubar-button">- 자유 게시판</button></a>
				<br>				
				<p>
					<a href="/a_board/a_list"><button class="bd menubar-button">- 명소 게시판</button></a>
				</p>				
				<br>				
				<p>
					<a href="/r_board/r_list"><button class="bd menubar-button">- 맛집 게시판</button></a>
				</p>				
				<br>			
				<p>
					<a href="/v_board/v_list"><button class="bd menubar-button">- 축제 게시판</button></a>
				</p>
				
				<br>
			</div>
		</div>
			<hr>
			<a href="/resources/etc/attraction.jsp">명소</a>
			<hr>
			<a href="/resources/etc/restaurant.jsp">맛집</a>
			<hr>
			<a href="/resources/etc/festival.jsp">축제</a>
			<hr>
			
		<div class="board">
			<a href="/qna_board/faq">고객센터</a>
			<div>
				<a href="/qna_board/faq"><button style="margin-right:120px" class="bd menubar-button">- QnA</button></a>
				<br>				
				<p>
					<a href="/qna_board/qna_list"><button class="bd menubar-button">- 묻고 답하기</button></a>
				</p>				
			</div>
		</div>
			
			<hr>
			<a href="/resources/etc/intro.jsp">운영진 소개</a>
			<!-- 공지사항 게시판 명소 맛집 축제 고객지원 운영진소개 -->
			<c:choose>
         	<c:when test="${member == null}">
         		<button class="menubar-button" id="signup" onclick="location.href='/member/join'">회원가입</button>
         		<button class="menubar-button" id="login" onclick="location.href='/member/login'">로그인</button>
         	</c:when>
	        <c:otherwise>
	        	<div>${member.getId()} 님</div>
	        	<button class="menubar-button" id="updateuser" onclick="location.href='/member/updatemember'">회원정보수정</button>
				<button class="menubar-button" id="logout" onclick="location.href='/member/logout'">로그아웃</button>
			</c:otherwise>
		 </c:choose>
		</div>
	</header>
	<br>
	<!-- 지도, 팝업, 소개 -->
	<main>
		<!-- 지도 -->
		<article class="map">
			<img usemap="#seoul" src="/resources/images/map_seoul.jpg" alt="지도" width="100%">

			<map name="seoul">
				<area shape="poly" class="west" onmouseover=""
					coords="84,284,78,299,84,322,39,373,28,381,32,401,0,416,19,436,64,449,72,473,103,451,137,460,144,487,152,492,141,530,137,566,128,574,116,577,119,597,140,605,130,615,132,631,121,643,129,651,134,642,152,643,162,638,170,644,183,640,198,648,199,624,213,625,247,593,261,603,257,612,286,667,282,670,299,707,318,731,320,751,353,751,362,741,373,740,387,714,412,739,414,748,420,752,475,738,479,724,502,718,521,692,530,691,530,663,514,648,518,576,524,569,498,550,433,519,398,532,384,523,428,516,396,482,376,478,342,474,271,416,111,311,84,282,83,280,70,278,56"
					alt="강서">
				<area shape="poly" class="east"
					coords="904,519,944,439,989,438,972,339,907,379,867,383,850,410,823,396,811,404,794,391,836,295,837,232,775,237,722,244,743,365,696,474,744,492,772,484,812,444,845,459,839,492,903,519"
					alt="강동">
				<area shape="poly" class="north"
					coords="238,355,360,448,392,443,444,479,453,504,514,528,560,503,608,449,697,474,746,362,720,303,723,236,771,226,808,226,825,160,779,155,783,33,762,30,750,9,703,16,677,38,672,17,633,24,620,2,579,10,573,45,538,61,542,98,508,130,523,186,493,194,430,116,356,162,339,150,338,222,323,252,319,314,290,314,291,298,237,354"
					alt="강북">
				<area shape="poly" class="south"
					coords="831,448,846,461,839,494,903,522,893,550,919,554,944,570,899,643,834,687,782,679,753,737,733,747,654,747,638,740,636,676,633,669,602,704,582,698,563,665,547,667,526,694,509,551,537,545,621,475,683,490,721,518,765,518,810,491,831,450"
					alt="강남">
			</map>
		</article>

		<!-- 중단 팝업(default 안보임 상황에 따른 변화 필요 jsp) -->
		<article class="popup">
			<div data-aos="fade-up">
				<img src="/resources/images/a1.jpg" alt="명소" width="300px"
					height="300px">
				<p>명소</p>
			</div>
			<div data-aos="fade-up">
				<img src="/resources/images/r1.jpg" alt="맛집" width="300px"
					height="300px">
				<p>맛집</p>
			</div>
			<div data-aos="fade-up">
				<img src="/resources/images/f1.jpg" alt="축제" width="300px"
					height="300px">
				<p>축제</p>
			</div>
		</article>

		<!-- 개발자 소개 -->
		<article class="intro">
			<p>SARF 전문가와 만나보세요</p>
			<button onclick="location.href='introduce/OurDeveloper.jsp'">Contact
				us</button>
		</article>
	</main>

	<!-- 회사 소개 -->
	<footer>
		<p>
			㈜메타넷티플랫폼 I 주소 : 서울 종로구 종로 33길 15 (연지동, 연강빌딩)<br> Tel :
			02-3218-6300 I Fax : 02-518-1969
		</p>
		<p>Copyright © 2020 Metanet Tplatform. All Rights Reserved.</p>
	</footer>
	<script>
    $(".west").on("click", function(e){
        e.preventDefault();
        
        window.scrollTo({
	        top:700, 
	        behavior:'smooth'
	    });

    });
    $(".east").on("click", function(e){
        e.preventDefault();
        
        window.scrollTo({
	        top:700, 
	        behavior:'smooth'
	    });

    });
    $(".north").on("click", function(e){
        e.preventDefault();
        
        window.scrollTo({
	        top:700, 
	        behavior:'smooth'
	    });

    });
    $(".south").on("click", function(e){
        e.preventDefault();
        
        window.scrollTo({
	        top:700, 
	        behavior:'smooth'
	    });

    });
    /* 문열림 효과, 새로고침시 항상 위로 */
    $(window).on('load', function() {
    	$('.loading-container').fadeOut();
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