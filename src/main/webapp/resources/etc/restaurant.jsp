<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>tab example</title>
	<style>
		#container {
			width:960px;
			margin:0 auto;
			text-align:left;
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
			transition:0.3s;
            width: 208px;

		}
        
        
		/* Style the tab content */
		.tabcontent {
			display: none;
			background-color: #EBEBE9;
			padding: 6px 12px;
			color:#000;
		}
        
       .tabcontent.current {
			display: block;
		}
        
        
        
        .tabcontent2 {
			display: none;
			background-color: #E3E6DA;
			padding: 6px 12px;
			color:#000;
		}
          .tabcontent2.current {
			display: block;
		}
        
        
        
        .tabcontent3 {
			display: none;
			background-color: #C0CEB2;
			padding: 6px 12px;
			color:#000;
		}
          .tabcontent3.current {
			display: block;
		}

        
        
        .tabcontent4 {
			display: none;
			background-color: #8AA989;
			padding: 6px 12px;
			color:#000;
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
        
        .button_1 {
             position: absolute;
             left: 67%;
        }
        .button_2 {
             position: absolute;
             left: 70%;
        }
         
         
        
    
	</style>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link href = "https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel = "stylesheet">

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
        <hr style = "border: solid 3px black"; />
        <br>
        <br>

		<ul class="tab">
            <li  data-tab="tab1" class = "cool-link"><a href="#none">#강동</a></li>
            <li data-tab="tab2" class = "cool-link" ><a href="#none">#강서</a></li>
			<li data-tab="tab3" class = "cool-link" ><a href="#none">#강남</a></li>
			<li data-tab="tab4" class = "cool-link"><a href="#none">#강북</a></li>
		</ul>

        <div id="tab1" class="tabcontent current">
                
			<h3>1. 보타이<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>

            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
             <td><img src = "../images/res_image/Dong_2/Botai_1.png"></td>
                <td><img src = "../images/res_image/Dong_2/Botai_2.png"></td>
                <td><img src = "../images/res_image/Dong_2/Botai_3.png"></td>
            </table>
            
             - 장소: 서울 강동구 풍성로 90
            <br>
             - 이용 시간: 매일 11:30 ~ 21:30       

            <br>
            - 가격표: 팟타이 - 10,000원, 무쌉랏카오 - 9,000원, 똠양꿍/똠양까이 - 12,000원
          

            <br>
            <br>       
        
            <h3>2. 봉래 면옥 <button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Dong_2/Bong_1.png"></td>
                <td><img src = "../images/res_image/Dong_2/Bong_2.png"></td>
                <td><img src = "../images/res_image/Dong_2/Bong_3.png"></td>
            </table>
                        
  - 장소: 서울 강동구 명일로 200-16
            <br>
             - 이용 시간: 매일 11:00 ~ 22:00       

            <br>
            - 가격표: 평양냉면 - 10,000원, 갈비탕 - 12,000원, 사골만두국 - 9,000원
          

            <br>
            <br>                   
            
            
            
            <h3>3. 진미 한우 곱창<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Dong_2/Jin_1.png"></td>
                <td><img src = "../images/res_image/Dong_2/Jin_2.png"></td>
                <td><img src = "../images/res_image/Dong_2/Jin_3.png"></td>
            </table>
                        
  - 장소: 서울 강동구 천중로40길 50
            <br>
             - 이용 시간: 매일 17:00 ~ 23:00       

            <br>
            - 가격표: 황소곱창(1인분) - 28,000원, 소막창(1인분) - 28,000원, 토시살(1인분) - 23,000원
          

            <br>
            <br>                     
            <h3>4. 커피 몽타주<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
            
           <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Dong_2/Coffee_1.png"></td>
                <td><img src = "../images/res_image/Dong_2/Coffee_2.png"></td>
                <td><img src = "../images/res_image/Dong_2/Coffee_3.png"></td>
            </table>
        
            
  - 장소: 서울 강동구 올림픽로48길 23-12 상지빌딩 1층
            <br>
             - 이용 시간: 매일 08:00 ~ 18:00       

            <br>
            - 가격표: 아메리카노 - 4,000원, 카페라떼 - 4,500원, 카푸치노 - 4,500원
          

            <br>
            <br>                     
            <h3> 5. 풍년상회 쪽갈비<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/res_image/Dong_2/Poong_1.png"></td>
                <td><img src = "../images/res_image/Dong_2/Poong_2.png"></td>
                <td><img src = "../images/res_image/Dong_2/Poong_3.png"></td>   
            </table>
            
  - 장소: 서울 강동구 천호옛14길 23-6
            <br>
             - 이용 시간: 매일 16:00 ~ 24:00       

            <br>
            - 가격표: 양념쪽갈비 - 14,000원, 매운쪽갈비 - 14,000원, 최루탄주먹밥 - 9,000원
          

            <br>
            <br>       
            
		  </div>

        
		<div id="tab2" class="tabcontent2">
			<h3>1. 등촌 최월선 칼국수<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
             <td><img src = "../images/res_image/Seo_2/Cal_1.png"></td>
                <td><img src = "../images/res_image/Seo_2/Cal_2.png"></td>
                <td><img src = "../images/res_image/Seo_2/Cal_3.png"></td>
            </table>
            
  - 장소: 서울 강서구 화곡로64길 68
            <br>
             - 이용 시간: 매일 11:30 ~ 21:30       

            <br>
            - 가격표: 버섯 매운탕 - 8,000원, 버섯 추가(1인분) - 7,000원, 미나리 추가 - 2,000원
          

            <br>
            <br>                     
            <h3>2. 발산 삼계탕<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Seo_2/Sam_1.png"></td>
                <td><img src = "../images/res_image/Seo_2/Sam_2.png"></td>
                <td><img src = "../images/res_image/Seo_2/Sam_3.png"></td>
            </table>
                        
  - 장소: 서울 강서구 강서로 344
            <br>
             - 이용 시간: 매일 11:00 ~ 21:30       

            <br>
            - 가격표: 발산 삼계탕 - 17,000원, 산삼배양근삼계탕 - 22,000원, 발산숯불구이 600g - 15,000원
          

            <br>
            <br>                   
            
            
            
            <h3>3. 영양족발 순대국<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Seo_2/Young_1.png"></td>
                <td><img src = "../images/res_image/Seo_2/Young_2.png"></td>
                <td><img src = "../images/res_image/Seo_2/Young_3.png"></td>
            </table>
                        
  - 장소: 서울 강서구 초록마을로2길 48 1층 화곡영양족발
            <br>
             - 이용 시간: 평일 11:30 ~ 22:00, 주말 11:00 오픈       

            <br>
            - 가격표: 족발(대) - 35,000원, 족발(중) - 31,000원, 순대국 - 7,000원
          

            <br>
            <br>                     
            <h3> 4. 원조 나주 곰탕<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
            
           <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Seo_2/Na_1.png"></td>
                <td><img src = "../images/res_image/Seo_2/Na_2.png"></td>
                <td><img src = "../images/res_image/Seo_2/Na_3.png"></td>
            </table>
        
            
  - 장소: 서울 강서구 양천로14길 10
            <br>
             - 이용 시간: 매일 11:30 ~ 19:30        

            <br>
            - 가격표: 나주곰탕 - 10,000원, 나주곰탕(특) - 13,000원, 수육(소) - 20,000원
          

            <br>
            <br>                     
            <h3> 5. 형제 돈부리<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/res_image/Seo_2/Don_1.png"></td>
                <td><img src = "../images/res_image/Seo_2/Don_2.png"></td>
                <td><img src = "../images/res_image/Seo_2/Don_3.png"></td>   
            </table>
            
  - 장소: 서울 강서구 마곡중앙로 161-8 두산더랜드파크 A동 221호
            <br>
             - 이용 시간: 일요일 휴무     

            <br>
            - 가격표: 가츠동 - 8,000원, 사케동 - 12,000원, 규동 - 9,000원
          

            <br>
            <br>                 
            
			
		</div>

        
        <div id="tab3" class="tabcontent3">
                
			<h3>1. 로바타탄요<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
             <td><img src = "../images/res_image/Nam_2/Ro_1.png"></td>
                <td><img src = "../images/res_image/Nam_2/Ro_2.png"></td>
                <td><img src = "../images/res_image/Nam_2/Ro_3.png"></td>
            </table>
            
  - 장소: 서울 강남구 압구정로28길 49
            <br>
             - 이용 시간: 매일 18:00 ~ 01:00       

            <br>
            - 가격표: 야채모듬 - 15,000원, 닭모듬 - 25,000원, 생선구이 - 18,000~23,000원
          

            <br>
            <br>                     
            <h3>2. 소이연남마오<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Nam_2/Soi_1.png"></td>
                <td><img src = "../images/res_image/Nam_2/Soi_2.png"></td>
                <td><img src = "../images/res_image/Nam_2/Soi_3.png"></td>
            </table>
                        
  - 장소: 서울 강남구 도산대로53길 30
            <br>
             - 이용 시간: 런치 - 11:30 ~ 16:00, 디너 - 18:00 ~ 02:00(월/일 휴무)       

            <br>
            - 가격표: 소고기국수 - 9,500원, 똠얌누들 - 12,000원, 소이뽀삐아 - 13,000원
          

            <br>
            <br>                   
            
            
            
            <h3>3. 시라카와 덴푸라<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Nam_2/Sira_1.png"></td>
                <td><img src = "../images/res_image/Nam_2/Sira_2.png"></td>
                <td><img src = "../images/res_image/Nam_2/Sira_3.png"></td>
            </table>
                        
  - 장소: 서울 강남구 선릉로161길 7 1층 시라카와
            <br>
             - 이용 시간: 매일 18:00 ~ 24:00(2,4번째주 월요일 휴무)     

            <br>
            - 가격표: 덴푸라(1인분) 5종 모듬 - 9,900원, 오늘의 텐동 - 12,000원
          

            <br>
            <br>                     
            <h3>4. 이치에<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
            
           <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Nam_2/Ichi_1.png"></td>
                <td><img src = "../images/res_image/Nam_2/Ichi_2.png"></td>
                <td><img src = "../images/res_image/Nam_2/Ichi_3.png"></td>
            </table>
        
            
  - 장소: 서울 강남구 선릉로155길 23-3 2층
            <br>
             - 이용 시간: 일요일 휴무     

            <br>
            - 가격표: 사시미모리아와세(모둠생선회) - 59,000원, 혼마구로 - 33,000원, 아나고텐푸라(바다장어튀김) - 28,000원
          

            <br>
            <br>                     
            <h3> 5. 쿠이신보<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3> 
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/res_image/Nam_2/Cui_1.png"></td>
                <td><img src = "../images/res_image/Nam_2/Cui_2.png"></td>
                <td><img src = "../images/res_image/Nam_2/Cui_3.png"></td>   
            </table>
            
  - 장소: 서울 강남구 도산대로55길 40 1층
            <br>
             - 이용 시간: 화~목 17:30 ~ 00:00, 금~토 17:30 ~ 01:00       

            <br>
            - 가격표: 지도리 오마카세 - 78,000원, 쿠이신보 오마카세 - 54,000원, 야키토리 오마카세 - 25,000원
          

            <br>
            <br>                 
            
		  </div>
	

        
        <div id="tab4" class="tabcontent4">
                
		<h3>1. 미성옥<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
             <td><img src = "../images/res_image/Book_2/Mi_1.png"></td>
                <td><img src = "../images/res_image/Book_2/Mi_2.png"></td>
                <td><img src = "../images/res_image/Book_2/Mi_3.png"></td>
            </table>
            
  - 장소: 서울 중구 명동길 25-11
            <br>
             - 이용 시간: 매일 06:00 ~ 22:00 연중무휴       

            <br>
            - 가격표: 설렁탕 - 10,000원, 설렁탕(특) - 12,000원, 수육(소) - 30,000원, 수육(대) 40,000원
          

            <br>
            <br>                     
            <h3>2. 산울림 1992<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Book_2/San_1.png"></td>
                <td><img src = "../images/res_image/Book_2/San_2.png"></td>
                <td><img src = "../images/res_image/Book_2/San_3.png"></td>
            </table>
                        
  - 장소: 서울 마포구 서강로9길 60 산울림1992
            <br>
             - 이용 시간: 월~토 17:00 ~ 01:30, 일요일 15:00 ~ 00:00       

            <br>
            - 가격표: 반상1(고린곤졸라떡구이 + 매운쭈꾸미 + 족발 편육 + 토마토 절임) - 35,000원, 반상2(두부 김치 + 먹물 오징어 튀김 + 페스트리 만두 + 비빔 파스타 - 37,000원, 반상3(한우 내장찜 + 한우 육사시미 + 수비드 된장 맥적 + 눈개승마 절임) - 40,000원
          

            <br>
            <br>                   
            
            
            
            <h3>3. 오레노 라멘<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Book_2/Oh_1.png"></td>
                <td><img src = "../images/res_image/Book_2/Oh_2.png"></td>
                <td><img src = "../images/res_image/Book_2/Oh_3.png"></td>
            </table>
                        
  - 장소: 서울 마포구 독막로6길 14
            <br>
             - 이용 시간: 매일 11:30 ~ 21:00       

            <br>
            - 가격표: 토리빠이탄 라멘 - 9,000원, 카리빠이탄 라멘 - 9,000원, 쇼유라멘 - 9,000원
          

            <br>
            <br>                     
            <h3>4. 오스테리아 오르조<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
            
           <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/res_image/Book_2/Ohs_1.png"></td>
                <td><img src = "../images/res_image/Book_2/Ohs_2.png"></td>
                <td><img src = "../images/res_image/Book_2/Ohs_3.png"></td>
            </table>
        
            
  - 장소: 서울 용산구 한남대로20길 47
            <br>
             - 이용 시간: 매일 12:00 ~ 22:00       

            <br>
            - 가격표: 카프레제 - 19,000원, 루꼴라 - 28,000원, 조개 파스타 - 24,000원
          

            <br>
            <br>                     
            <h3> 5. 진만두<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/res_image/Book_2/Jinman_1.png"></td>
                <td><img src = "../images/res_image/Book_2/Jinman_2.png"></td>
                <td><img src = "../images/res_image/Book_2/Jinman_3.png"></td>   
            </table>
            
  - 장소: 서울 마포구 와우산로29길 4-42
            <br>
             - 이용 시간: 매일 12:00 ~ 22:00       

            <br>
            - 가격표: 동파육(한정소량) - 26,000원, 오향진장육 - 18,000원, 라오추 피단 - 13,000원
          

            <br>
            <br>                 
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