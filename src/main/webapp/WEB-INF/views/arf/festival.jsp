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
                
			<h3>1. 강동 선사문화 축제 </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
             <td><img src = "../images/fes_image/Dong_3/SunSa_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/SunSa_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/SunSa_3.jpg"></td>
            </table>
            
             글 설명
                
            <h3>2. 정월 대보름 한마당, 달집 태우기 </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/fes_image/Dong_3/Moon_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Moon_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Moon_3.jpg"></td>
            </table>
                        
             글 설명
              
            
            
            
            <h3>3. 별의 별 축제 </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/fes_image/Dong_3/Star_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Star_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Star_3.jpg"></td>
            </table>
                        
             글 설명
                
            <h3>4. 강동 어린이 대축제 </h3>   
             
            
           <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
               <td><img src = "../images/fes_image/Dong_3/Child_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Child_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Child_3.jpg"></td>
            </table>
        
            
             글 설명
                
            <h3>5. 다문화 가족 축제 </h3>   
                
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Dong_3/Da_1.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Da_2.jpg"></td>
                <td><img src = "../images/fes_image/Dong_3/Da_3.jpg"></td>   
            </table>
            
             글 설명
  
            
		  </div>

        
		<div id="tab2" class="tabcontent2">
			<h3>1. 개화산 봄꽃 축제 </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Gae_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Gae_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Gae_3.jpg"></td>   
            </table>       

            
            글 설명
            
            <h3>2. 강서 어린이 동화 축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Hwa_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hwa_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hwa_3.jpg"></td>   
            </table>  
            
             글 설명
            
             <h3>3. 서울세계 불꽃축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Han_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Han_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Han_3.jpg"></td>   
            </table>  
            
             글 설명
            
             <h3>4. 허준 축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Hu_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hu_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Hu_3.jpg"></td>   
            </table>  
            
             글 설명
            
             <h3>5. 강서 송년 음악회 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Seo_3/Song_1.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Song_2.jpg"></td>
                <td><img src = "../images/fes_image/Seo_3/Song_3.jpg"></td>   
            </table>  
            
             글 설명
            
            
            
			
		</div>

        
        <div id="tab3" class="tabcontent3">
                
			<h3>1. 양재천 벚꽃 축제 </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Yang_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Yang_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Yang_3.jpg"></td>   
            </table>
            
            
             <h3>2. 코엑스 Eat the Seoul </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Eat_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Eat_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Eat_3.jpg"></td>   
            </table>  

            
            글 설명
            
            <h3>3. 국악 어울림 축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Guk_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Guk_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Guk_3.jpg"></td>   
            </table>  
            
             글 설명
            
             <h3>4. 서울 패션 페스티벌 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Fashion_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Fashion_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Fashion_3.jpg"></td>   
            </table>  
            
             글 설명
            
            
             <h3>5. 석촌 호수 단풍 축제   </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Nam_3/Seok_1.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Seok_2.jpg"></td>
                <td><img src = "../images/fes_image/Nam_3/Seok_3.jpg"></td>   
            </table>  
            
             글 설명
            
            
            
		  </div>
	

        
        <div id="tab4" class="tabcontent4">
                
            <h3>1. 창덕궁 달빛 기행 </h3>
            
            <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Chang_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Chang_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Chang_3.jpg"></td>   
            </table>       

            
            글 설명
            
            <h3>2. 신촌 맥주 축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Beer_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Beer_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Beer_3.jpg"></td>   
            </table>
            
             글 설명
            
      
            
             <h3>3. 서울 프린지 페스티벌  </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/fes_image/Book_3/Fringe_1.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Fringe_2.jpg"></td>
                <td><img src = "../images/fes_image/Book_3/Fringe_3.jpg"></td>   
            </table>  
            
             글 설명
            
             <h3>4. 서울 억새 축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Book/Seoul_1.jpg"></td>
                <td><img src = "../images/att_image/Book/Seoul_2.jpg"></td>
                <td><img src = "../images/att_image/Book/Seoul_3.jpg"></td>   
            </table>  
            
             글 설명
            
             <h3>5. 대학로 거리 공연 축제 </h3>   
             
             <table> <!-- 300 * 225 픽셀의 이미지 고정 -->
                <td><img src = "../images/att_image/Book/Nak_1.jpg"></td>
                <td><img src = "../images/att_image/Book/Nak_2.jpg"></td>
                <td><img src = "../images/att_image/Book/Nak_3.jpg"></td>   
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