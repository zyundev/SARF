<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>운영진 소개</title>
<link rel="stylesheet" type="text/css" href="/resources/css/intro.css">
<link rel="stylesheet" type="text/css" href="/resources/css/hf_collect/intro_menu.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body>

<header>
	<%@ include file="d_head.jsp" %>
</header>

	<div class="card-wrapper">
		<div class="card_1">
			<div class="imgBx">
				<img src="/resources/images/pf_1.png">
			</div>
			<div class="details">
				<h2>
					이지윤<span> 팀장</span>
				</h2>
				<p>부트스트링이 어려웠어요. 하지만 꾸준한 연구 끝에 좋은 결과를 보게 되었어요.부트스트링이 어려웠어요. 하지만
					꾸준한 연구 끝에 좋은 결과를 보게 되었어요.</p>
			</div>
		</div>
		<div class="card_2">
			<div class="imgBx">
				<img src="/resources/images/pf_2.png">
			</div>
			<div class="details">
				<h2>
					박영원<span> 팀원</span>
				</h2>

				<p>부트스트링이 어려웠어요. 하지만 꾸준한 연구 끝에 좋은 결과를 보게 되었어요.부트스트링이 어려웠어요. 하지만
					꾸준한 연구 끝에 좋은 결과를 보게 되었어요.</p>
			</div>
		</div>
		<div class="card_3">
			<div class="imgBx">
				<img src="/resources/images/pf_3.png">
			</div>
			<div class="details">
				<h2>
					김성규<span> 팀원</span>
				</h2>
				<p>부트스트링이 어려웠어요. 하지만 꾸준한 연구 끝에 좋은 결과를 보게 되었어요.부트스트링이 어려웠어요. 하지만
					꾸준한 연구 끝에 좋은 결과를 보게 되었어요.</p>
			</div>
		</div>
		<div class="card_4">
			<div class="imgBx">
				<img src="/resources/images/pf_4.png">
			</div>
			<div class="details">
				<h2>
					양바울<span> 팀원</span>
				</h2>
				<p>부트스트링이 어려웠어요. 하지만 꾸준한 연구 끝에 좋은 결과를 보게 되었어요.부트스트링이 어려웠어요. 하지만
					꾸준한 연구 끝에 좋은 결과를 보게 되었어요.</p>
			</div>
		</div>
		<div class="card_5">
			<div class="imgBx">
				<img src="/resources/images/pf_5.png">
			</div>
			<div class="details">
				<h2>
					박수빈<span> 팀원</span>
				</h2>
				<p>부트스트링이 어려웠어요. 하지만 꾸준한 연구 끝에 좋은 결과를 보게 되었어요.부트스트링이 어려웠어요. 하지만
					꾸준한 연구 끝에 좋은 결과를 보게 되었어요.</p>
			</div>
		</div>
		<div class="card_6">
			<div class="imgBx">
				<img src="/resources/images/pf_6.jpg">
			</div>
			<div class="details">
				<h2>
					정성학<span> 팀원</span>
				</h2>
				<p>부트스트링이 어려웠어요. 하지만 꾸준한 연구 끝에 좋은 결과를 보게 되었어요.부트스트링이 어려웠어요. 하지만
					꾸준한 연구 끝에 좋은 결과를 보게 되었어요.</p>
			</div>
		</div>
		<div class="card_7">
			<div class="imgBx">
				<img src="/resources/images/pf_7.png">
			</div>
			<div class="details">
				<h2>
					김남혁<span> 팀원</span>
				</h2>
				<p>부트스트링이 어려웠어요. 하지만 꾸준한 연구 끝에 좋은 결과를 보게 되었어요.부트스트링이 어려웠어요. 하지만
					꾸준한 연구 끝에 좋은 결과를 보게 되었어요.</p>
			</div>
		</div>
	</div>
    <div class="char-wrapper">
        <img class="chasing-img" src="/resources/images/char_lion.png">
        <span class="speech-bubble"></span>
        <span class="bubble-content">만든 제작자들입니다~</span>
        <span class="semi-bubble_1"></span>
        <span class="semi-bubble_2"></span>
        <span class="semi-bubble_3"></span>
    </div>
    
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
<footer>
	<%@ include file="footer.jsp"%>
</footer>

<script>
	window.onload = function() {
		setTimeout (function () {
			scrollTo(0,0);
		},100);
	}
</script>

</body>
</head>
</html>