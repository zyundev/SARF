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
				<img src="/resources/images/pf_1.jpg">
			</div>
			<div class="details">
				<h2>
					이지윤<span> 팀장</span>
				</h2>
				<p>프로젝트를 통해 부족한게 많이 보였고, 개선도 했으며 협업의 중요성을 배웠습니다.
				   <br>열심히 개발을 한 팀원들에게 감사드립니다.</p>
			</div>
		</div>
		<div class="card_2">
			<div class="imgBx">
				<img src="/resources/images/pf_2.jpg">
			</div>
			<div class="details">
				<h2>
					박영원<span> 팀원</span>
				</h2>
				<p>풀스택 개발자가 되어 학원에서 배우지 못 했던 것을 배우고
				   사용 할 수 있는 시간이어서 팀원 모두에게 감사하다고 생각되었습니다.
				   <br>모두 고생하셨습니다.</p>
			</div>
		</div>
		<div class="card_3">
			<div class="imgBx">
				<img src="/resources/images/pf_3.jpg">
			</div>
			<div class="details">
				<h2>
					김성규<span> 팀원</span>
				</h2>
				<p>이번 프로젝트를 통해 더더욱 발전하는 계기가 되었습니다!
				   팀원들에게 정말 고맙고, 배울 점도 많아서 정말 행복했습니다. 
				   앞으로도 더 무궁무진한 경험을 해보고 싶네요. 감사합니다!</p>
			</div>
		</div>
		<div class="card_4">
			<div class="imgBx">
				<img src="/resources/images/pf_4.jpg">
			</div>
			<div class="details">
				<h2>
					양바울<span> 팀원</span>
				</h2>
				<p>직접 만들어보면서 머리 속으로 생각했던 것들과 달리 예상하지 못했던 문제들을 만나서
				   어려움도 있었지만 찾아보고 해결하며 더 많은 공부가 된거 같습니다.
				   모두 고생하셨습니다.</p>
			</div>
		</div>
		<div class="card_5">
			<div class="imgBx">
				<img src="/resources/images/pf_5.jpg">
			</div>
			<div class="details">
				<h2>
					박수빈<span> 팀원</span>
				</h2>
				<p>직접 만들어보고 부족했던 것을 많이 배울 수 있는 시간이었다고 생각합니다.
				   열정있는 팀원들과 해서 배운점이 많은거 같아 모두에게 감사합니다.</p>
			</div>
		</div>
		<div class="card_6">
			<div class="imgBx">
				<img src="/resources/images/pf_6.png">
			</div>
			<div class="details">
				<h2>
					정성학<span> 팀원</span>
				</h2>
				<p>실력있는 팀원들과 함께하며 조금 부족한 면을 팀원들의
				   <br>도움을 받아 제 실력을 다듬을 수 있었습니다.
				   <br>다들 수고하셨습니다.</p>
			</div>
		</div>
		<div class="card_7">
			<div class="imgBx">
				<img src="/resources/images/pf_7.jpg">
			</div>
			<div class="details">
				<h2>
					김남혁<span> 팀원</span>
				</h2>
				<p>깃에 대해서도 배워보고 풀스택 개발자의 노고도 알수 있던 기회였습니다.
				   서로의 부족함을 팀원이 채워주어서 좋은 프로젝트였던거 같네요. <br>다들 정말 수고많으셨습니다.</p>
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