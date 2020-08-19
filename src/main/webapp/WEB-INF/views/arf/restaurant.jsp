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
		<h2>맛집</h2>
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

			<h3>1. 보타이</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Dong_2/Botai_1.png"></td>
				<td><img src="../images/res_image/Dong_2/Botai_2.png"></td>
				<td><img src="../images/res_image/Dong_2/Botai_3.png"></td>
			</table>

			글 설명

			<h3>2. 봉래 면옥</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Dong_2/Bong_1.png"></td>
				<td><img src="../images/res_image/Dong_2/Bong_2.png"></td>
				<td><img src="../images/res_image/Dong_2/Bong_3.png"></td>
			</table>

			글 설명




			<h3>3. 진미 한우 곱창</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Dong_2/Jin_1.png"></td>
				<td><img src="../images/res_image/Dong_2/Jin_2.png"></td>
				<td><img src="../images/res_image/Dong_2/Jin_3.png"></td>
			</table>

			글 설명

			<h3>4. 커피 몽타주</h3>


			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Dong_2/Coffee_1.png"></td>
				<td><img src="../images/res_image/Dong_2/Coffee_2.png"></td>
				<td><img src="../images/res_image/Dong_2/Coffee_3.png"></td>
			</table>


			글 설명

			<h3>5. 풍년상회 쪽갈비</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Dong_2/Poong_1.png"></td>
				<td><img src="../images/res_image/Dong_2/Poong_2.png"></td>
				<td><img src="../images/res_image/Dong_2/Poong_3.png"></td>
			</table>

			글 설명


		</div>


		<div id="tab2" class="tabcontent2">
			<h3>1. 등촌 최월선 칼국수</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Seo_2/Cal_1.png"></td>
				<td><img src="../images/res_image/Seo_2/Cal_2.png"></td>
				<td><img src="../images/res_image/Seo_2/Cal_3.png"></td>
			</table>

			글 설명

			<h3>2. 발산 삼계탕</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Seo_2/Sam_1.png"></td>
				<td><img src="../images/res_image/Seo_2/Sam_2.png"></td>
				<td><img src="../images/res_image/Seo_2/Sam_3.png"></td>
			</table>

			글 설명




			<h3>3. 영양족발 순대국</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Seo_2/Young_1.png"></td>
				<td><img src="../images/res_image/Seo_2/Young_2.png"></td>
				<td><img src="../images/res_image/Seo_2/Young_3.png"></td>
			</table>

			글 설명

			<h3>4. 원조 나주 곰탕</h3>


			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Seo_2/Na_1.png"></td>
				<td><img src="../images/res_image/Seo_2/Na_2.png"></td>
				<td><img src="../images/res_image/Seo_2/Na_3.png"></td>
			</table>


			글 설명

			<h3>5. 형제 돈부리</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Seo_2/Don_1.png"></td>
				<td><img src="../images/res_image/Seo_2/Don_2.png"></td>
				<td><img src="../images/res_image/Seo_2/Don_3.png"></td>
			</table>

			글 설명



		</div>


		<div id="tab3" class="tabcontent3">

			<h3>1. 로바타탄요</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Nam_2/Ro_1.png"></td>
				<td><img src="../images/res_image/Nam_2/Ro_2.png"></td>
				<td><img src="../images/res_image/Nam_2/Ro_3.png"></td>
			</table>

			글 설명

			<h3>2. 소이연남마오</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Nam_2/Soi_1.png"></td>
				<td><img src="../images/res_image/Nam_2/Soi_2.png"></td>
				<td><img src="../images/res_image/Nam_2/Soi_3.png"></td>
			</table>

			글 설명




			<h3>3. 시라카와</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Nam_2/Sira_1.png"></td>
				<td><img src="../images/res_image/Nam_2/Sira_2.png"></td>
				<td><img src="../images/res_image/Nam_2/Sira_3.png"></td>
			</table>

			글 설명

			<h3>4. 이치에</h3>


			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Nam_2/Ichi_1.png"></td>
				<td><img src="../images/res_image/Nam_2/Ichi_2.png"></td>
				<td><img src="../images/res_image/Nam_2/Ichi_3.png"></td>
			</table>


			글 설명

			<h3>5. 쿠이신보</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Nam_2/Cui_1.png"></td>
				<td><img src="../images/res_image/Nam_2/Cui_2.png"></td>
				<td><img src="../images/res_image/Nam_2/Cui_3.png"></td>
			</table>

			글 설명


		</div>



		<div id="tab4" class="tabcontent4">

			<h3>1. 미성옥</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Book_2/Mi_1.png"></td>
				<td><img src="../images/res_image/Book_2/Mi_2.png"></td>
				<td><img src="../images/res_image/Book_2/Mi_3.png"></td>
			</table>

			글 설명

			<h3>2. 산울림 1992</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Book_2/San_1.png"></td>
				<td><img src="../images/res_image/Book_2/San_2.png"></td>
				<td><img src="../images/res_image/Book_2/San_3.png"></td>
			</table>

			글 설명




			<h3>3. 오레노 라멘</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Book_2/Oh_1.png"></td>
				<td><img src="../images/res_image/Book_2/Oh_2.png"></td>
				<td><img src="../images/res_image/Book_2/Oh_3.png"></td>
			</table>

			글 설명

			<h3>4. 오스테리아 오르조</h3>


			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Book_2/Ohs_1.png"></td>
				<td><img src="../images/res_image/Book_2/Ohs_2.png"></td>
				<td><img src="../images/res_image/Book_2/Ohs_3.png"></td>
			</table>


			글 설명

			<h3>5. 진만두</h3>

			<table>
				<!-- 300 * 225 픽셀의 이미지 고정 -->
				<td><img src="../images/res_image/Book_2/Jinman_1.png"></td>
				<td><img src="../images/res_image/Book_2/Jinman_2.png"></td>
				<td><img src="../images/res_image/Book_2/Jinman_3.png"></td>
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