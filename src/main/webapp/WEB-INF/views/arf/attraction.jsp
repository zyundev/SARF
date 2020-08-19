<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>tab example</title>
<style>
#container {
	width: 960px;
	margin: 0 auto;
	text-align: left;
}

.tab {
	font-family: 'Noto Sans KR', sans-serif;
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

/* Float the list items side by side */
.tab li {
	float: left;
}

/* Style the links inside the list items */

/* 강동, 서, 남, 북 탭 자체의 크기 조절 */
.tab li a {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition: 0.3s;
	width: 208px;
}

/* Style the tab content */
.tabcontent {
	display: none;
	background-color: #EBEBE9;
	padding: 6px 12px;
	color: #000;
}

.tabcontent.current {
	display: block;
}

.tabcontent2 {
	display: none;
	background-color: #E3E6DA;
	padding: 6px 12px;
	color: #000;
}

.tabcontent2.current {
	display: block;
}

.tabcontent3 {
	display: none;
	background-color: #C0CEB2;
	padding: 6px 12px;
	color: #000;
}

.tabcontent3.current {
	display: block;
}

.tabcontent4 {
	display: none;
	background-color: #8AA989;
	padding: 6px 12px;
	color: #000;
}

.tabcontent4.current {
	display: block;
}

/* 위에 박스 밑줄 효과 */
.cool-link::after {
	content: '';
	display: block;
	width: 0;
	height: 5px;
	background: #000;
}

.cool-link:hover::after {
	width: 100%;
}

/* 위에 박스 밑줄 효과 */
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

</head>
<body>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>





	<div id="container">
		<h2>명소</h2>
		<br>
		<hr style="border: solid 3px black" ; />
		<br> <br>

		<ul class="tab">
			<li data-tab="tab1" class="cool-link"><a href="#none">#강동</a></li>
			<li data-tab="tab2" class="cool-link"><a href="#none">#강서</a></li>
			<li data-tab="tab3" class="cool-link"><a href="#none">#강남</a></li>
			<li data-tab="tab4" class="cool-link"><a href="#none">#강북</a></li>
		</ul>

		<div id="tab1" class="tabcontent current">

			<h3>1. 미래능력개발교육원</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Dong/Mirae_1.jpg"></td>
				<td><img src="../images/att_image/Dong/Mirae_2.jpg"></td>
				<td><img src="../images/att_image/Dong/Mirae_3.jpg"></td>
			</table>

			글 설명

			<h3>2. 강풀 만화 거리</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Dong/Kang_1.jpg"></td>
				<td><img src="../images/att_image/Dong/Kang_2.jpg"></td>
				<td><img src="../images/att_image/Dong/Kang_3.jpg"></td>
			</table>

			글 설명




			<h3>3. 천호동 장미마을</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Dong/Rose_1.jpg"></td>
				<td><img src="../images/att_image/Dong/Rose_2.jpg"></td>
				<td><img src="../images/att_image/Dong/Rose_3.jpg"></td>
			</table>

			글 설명

			<h3>4. 서울 암사동 유적지</h3>


			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Dong/Am_1.jpg"></td>
				<td><img src="../images/att_image/Dong/Am_2.jpg"></td>
				<td><img src="../images/att_image/Dong/Am_3.jpg"></td>
			</table>


			글 설명

			<h3>5. 허브 천문 공원</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Dong/Hub_1.jpg"></td>
				<td><img src="../images/att_image/Dong/Hub_2.jpg"></td>
				<td><img src="../images/att_image/Dong/Hub_3.jpg"></td>
			</table>

			글 설명


		</div>


		<div id="tab2" class="tabcontent2">
			<h3>1. 허준 테마 거리</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Seo/Hu_1.jpg"></td>
				<td><img src="../images/att_image/Seo/Hu_2.jpg"></td>
				<td><img src="../images/att_image/Seo/Hu_3.jpg"></td>
			</table>


			글 설명

			<h3>2. 허준 박물관</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Seo/Park_1.jpg"></td>
				<td><img src="../images/att_image/Seo/Park_2.jpg"></td>
				<td><img src="../images/att_image/Seo/Park_3.jpg"></td>
			</table>

			글 설명

			<h3>3. 롯데 어린이식품체험관 SweetVill</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Seo/Sweet_1.jpg"></td>
				<td><img src="../images/att_image/Seo/Sweet_2.jpg"></td>
				<td><img src="../images/att_image/Seo/Sweet_3.jpg"></td>
			</table>

			글 설명

			<h3>4. 서울 식물원</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Seo/Sik_1.jpg"></td>
				<td><img src="../images/att_image/Seo/Sik_2.jpg"></td>
				<td><img src="../images/att_image/Seo/Sik_3.jpg"></td>
			</table>

			글 설명

			<h3>5. 강서 습지생태공원</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Seo/Sub_1.jpg"></td>
				<td><img src="../images/att_image/Seo/Sub_2.jpg"></td>
				<td><img src="../images/att_image/Seo/Sub_3.jpg"></td>
			</table>

			글 설명




		</div>


		<div id="tab3" class="tabcontent3">

			<h3>1. 코엑스 아쿠아리움</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Nam/Aqua_1.jpg"></td>
				<td><img src="../images/att_image/Nam/Aqua_2.jpg"></td>
				<td><img src="../images/att_image/Nam/Aqua_3.jpg"></td>
			</table>


			글 설명

			<h3>2. 한류 스타 거리(K-STAR Road)</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Nam/Road_1.jpg"></td>
				<td><img src="../images/att_image/Nam/Road_2.jpg"></td>
				<td><img src="../images/att_image/Nam/Road_3.jpg"></td>
			</table>

			글 설명

			<h3>3. 신사동 가로수길</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Nam/Ga_1.jpg"></td>
				<td><img src="../images/att_image/Nam/Ga_2.jpg"></td>
				<td><img src="../images/att_image/Nam/Ga_3.jpg"></td>
			</table>

			글 설명

			<h3>4. 봉은사</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Nam/Bong_1.jpg"></td>
				<td><img src="../images/att_image/Nam/Bong_2.jpg"></td>
				<td><img src="../images/att_image/Nam/Bong_3.jpg"></td>
			</table>

			글 설명

			<h3>5. 선정릉</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Nam/Son_1.jpg"></td>
				<td><img src="../images/att_image/Nam/Son_2.jpg"></td>
				<td><img src="../images/att_image/Nam/Son_3.jpg"></td>
			</table>

			글 설명



		</div>



		<div id="tab4" class="tabcontent4">

			<h3>1. 경복궁</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Book/Gyeong_1.jpg"></td>
				<td><img src="../images/att_image/Book/Gyeong_3.jpg"></td>
				<td><img src="../images/att_image/Book/Gyeong_2.jpg"></td>
			</table>


			글 설명

			<h3>2. 남산</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Book/Nam_1.jpg"></td>
				<td><img src="../images/att_image/Book/Nam_2.jpg"></td>
				<td><img src="../images/att_image/Book/Nam_3.jpg"></td>
			</table>

			글 설명

			<h3>3. 북촌 한옥 마을</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Book/Chon_1.jpg"></td>
				<td><img src="../images/att_image/Book/Chon_2.jpg"></td>
				<td><img src="../images/att_image/Book/Chon_3.jpg"></td>
			</table>

			글 설명

			<h3>4. 북서울 꿈의 숲</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Book/Seoul_1.jpg"></td>
				<td><img src="../images/att_image/Book/Seoul_2.jpg"></td>
				<td><img src="../images/att_image/Book/Seoul_3.jpg"></td>
			</table>

			글 설명

			<h3>5. 낙산 공원</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/att_image/Book/Nak_1.jpg"></td>
				<td><img src="../images/att_image/Book/Nak_2.jpg"></td>
				<td><img src="../images/att_image/Book/Nak_3.jpg"></td>
			</table>

			글 설명




		</div>

	</div>

	<script>
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
         		$('.tabcontent2').removeClass('current');
                $('.tabcontent3').removeClass('current');
         		$('.tabcontent4').removeClass('current');
				 $(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});
	</script>
</body>
</html>