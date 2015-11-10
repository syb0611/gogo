<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
</style>

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
#timeline-post{
	margin-top: 30px;
}
</style>
</head>
<body>
	<header>
		<%@ include file="../header.jsp"%>
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
						<h2>CARPOOL</h2>
						<span>Home / <a href="#">카풀</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="timeline-post">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<fieldset>
						<legend> 빠른검색 </legend>
						<form action="./example2.php" method="GET">
								카풀 : 
								<select name="type">
									<option value="short">단기카풀</option>
									<option value="long">장기카풀</option>
									<option value="taxi">택시카풀</option>
									<option value="school">고스쿨</option>
								</select>
							<div>
								성별 : 
								<input name="gender" id="gender" type="radio" checked="checked" value="0"><span>전체</span>
								<input name="gender" id="gender" type="radio" value="1"><span>남자</span>
								<input name="gender" id="gender" type="radio" value="2"><span>여자</span>	<br><br> 
								인증 여부 : 
								<input name="auth" id="auth" type="checkbox" value="phone"><span>휴대전화인증</span> 
								<input name="auth" id="auth" type="checkbox" value="facebook"><span>페이스북인증</span><br><br> 
								흡연 여부 : 
								<input name="smoking" id="smoking" type="radio" checked="checked" value="N"><span>흡연불가</span>
								<input name="smoking" id="smoking" type="radio" value="Y"><span>흡연가능</span> 
								<br>
							</div>
							<input type="submit" value="검색하기" />
						</form>
					</fieldset>
				</div>
				
				<div class="col-md-8">
					<c:choose>
						<c:when test="${category == 'dan'}">
							<h4>단기카풀</h4>
						</c:when>
						<c:when test="${category == 'jang'}">
							<h4>장기카풀</h4>
						</c:when>
					</c:choose>
					
					<table class="table table-condensed">
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>출발지</th>
							<th>도착지</th>
							<th>유형</th>
							<th>예약좌석/보유좌석</th>
							<th>작성일</th>
						</tr>
						<c:choose>
							<c:when test="${list == '[]' }">
								<td colspan="7">등록된 글이 없습니다.</td>
							</c:when>
							<c:otherwise>
							<c:forEach items="${list }" var="vo">
							<tr>
								<td>${vo.carno}</td>
								<td>${vo.name }</td>
								<td>${vo.departure}</td>
								<td>${vo.arrival}</td>
								<td>
									<c:choose>
										<c:when test="${vo.usertype == 'driver' }">타세요</c:when>
										<c:otherwise>태워주세요</c:otherwise>
									</c:choose>
								</td>
								<td>*/${vo.seat}</td>
								<td>${vo.wdate }</td>
							</tr>
							</c:forEach>
							</c:otherwise>
						</c:choose>
						
					</table>
					
					
					<c:if test="${memberInfo != null }">
						<input type="button" value="글쓰기" onclick="location.href='${contextPath}/carpool/${category}/writeform'">
					</c:if>
				</div>
			</div>

			<div class="space50"></div>


		</div>
	</div>


	<%@ include file="../footer.jsp"%>

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

</body>
</html>