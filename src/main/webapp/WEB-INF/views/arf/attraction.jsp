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
		<h2>명소</h2>
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
                
			<h3>1. 미래능력개발교육원<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button></h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
             <td><img src = "../images/att_image/Dong/Mirae_1.jpg"></td>
                <td><img src = "../images/att_image/Dong/Mirae_2.jpg"></td>
                <td><img src = "../images/att_image/Dong/Mirae_3.jpg"></td>
            </table>
            
             - 장소: 서울 강동구 천호대로 1095 현대코아 3층
            <br>
             - 이용 시간: 평일 09:00 ~ 18:00
            <br>
             - 특징: C, JAVA, PHP 위주로 교육하는 강동의 'IT' 전문 교육 기관
            <br>
             - 대표 교수: 양기석 교수님
            
            <br>
            <br>   
                            
            <h3>2. 강풀 만화 거리<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button></h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/att_image/Dong/Kang_1.jpg"></td>
                <td><img src = "../images/att_image/Dong/Kang_2.jpg"></td>
                <td><img src = "../images/att_image/Dong/Kang_3.jpg"></td>
            </table>
            
             - 장소: 서울 강동구 천호대로168가길 38-3
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: 강풀의 웹툰 속 장면들을 벽화에 담은 만화거리

            <br>
            <br>
            
            
            
            
            <h3>3. 천호동 장미마을<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/att_image/Dong/Rose_1.jpg"></td>
                <td><img src = "../images/att_image/Dong/Rose_2.jpg"></td>
                <td><img src = "../images/att_image/Dong/Rose_3.jpg"></td>
            </table>
                        
             - 장소: 서울 강동구 천호2동 장미마을

            <br>
            - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
             - 특징: 장미와 어린왕자를 모티브로 벽화가 조성된 마을
            
            <br>
            <br>   
            
            
            <h3>4. 서울 암사동 유적지<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
            
           <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/att_image/Dong/Am_1.jpg"></td>
                <td><img src = "../images/att_image/Dong/Am_2.jpg"></td>
                <td><img src = "../images/att_image/Dong/Am_3.jpg"></td>
            </table>
            
             - 장소: 서울 강동구 올림픽로 875 암사선사유적전시관
            <br>
             - 이용 시간: 매일 09:30 ~ 18:00(월요일 휴무)
            <br>
             - 가격: 어른(19세 ~ 64세) - 500원, 어린이(7세 ~ 18세) - 300원
            <br>
            - 특징: 한강 유역의 대표적인 신석기 시대 유적. 20여 기의 집터와 돌무지 시설이 발견되었으며, 빗살무늬 토기와 돌도끼, 그물추 따위가 출토되었다. 
            
            <br>
            <br>   
            
            
                
            <h3>5. 허브 천문 공원<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Dong/Hub_1.jpg"></td>
                <td><img src = "../images/att_image/Dong/Hub_2.jpg"></td>
                <td><img src = "../images/att_image/Dong/Hub_3.jpg"></td>   
            </table>
            
             - 장소: 서울 강동구 둔촌동 산86
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00
            <br>
             - 가격: 무료
            
            <br>
            - 특징: 일자산 기슭에 허브원과 자생원, 약초원, 암석원, 온실 등이 조성된 공원.
             120여 종의 허브와 약용식물 자생식물 47종이 심어져 있다.
            <br>
            <br>
            <br>   
            
            
		  </div>

        
		<div id="tab2" class="tabcontent2">
			<h3>1. 허준 테마 거리 <button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button></h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Seo/Hu_1.jpg"></td>
                <td><img src = "../images/att_image/Seo/Hu_2.jpg"></td>
                <td><img src = "../images/att_image/Seo/Hu_3.jpg"></td>   
            </table>       

              - 장소: 서울 강서구 가양2동 18-46
            <br>
             - 이용 시간: 평일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: 허준 선생과 동의보감에 대한 스토리를 담아낸 거리

            <br>
            <br>
            
            <h3>2. 허준 박물관<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Seo/Park_1.jpg"></td>
                <td><img src = "../images/att_image/Seo/Park_2.jpg"></td>
                <td><img src = "../images/att_image/Seo/Park_3.jpg"></td>   
            </table>  
            
              - 장소: 서울 강서구 허준로 87 허준박물관
            <br>
             - 이용 시간: 평일 10:00 ~ 18:00

            <br>
            - 가격: 일반 - 1,000원, 학생 및 군경 - 500원
            <br>
            - 특징: 구암 허준의 학문적 업적을 기리기 위해 건립한 한의학 전문박물관. 허준 관련 유물, 허준의 저서, 약초 자료 등이 전시되어 있다.

            <br>
            <br>
            
            
            
             <h3>3. 롯데 어린이식품체험관 SweetVill <button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Seo/Sweet_1.jpg"></td>
                <td><img src = "../images/att_image/Seo/Sweet_2.jpg"></td>
                <td><img src = "../images/att_image/Seo/Sweet_3.jpg"></td>   
            </table>  
            
             - 장소: 서울 강서구 마곡중앙로 201 롯데중앙연구소
            <br>
             - 이용 시간: 평일 10:00 ~ 17:00

            <br>
            - 가격: 예약제(무료)
            <br>
            - 특징: 스위트빌(SweetVill)이란 '달콤한 마을로 떠나는 여행'이라는 컨셉으로, 롯데의 식품을 테마로 구성한 식품 견학, 바른 식생활 교육 그리고 다양한 쿠킹 클래스 체험까지 주는 공간

            <br>
            <br>
            
            
             <h3>4. 서울 식물원<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Seo/Sik_1.jpg"></td>
                <td><img src = "../images/att_image/Seo/Sik_2.jpg"></td>
                <td><img src = "../images/att_image/Seo/Sik_3.jpg"></td>   
            </table>  
            
             - 장소: 서울 강서구 마곡동로 161 서울식물원
            <br>
             - 이용 시간: 매일 09:30 ~ 18:00(3~10월)/입장마감 17:00

            <br>
            - 가격: 어른 - 5,000원, 청소년(13세 ~ 18세) - 3,000원, 어린이(6세 ~ 12세) 2,000원
            <br>
            - 특징: 세계 12개 도시의 식물과 식물 문화를 소개하는 식물원

            <br>
            <br>
            
            
            
             <h3>5. 강서 습지생태공원<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Seo/Sub_1.jpg"></td>
                <td><img src = "../images/att_image/Seo/Sub_2.jpg"></td>
                <td><img src = "../images/att_image/Seo/Sub_3.jpg"></td>   
            </table>  
            
             - 장소: 서울 강서구 방화동
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: 방화대교 남쪽 끝에서 행주대교 남쪽 끝 사이 한강 둔치에 있는 생태공원. 습생, 수생식물, 갈대밭, 버드나무숲 등의 습지생태계를 볼 수 있다.

            <br>
            <br>
            
            
            
			
		</div>

        
        <div id="tab3" class="tabcontent3">
                
			<h3>1. 코엑스 아쿠아리움<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Nam/Aqua_1.jpg"></td>
                <td><img src = "../images/att_image/Nam/Aqua_2.jpg"></td>
                <td><img src = "../images/att_image/Nam/Aqua_3.jpg"></td>   
            </table>       

            - 장소: 서울 강남구 영동대로 513
            <br>
             - 이용 시간: 매일 10:00 ~ 21:00

            <br>
            - 가격: 성인/청소년(만13세 이상) - 28,000원, 어린이(36개월 이상 ~ 만12세) - 24,000원
            <br>
            - 특징: 2000년 5월 3일에 개장한 한국의 대표적인 아쿠아리움 중 하나이다. 전시 수조 183개, 사육 수조 90개, 전시 탱크 용량 3,500톤, 전시 생물 650여 종 4만여 마리를 보유하고 있고, 간판 생물은 매너티와 모래뱀상어, 그리고 훔볼트펭귄이다.

            <br>
            <br>
              
            
            
            <h3>2. 한류 스타 거리(K-STAR Road)<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Nam/Road_1.jpg"></td>
                <td><img src = "../images/att_image/Nam/Road_2.jpg"></td>
                <td><img src = "../images/att_image/Nam/Road_3.jpg"></td>   
            </table>  
            
             - 장소: 서울 강남구 압구정동 394
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: 한류 문화와 스타를 사랑하는 해외 관광객들을 위한 강남구의 특별한 거리. ‘Star’라는 키워드에 초점을 맞춰 강남구의 청담동·신사동·논현동 일대에서 한류 스타들이 즐겨 찾는 단골 숍과 그들의 라이프 스타일을 엿볼 수 있는 공간을 담아내 조성한 거리이다.

            <br>
            <br>
            
            
            
             <h3>3. 신사동 가로수길<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Nam/Ga_1.jpg"></td>
                <td><img src = "../images/att_image/Nam/Ga_2.jpg"></td>
                <td><img src = "../images/att_image/Nam/Ga_3.jpg"></td>   
            </table>  
             - 장소: 서울 강남구 신사동
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: 3호선 신사역에서 압구정 현대고등학교 앞으로 통하는 은행나무길.
            ‘예술가의 거리’ 라 불리는 신사동 가로수길 주위로는 아기자기한 커피숍과 맛집, 디자이너들의 옷 매장들이 즐비해 있어 이국적인 분위기를 연출한다.

            <br>
            <br>
             
            
            
             <h3>4. 봉은사<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Nam/Bong_1.jpg"></td>
                <td><img src = "../images/att_image/Nam/Bong_2.jpg"></td>
                <td><img src = "../images/att_image/Nam/Bong_3.jpg"></td>   
            </table>  
            
            - 장소: 서울 강남구 봉은사로 531 봉은사
            <br>
             - 이용 시간: 매일 06:00 ~ 20:00(3~10월), 06:30 ~ 20:00(11~2월), 매주 월요일 휴무

            <br>
            - 가격: 무료
            <br>
            - 특징: 서기 794년 신라 원성왕 시절에 창건된 1,200년의 역사를 자랑하는 사찰. 본래는 수도산(修道山)에 있는 산사(山寺)였지만, 강남 지역의 발달 및 도심화로 인해 현재처럼 도시 가운데 있는 모습이 되었다. 도심의 건물들과 어우러지는 야경이 매우 아름다운 사찰이다.

            <br>
            <br>
              
            
            
             <h3>5. 선정릉 <button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button></h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Nam/Son_1.jpg"></td>
                <td><img src = "../images/att_image/Nam/Son_2.jpg"></td>
                <td><img src = "../images/att_image/Nam/Son_3.jpg"></td>   
            </table>  
            
           - 장소: 서울 강남구 선릉로100길 1 선릉정릉
            <br>
             - 이용 시간: 매일 06:00 ~ 21:00(3~10월)

            <br>
            - 가격: 내국인 개인(만25세 ~ 만64세) - 1,000원, 외국인 개인(만19세 ~ 만64세) - 1,000원, 외국인 개인(만7세 ~ 만18세) - 500원
            <br>
            - 특징: 조선왕릉 중 하나인 선릉과 정릉은 조선의 성종과 정현왕후, 그리고 중종의 왕릉이 있는 곳이다. 2009년 6월 유네스코 세계 유산으로 등록되기도 하였다.

            <br>
            <br>
            
            
            
            
		  </div>
	

        
        <div id="tab4" class="tabcontent4">
                
            <h3>1. 경복궁<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Book/Gyeong_1.jpg"></td>
                <td><img src = "../images/att_image/Book/Gyeong_3.jpg"></td>
                <td><img src = "../images/att_image/Book/Gyeong_2.jpg"></td>   
            </table>       

            
             - 장소: 서울 종로구 사직로 161 경복궁
            <br>
             - 이용 시간: 매일 09:00 ~ 18:30 (입장마감은 17:30)

            <br>
            - 가격: 대인(만25세 ~ 만64세) - 3,000원, 만24세 이하 청소년 - 무료, 만65세 이상 어르신 - 무료
            <br>
            - 특징: 서울특별시 종로구에 있는 조선시대의 궁궐 중 하나이자 조선의 정궁, 법궁이다. 조선 시대에 가장 먼저 지어진 궁궐이고, 사적 제117호로 지정되어 있다. 

            <br>
            <br>
             
            
            <h3>2. 남산 서울타워<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Book/Nam_1.jpg"></td>
                <td><img src = "../images/att_image/Book/Nam_2.jpg"></td>
                <td><img src = "../images/att_image/Book/Nam_3.jpg"></td>   
            </table>  
            
            - 장소: 서울 용산구 남산공원길 105
            <br>
             - 이용 시간: 평일 12:00 ~ 22:00 전망대 주말/휴일 11:00 ~ 22:00 전망대

            <br>
            - 가격: 무료
            <br>
            - 특징: 방송전파 송수신과 한국의 전통미를 살린 관광 전망시설의 기능을 겸비한, 국내 최초의 종합전파탑. 관광산업의 미래를 위해 건립되었다.

            <br>
            <br>
            
            
             <h3>3. 북촌 한옥 마을<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button>  </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Book/Chon_1.jpg"></td>
                <td><img src = "../images/att_image/Book/Chon_2.jpg"></td>
                <td><img src = "../images/att_image/Book/Chon_3.jpg"></td>   
            </table>  
            
              - 장소: 서울 종로구 계동길 37
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: 경복궁과 금원(비원) 사이 북안산 기슭에 있는 한옥 보존지구. 청계천과 종로의 윗동네라는 뜻으로 '북촌(北村)'이라고 불린다. 총 2,297동의 건물이 있고, 이 가운데 1,408동이 한옥이다.

            <br>
            <br>
             
            
             <h3>4. 북서울 꿈의 숲<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Book/Seoul_1.jpg"></td>
                <td><img src = "../images/att_image/Book/Seoul_2.jpg"></td>
                <td><img src = "../images/att_image/Book/Seoul_3.jpg"></td>   
            </table>  
            
             - 장소: 서울 강북구 월계로 173
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: '북서울 꿈의 숲'에는 벚꽃길, 단풍숲 등의 생태적 조경 공간, 월영지, 월영폭포와 같은 전통경관, 그리고 다양한 장르의 문화예술이 있는 '꿈의숲아트센터' 등이 있다.

            <br>
            <br>
            
             <h3>5. 낙산 공원<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Book/Nak_1.jpg"></td>
                <td><img src = "../images/att_image/Book/Nak_2.jpg"></td>
                <td><img src = "../images/att_image/Book/Nak_3.jpg"></td>   
            </table>  
            
              - 장소: 서울 종로구 낙산길 41
            <br>
             - 이용 시간: 매일 00:00 ~ 24:00

            <br>
            - 가격: 무료
            <br>
            - 특징: 대학로와 동대문으로부터 이어지며, 역사와 문화를 함께 즐길 수 있는 공원. 언덕 정상부에는 벽화가 즐비한 이화동 벽화마을로 갈 수도 있고, 서울한양도성을 보며 옛 정취를 느낄 수도 있는 공원이다. 특히 이 곳에서 아름다운 서울 야경을 바라볼 수 있는 것이 압권이다.

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