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
        
        header {
        	padding-top: 15px;
        	padding-bottom: 75px;
        }
        
        .view-line {
        	border: solid 3px black;
        	width: 100%;
        }
        
          /* 버튼 */   
     
     
        .top {
        		width: 120px;
        		height: 40px;
        		background-color:
        		#004fff;
        		
        		color: white;
        		
        		box-shadow: 0 4px 16px
        		rgba(0, 79, 255, 0.3);
        		
        		font-size: 16px;
        		font-weight: bold;
        		
				border-radius: 20px;
			
			
			  	position: absolute;
			  	
			  	left: 48%;    		
        		
        		
        		
        
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
		<h2>축제</h2>
        <br>
        <hr class="view-line" />
        <br>
        <br>

		<ul class="tab">
            <li  data-tab="tab1" class = "cool-link"><a href="#none">#강동</a></li>
            <li data-tab="tab2" class = "cool-link" ><a href="#none">#강서</a></li>
			<li data-tab="tab3" class = "cool-link" ><a href="#none">#강남</a></li>
			<li data-tab="tab4" class = "cool-link"><a href="#none">#강북</a></li>
		</ul>

        <div id="tab1" class="tabcontent current">
            
             <h3>1. 정월 대보름 한마당, 달집 태우기<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>  
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/fes_image/Dong_3/Moon_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Moon_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Moon_3.jpg"></td>
            </table>
                        
             - 일시: 매년 2월
            <br>
             - 장소: 서울특별시 강동구 상일동 명일근린공원 공동체텃밭
            <br>
             - 내용: 선사 퍼레이드, 신석기 고고학 체험스쿨, 선사 먹거리 체험 등
            
            <br>
            <br>
             
            
               <h3>2. 다문화 가족 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Dong_3/Da_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Da_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Da_3.jpg"></td>   
            </table>
            
             - 일시: 매년 4월
            <br>
             - 장소: 서울특별시 강동구 고덕동 229 동명근린공원 인조잔디 축구장
            <br>
             - 내용: 세계전통춤 공연, 줄다리기, 콩주머니 던지기, 큰공굴리기 등
            
            <br>
            <br>
                  
                <h3>3. 강동 어린이 대축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                      
           <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/fes_image/Dong_3/Child_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Child_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Child_3.jpg"></td>
            </table>
        
            
              - 일시: 매년 5월
            <br>
             - 장소: 서울특별시 강동구 성내1동 556-1 강동어린이회관
            <br>
             - 내용: 놀권리 캠페인, 블럭놀이, 낚시놀이, 칙칙폭폭 레일기차, 페이스 페인팅 등
            
            <br>
            <br>
             
            
            
            
            <h3>4. 별의 별 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/fes_image/Dong_3/Star_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Star_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Star_3.jpg"></td>
            </table>
                        
             - 일시: 매년 9월
            <br>
             - 장소: 서울특별시 강동구 둔촌동 허브천문공원
            <br>
             - 내용: 허브와 별을 테마로 전시 & 퍼포먼스, 참여마당, 축제의 밤 등
            
            
            <br>
            <br>
             
            
            <h3>5. 강동 선사문화 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
             <td><img src = "../images/fes_image/Dong_3/SunSa_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/SunSa_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/SunSa_3.jpg"></td>
            </table>
            
            - 일시: 매년 10월
            <br>
             - 장소: 서울특별시 강동구 올림픽로 875(암사동)
            <br>
             - 내용: 달집태우기, 쥐불놀이, 풍물패 사물놀이 등
            
            <br>
            <br>
            
            
            
        
            
         
            
            
		  </div>

        
		<div id="tab2" class="tabcontent2">
			<h3>1. 개화산 봄꽃 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Gae_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Gae_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Gae_3.jpg"></td>   
            </table>       

             - 일시: 매년 4월
            <br>
             - 장소: 서울특별시 강서구 방화동 방화근린공원 
            <br>
             - 내용: 봄화훼 전시, 꽃씨 배부, 민속놀이마당, 캐리커쳐, 페이스 페인팅, 도농 직거래 장터 등
            
            <br>
            <br>
            
            <h3>2. 강서 어린이 동화 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Hwa_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hwa_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hwa_3.jpg"></td>   
            </table>  
            
            - 일시: 매년 10월
            <br>
             - 장소: 서울특별시 강서구 방화동 방화근린공원
            <br>
             - 내용: 동화 속 주인공 행렬, 전통놀이, 사자춤, 전통의상 체험 등
            
            <br>
            <br>
            
             <h3>3. 서울세계 불꽃축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Han_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Han_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Han_3.jpg"></td>   
            </table>  
            
            - 일시: 매년 10월
            <br>
             - 장소: 서울특별시 영등포구 여의동로 330 여의도 한강공원
            
            <br>
             - 내용: 불꽃놀이 무료 관람
            
            <br>
            <br>            
             <h3>4. 허준 축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Hu_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hu_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hu_3.jpg"></td>   
            </table>  
            
            - 일시: 매년 10월
            <br>
             - 장소: 서울특별시 강서구 가양동 허준근린공원
            <br>
             - 내용: 지역문화공연, 전통놀이마당, 푸드트럭, 체험마당 등
            
            <br>
            <br>   
            
             <h3>5. 강서 송년 음악회<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Song_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Song_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Song_3.jpg"></td>   
            </table>  
            
            - 일시: 매년 12월
            <br>
             - 장소: 서울특별시 강서구 우장산동 우장산로 66 강서구민회관
            <br>
             - 내용: 음악회 무료 공연 관람
            
            <br>
            <br>            
            
            
			
		</div>

        
        <div id="tab3" class="tabcontent3">
                
			<h3>1. 양재천 벚꽃 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Yang_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Yang_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Yang_3.jpg"></td>   
            </table>
              - 일시: 매년 4월
            <br>
             - 장소: 서울특별시 강남구 도곡2동 주민센터, 서초구 양재1동 양재천 일대
            <br>
             - 내용: 꽃길 포토존 구성, 야간 LED 조명 설치, 벼룩시장 및 농축산물 직거래 장터 개최 등
            
            <br>
            <br>
            
            
             <h3>2. 코엑스 Eat the Seoul<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Eat_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Eat_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Eat_3.jpg"></td>   
            </table>  
              - 일시: 매년 4월
            <br>
             - 장소: 서울특별시 강남구 삼성1동 영동대로 513 코엑스 
            <br>
             - 내용: 다양한 나라의 음식이 담긴 푸드트럭들로 구성
            
            <br>
            <br>

            
            
            <h3>3. 국악 어울림 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Guk_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Guk_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Guk_3.jpg"></td>   
            </table>  
              - 일시: 매년 5월
            <br>
             - 장소: 서울특별시 강남구 일원동 대모산 자연학습장 
            <br>
             - 내용: 아마추어 국악 경연대회, 퓨전국악가요 공연, 창작 탈놀이극, 대모백일장 등
            
            <br>
            <br>
            
            
             <h3>4. 서울 패션 페스티벌<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Fashion_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Fashion_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Fashion_3.jpg"></td>   
            </table>  
            
              - 일시: 매년 5월
            <br>
             - 장소: 서울특별시 강남구 삼성1동 영동대로 513 코엑스 A홀
            <br>
             - 내용: 브랜드 패션쇼, 뮤지션 라이브 공연, 팝업 스토어, 셀럽 토크쇼 등
            
            <br>
            <br>
            
            
             <h3>5. 석촌 호수 단풍 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button>   </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Seok_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Seok_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Seok_3.jpg"></td>   
            </table>  
              - 일시: 매년 11월
            <br>
             - 장소: 서울특별시 송파구 잠실동 47 석촌호수 공원
            <br>
             - 내용: 단풍모양 팔찌 만들기, 더북&단풍 전시 체험전, 호랑이부스, 단풍&낙엽 포토존 등
            
            <br>
            <br>
            
            
            
            
		  </div>
	

        
        <div id="tab4" class="tabcontent4">
                
           
            
             <h3>1. 대학로 거리 공연 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Dae_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Dae_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Dae_3.jpg"></td>   
            </table>  
            
              - 일시: 매년 5~6월
            <br>
             - 장소: 서울특별시 종로구 이화동 대학로8길
            <br>
             - 내용: 한 자리에서 볼 수 있는 다양한 예술
            
            <br>
            <br>  
            
            <h3>2. 창덕궁 달빛 기행<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Chang_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Chang_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Chang_3.jpg"></td>   
            </table>       

            
          - 일시: 매년 8월
            <br>
             - 장소: 서울특별시 종로구 와룡동 율곡로 99
            <br>
             - 내용: 창덕궁 야간답사, 전통예술공연(대금, 거문고, 판소리, 그림자극, 부채춤) 등
            
            <br>
            <br>   
            
            <h3>3. 신촌 맥주 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Beer_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Beer_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Beer_3.jpg"></td>   
            </table>
            
            - 일시: 매년 9월
            <br>
             - 장소: 서울특별시 서대문구 창천동 연세로 6
            <br>
             - 내용: 글로벌 푸드, 글로벌 맥주, EDM파티, 브루어리 스탬프투어, 초대형 젠가 등
            
            <br>
            <br>   
            
      
            

            
             <h3>4. 서울 억새 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button> </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Uk_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Uk_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Uk_3.jpg"></td>   
            </table>  
            
       - 일시: 매년 10월
            <br>
             - 장소: 서울특별시 마포구 하늘공원로 95 
            <br>
             - 내용: 하늘공원 야간 개장, 청사초롱 설치, 하늘계단 별빛 조명 등
            
            <br>
            <br>   
            
               <h3>5. 서울 빛초롱 축제<button class = "button_1">수정</button>&nbsp;<button class = "button_2">삭제</button>  </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Light_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Light_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Light_3.jpg"></td>   
            </table>  
            
          - 일시: 매년 11월
            <br>
             - 장소: 서울특별시 종로구 서린동 청계천로 1
            <br>
             - 내용: 축제개막식, 청계광장 주제등 관람, 소망등띄우기 참여, 네온사인포토존 등
            
            <br>
            <br>   
            
              
            
  
            
		  </div>
		  
		    <br>
		  <br>
		  
		   <button class = "top"  onclick="scrollWindow_2()"> Top </button>
	
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



		 function scrollWindow_2() {
	 		 
	          window.scroll({ top: 0, left: 0, behavior: 'smooth' });
	          
	    	 }
	</script>
	
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
	
</body>
</html>