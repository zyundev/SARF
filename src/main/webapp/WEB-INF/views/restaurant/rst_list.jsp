<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 세션값 확인 --%>
<%@page import="java.util.Enumeration"%>
<% 
Enumeration se = session.getAttributeNames();

while(se.hasMoreElements()){
	String getse = se.nextElement()+"";
	System.out.println("@@@@@@@ session : "+getse+" : "+session.getAttribute(getse));
}
%>
<%-- 세션값 확인 끝 --%>

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
        .cool-link:checked::after{
        	width:100%;
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
        img{
        	width:300px;
        	height:225px;
        }
        
        .BaseButton {
			display: inline-block;
			margin-top: 5px;
			font-weight: 700;
			float: right;
			width: 44px;
			height: 39px;
			background: #fff;
			font-weight: bold;
			border: 1px solid #4f9f4f;
			border-radius: 6px;
			cursor: pointer;
			margin-left: 5px;
			box-shadow: inset 0 0 0 1px #4f9f4f!important;
			transition: background-color .3s,color .3s,background .3s,box-shadow .1s ease-in-out; 
		}
		
		.BaseButton:hover{
			color:#ffffff;
			background-color:#4f9f4f;
		}
		

.dsn_more_btn {

			font-weight: bold;

	
	width:120px;
	height: 25px;
	font-size: 13px;
	border-radius:3px;
	color:#fff !important; 
	display:inline-block; 
	background-color:#6b9ab8; 
	border:1px solid #56819d;
	vertical-align:middle;
	cursor: pointer;
	border: 0px;
		}
		
		.dsn_more_btn:hover{
			color:#ffffff;
			background-color:#6b9aff;
		}

		
		.dsn_write_btn {
			display: inline-block;
			margin-top: 20px;
			margin-right: 30px;
			float: right;
			width: 60px;
			height: 39px;
			background: #fff;
			font-weight: bold;
			border: 1px solid #4f9f4f;
			border-radius: 6px;
			cursor: pointer;
			box-shadow: inset 0 0 0 1px #4f9f4f!important;
			transition: background-color .3s,color .3s,background .3s,box-shadow .1s ease-in-out; 
		}
		
		.dsn_write_btn:hover{
			color:#ffffff;
			background-color:#4f9f4f;
		}
		
		.dsn_top_btn {
			display: inline-block;
			margin-top: 20px;
			font-weight: 700;
			width: 44px;
			height: 39px;
			background: #fff;
			font-weight: bold;
			border: 1px solid #4f9f4f;
			border-radius: 6px;
			cursor: pointer;
			margin-left: 30px;
			box-shadow: inset 0 0 0 1px #4f9f4f!important;
			transition: background-color .3s,color .3s,background .3s,box-shadow .1s ease-in-out; 
		}
		
		.dsn_top_btn:hover{
			color:#ffffff;
			background-color:#4f9f4f;
		}
		
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
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<div id="container">
		<h2>맛집</h2>
        <hr style = "border: solid 3px black;" />
		<ul class="tab">
            <li data-tab="tab1" class="cool-link"><a href="#none">#강동</a></li>
            <li data-tab="tab2" class="cool-link"><a href="#none">#강서</a></li>
			<li data-tab="tab3" class="cool-link"><a href="#none">#강남</a></li>
			<li data-tab="tab4" class="cool-link"><a href="#none">#강북</a></li>
		</ul>
		<!-- 강동탭 -->
        <div id="tab1" class="tabcontent current">
	        <c:forEach items="${gangdonglist}" var="gangdonglist">
	        	<form method="get" action="/restaurant/updateView">
		            <input type="hidden" value="${gangdonglist.getBno()}"/>
		            <input type="hidden" value="${gangdonglist.getKey()}"/>
					<h3>
						# ${gangdonglist.getSubject()}
						<a href="${gangdonglist.getLink()}" target="_blank"><button type="button" class="dsn_more_btn" name="link">더 알아보기</button></a>
						<c:if test="${member != null && member.getId() == 'admin'}">
							<button type="button" class="button_1 update_btn BaseButton" data-key="${gangdonglist.getKey()}" data-bno="${gangdonglist.getBno()}">수정</button>&nbsp;
							<button type="button" class="button_2 delete_btn BaseButton" data-key="${gangdonglist.getKey()}" data-bno="${gangdonglist.getBno()}">삭제</button>
						</c:if>
					</h3>   
		            <table>
		            	<tr>
							<td><img src = "${gangdonglist.getImg1()}"></td>
							<td><img src = "${gangdonglist.getImg2()}"></td>
							<td><img src = "${gangdonglist.getImg3()}"></td>
						</tr>
		            </table>


<div style="white-space: pre-line;">${gangdonglist.getContent()}</div>
	            </form>
	        </c:forEach>    
	        <c:if test="${member != null && member.getId() == 'admin'}">
	        	<button type="button" class="writebtn dsn_write_btn">글 쓰기</button>
	        </c:if>
	        <button class="top dsn_top_btn" onclick="scrollWindow_2()"> Top </button>
		</div>

		<!-- 강서탭 -->
		<div id="tab2" class="tabcontent2">
			<c:forEach items="${gangseolist}" var="gangseolist">
				<form method="get" action="/restaurant/updateView">
					<input type="hidden" value="${gangseolist.getBno()}"/>
					<input type="hidden" value="${gangseolist.getKey()}"/>
					<h3>
						# ${gangseolist.getSubject()}
						<button type="button" name="link" class="dsn_more_btn" onclick="location.href='${gangseolist.getLink()}'">더 알아보기</button>
						<c:if test="${member != null && member.getId() == 'admin'}">
							<button type="button" class="button_1 update_btn BaseButton" data-key="${gangseolist.getKey()}" data-bno="${gangseolist.getBno()}">수정</button>&nbsp;
							<button type="button" class="button_2 delete_btn BaseButton" data-key="${gangseolist.getKey()}" data-bno="${gangseolist.getBno()}">삭제</button>
						</c:if>
					</h3>   
					<table> 
						<tr>
							<td><img src = "${gangseolist.getImg1()}"></td>
							<td><img src = "${gangseolist.getImg2()}"></td>
							<td><img src = "${gangseolist.getImg3()}"></td>
						</tr>
					</table>
					<div>${gangseolist.getContent()}</div>
				</form>
			</c:forEach>  
			<c:if test="${member != null && member.getId() == 'admin'}">
				<button type="button" class="writebtn dsn_write_btn">글 쓰기</button>
			</c:if>
			<button class="top dsn_top_btn" onclick="scrollWindow_2()"> Top </button>
		</div>

		<!-- 강남탭 -->
		<div id="tab3" class="tabcontent3">
			<c:forEach items="${gangnamlist}" var="gangnamlist">
				<form method="get" action="/restaurant/updateView">
					<input type="hidden" value="${gangnamlist.getBno()}"/>
					<input type="hidden" value="${gangnamlist.getKey()}"/>
					<h3>
						# ${gangnamlist.getSubject()}
						<button type="button" name="link" class="dsn_more_btn" onclick="location.href='${gangnamlist.getLink()}'">더 알아보기</button>
						<c:if test="${member != null && member.getId() == 'admin'}">
							<button type="button" class="button_1 update_btn BaseButton" data-key="${gangnamlist.getKey()}" data-bno="${gangnamlist.getBno()}">수정</button>&nbsp;
							<button type="button" class="button_2 delete_btn BaseButton" data-key="${gangnamlist.getKey()}" data-bno="${gangnamlist.getBno()}">삭제</button>
						</c:if>
					</h3>   
					<table>
						<tr>
							<td><img src = "${gangnamlist.getImg1()}"></td>
							<td><img src = "${gangnamlist.getImg2()}"></td>
							<td><img src = "${gangnamlist.getImg3()}"></td>
						</tr>
					</table>
					<div>${gangnamlist.getContent()}</div>
				</form>
			</c:forEach> 
			<c:if test="${member != null && member.getId() == 'admin'}"> 
				<button type="button" class="writebtn dsn_write_btn">글 쓰기</button>
			</c:if>
			<button class="top dsn_top_btn" onclick="scrollWindow_2()"> Top </button>
		</div>

		<!-- 강북탭 -->
		<div id="tab4" class="tabcontent4">
		   <c:forEach items="${gangbuklist}" var="gangbuklist">
			   <form method="get" action="/restaurant/updateView">
					<input type="hidden" value="${gangbuklist.getBno()}"/>
					<input type="hidden" value="${gangbuklist.getKey()}"/>
					<h3>
						# ${gangbuklist.getSubject()}
						<button type="button" name="link" class="dsn_more_btn" onclick="location.href='${gangbuklist.getLink()}'">더 알아보기</button>
						<c:if test="${member != null && member.getId() == 'admin'}">
							<button type="button" class="button_1 update_btn BaseButton" data-key="${gangbuklist.getKey()}" data-bno="${gangbuklist.getBno()}">수정</button>&nbsp;
							<button type="button" class="button_2 delete_btn BaseButton" data-key="${gangbuklist.getKey()}" data-bno="${gangbuklist.getBno()}">삭제</button>
						</c:if>
					</h3>   
					<table>
						<tr>
							<td><img src = "${gangbuklist.getImg1()}"></td>
							<td><img src = "${gangbuklist.getImg2()}"></td>
							<td><img src = "${gangbuklist.getImg3()}"></td>
						</tr>
					</table>
					<div>${gangbuklist.getContent()}</div>
				</form>
			</c:forEach>  
			<c:if test="${member != null && member.getId() == 'admin'}">
				<button type="button" class="writebtn dsn_write_btn">글 쓰기</button>
			</c:if>
			<button class="top dsn_top_btn" onclick="scrollWindow_2()"> Top </button>
		</div>
	</div>
	<script>
		function scrollWindow_2() {
			window.scroll({ top: 0, left: 0, behavior: 'smooth' });
		}
	</script>
	<footer>
		<%@ include file="/resources/etc/footer.jsp" %>
	</footer>
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
			$('.writebtn').click(function(){
				location.href = '/restaurant/writeView';
			})
		});
		// 수정 버튼
		$('.update_btn').on('click', function(){
			var urlparam = "?bno=" + $(this).attr('data-bno');
			location.href='/restaurant/updateView' + urlparam;
		})
		// 삭제 버튼 
		$('.delete_btn').on('click', function(){
			var check = confirm('정말 삭제하시겠습니까?');
			if(check){
				var urlparam = "?bno=" + $(this).attr('data-bno');
				location.href='delete' + urlparam;
			}
			return false;
		})
	</script>
</body>
</html>