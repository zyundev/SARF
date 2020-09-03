<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
   <title>FAQ 게시판</title>
<link rel="stylesheet" href="/resources/css/faq.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(function() {
            var article = $('.article');
            article.addClass('hide');
            //article.find('.a').slideUp(1000);
            //$('.article').addClass('hide');
            //$('.article').find('.a').slideUp(100);

            $('.trigger').click(function() {
                var myArticle = $(this).parents('.article');
                
                if (myArticle.hasClass('hide')) {
                    // 아코디언 효과
                    article.addClass('hide').removeClass('show'); 
                    article.find('.a').slideUp(0);
                    
                    myArticle.removeClass('hide').addClass('show');
                    myArticle.find('.a').slideDown(0);
                } else {
                    myArticle.removeClass('show').addClass('hide');
                    myArticle.find('.a').slideUp(0);
                }
            });
        });
    </script>
    <style>
    	header {
        	padding-top: 15px;
        	padding-bottom: 150px;
        }
    </style>
</head>
<body>
<!-- 
<header>
	<%@ include file="head.jsp"%>
</header>
-->
   <div class="container">
      <div class="infor">
             <h3 class="txt">FAQ</h3>
   <div>
       <div class="faq_txt">
   <strong>"FAQ를 통해서 원하시는 답변을 쉽고 빠르게 찾아보세요"</strong><br>
   서울 여행 관련 질문 중 가장 빈도수가 높은 질문들을 모아, 친절한 답변과 함께 제공해드리고 있습니다.
      </div>
   </div>
      <ul>
          <div class="article">
             <div class="q"> 
               <div class="trigger"><b class="qfont">Q.</b>이곳은 무슨 사이트인가요?</div>
            </div>
                <div class="a hidden">
                    <b class="afont">A.</b>
                     SALF는 서울 여행에 관심있는 모든 관광객을 위해 서울의 관광정보를 통합적으로 제공하는 서울시의 관광 사이트입니다. 관광명소/음식점/공연 등 서울의 다양한 관광정보와 함께 예약/예매, 여행상담, 커뮤니티 등 편리한 기능을 제공합니다.
                </div>
          </div>
          <div class="article">
             <div class="q">
               <div class="trigger"><b class="qfont">Q.</b>사이트에 있는 주요 정보는 무엇인가요?</div>
            </div>
                <div class="a hidden">
                    <b class="afont">A.</b>
                     SALF는 서울 관광과 관련된 모든 정보를 제공합니다. 관광명소, 공연, 행사 음식점, 등에 관한 기본 정보는 물론, 추천코스, 관광지도, 홍보물 등 다양한 서울의 관광정보를 제공합니다.
                </div>
          </div>
          <div class="article">
             <div class="q">
               <div class="trigger"><b class="qfont">Q.</b>통합 검색은 어떤 서비스인가요?</div>
            </div>
                <div class="a hidden">
                    <b class="afont">A.</b>
                     통합검색은 내가 원하는 정보를 손쉽게 찾아볼 수 있도록 SALF 에서 제공하는 기능입니다. 카테고리(명소, 음식점 등)카테고리별 검색결과를 확인할 수 있어 더욱 편리합니다.
                </div>
          </div>
          <div class="article">
             <div class="q">
               <div class="trigger"><b class="qfont">Q.</b>사이트에 있는 정보와 실제 정보가 달라요</div>
            </div>
                <div class="a hidden">
                    <b class="afont">A.</b>
                     "FAQ" > "정보 수정 요청" 에 글을 남겨 주시거나 개별 콘텐츠 내용 조회 시 우측에 나타나는 "정보 수정 요청" 버튼을 클릭 후 글을 남겨주시면 신속하게 수정 반영하도록 하겠습니다.
                </div>
          </div>
          <div class="article">
             <div class="q">
               <div class="trigger"><b class="qfont">Q.</b>웹정보와 모바일 정보가 같나요?</div>
            </div>
                <div class="a hidden">
                    <b class="afont">A.</b>
                     SALF는 모바일을 지원하지 않습니다.
                     <p>추후 추가 될 기능 입니다.</p>
                </div>
          </div>                            
        </ul>
      
               <!-- 페이징 -->
               <div class="page">
    <!-- 처음 -->
       <img src="https://bimg.nexon.com/images/career_imgs/NEW/page_first.jpg" width="30" height="30" alt="첫 페이지" class="pagebtn"/>
    <!-- 이전 n개 -->
       <img src="https://bimg.nexon.com/images/career_imgs/NEW/page_prev.jpg" width="30" height="30" alt="이전 페이지" class="pagebtn"/>
    <span>
        <!-- 페이지 번호 -->
                        <a class="on" ><strong>1</strong></a>
                        <a href="javascript:{goPage('1');}">2</a>
                        <a href="javascript:{goPage('2');}">3</a>
    </span>
    <!-- 다음 n개 -->
       <a class="next" href="javascript:{goPage('1');}" >
       <img src="https://bimg.nexon.com/images/career_imgs/NEW/page_next_on.jpg" width="30" height="30" alt="다음 페이지" class="pagebtn" /></a>
    <!-- 마지막 -->
       <a class="last" href="javascript:{goPage('2');}" >
       <img src="https://bimg.nexon.com/images/career_imgs/NEW/page_last_on.png" width="30" height="30" alt="마지막 페이지" class="pagebtn"/></a>
                 </div><!-- page -->
      </div><!-- content -->
   </div>
   
<footer>
	<%@ include file="footer.jsp"%>
</footer>

</body>
</html>