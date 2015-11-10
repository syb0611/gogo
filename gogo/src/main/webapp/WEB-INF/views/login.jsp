<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="utf-8">
<title>About - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/font-awesome.css">
<link rel="stylesheet" href="../css/templatemo_style.css">
<link rel="stylesheet" href="../css/templatemo_misc.css">
<link rel="stylesheet" href="../css/flexslider.css">
<link rel="stylesheet" href="../css/testimonails-slider.css">

<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>

<style>
@import
url
(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body {
	font-family: '맑은 고딕';
}

#heading {
	background-image: url(../images/slide1.jpg);
	height: 140px;
}

#loginForm span{
	float: right;
}	
</style>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="${contextPath}/home"><img src="../images/pool2.jpeg"
								title="Grill Template" alt="Grill Website Template"></a>
						</div>
					</div>
					<div class="col-md-7">
						<div class="main-menu">
							<ul>
								<li><a href="${contextPath}/carpool/list?category=dan"><font size=3>단기카풀</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=jang"><font size=3>장기카풀</font></a></li>
								<li><a href="${contextPath}/goschool"><font size=3>고 스쿨</font></a></li>
								<li><a href="${contextPath}/taxi"><font size=3>택시카풀</font></a></li>
								<li><a href="${contextPath}/board/main"><font size=3>커뮤니티</font></a></li>
								<li><a href="${contextPath}/customer"><font size=3>고객센터</font></a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</header>


	<div id="heading">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-content">
						<h2>Login Form</h2>
						<span>Home / <a href="loginForm">로그인</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	<div class="row">
		<div class="col-sm-4 col-sm-offset-4 col-xs-10 col-xs-offset-1">
			<h2>로그인</h2>
			<form id="loginForm" method="post" action="${contextPath}/member/login">
				<div class="form-group">
					<label for="inputEmail">이메일 입력</label> 
					<input type="email"	class="form-control" name="email" placeholder="이메일">
				</div>
				<div class="form-group">
					<label for="inputPassword">비밀번호 입력</label> 
					<input type="password" class="form-control" name="pw" placeholder="비밀번호">
				</div>
				<div class="form-group">
					<span>아이디/비밀번호찾기</span> 
					<input type="submit" class="btn btn-primary form-control" value="로그인">
					<input type="button" class="btn btn-default form-control" value="회원가입" onclick="location.href='${contextPath}/member/joinform'">
				</div>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

</body>
</html>

