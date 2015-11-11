<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- 

Grill Template 

http://www.templatemo.com/free-website-templates/417-grill

-->
<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
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

<style>
#heading {
/* 	background-image: url(images/community.png); */
	background-color: gray;
	height: 140px;
}

.content{
	margin: 30px;
}

.categoryTitle{
	float: left;
}

</style>
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

	<header>
		<%@ include file="../header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="${contextPath}/home"><img src="../images/pool2.jpeg" title="Grill Template" alt="Grill Website Template"></a>
						</div>
					</div>
					<div class="col-md-7">
						<div class="main-menu">
							<ul>
								<li><a href="${contextPath}/carpool/list?category=dan"><font size=3>단기카풀</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=jang"><font size=3>장기카풀</font></a></li>
								<li><a href="goschool"><font size=3>고 스쿨</font></a></li>
								<li><a href="taxi"><font size=3>택시카풀</font></a></li>
								<li><a href="${contextPath}/board/main"><font size=3>커뮤니티</font></a></li>
								<li><a href="customer"><font size=3>고객센터</font></a></li>
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
						<h2>MYPAGE</h2>
						<span>Mypage / <a href="${contextPath}/mypage/bookmark">즐겨찾기</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2">
						<div class="list-group">
							<a href="${contextPath}/mypage/profile" class="list-group-item">기본정보</a>
							<a href="${contextPath}/mypage/password" class="list-group-item">비밀번호변경</a>
							<a href="${contextPath}/mypage/booking" class="list-group-item">예약내역</a>
							<a href="${contextPath}/mypage/reglist" class="list-group-item">내글관리</a>
							<a href="${contextPath}/mypage/bookmark" class="list-group-item">즐겨찾기</a>
							<a href="${contextPath}/mypage/withdraw" class="list-group-item">회원탈퇴</a>
						</div>		
					</div>		
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-offset-1 col-md-10 col-sm-12">
								즐겨찾기
							</div>
						</div>			
					</div>		
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@ include file="../footer.jsp"%>

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

</body>
</html>