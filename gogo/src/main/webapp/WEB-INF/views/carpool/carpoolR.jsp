<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>main</title>
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
<script type="text/javascript"	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=5d5accbf-7745-315f-9ccc-fedc53a0f0b1"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/routes.js"></script>

<style>
#heading {
	background-image: url(../images/zx.jpg);
	height: 140px;
}
#formDiv {
	margin-top: 200px;
}

#searchForm {
	width: 80%;
	margin: 0 auto;
}

#searchForm input {
	margin: 3px;
}
</style>
<style type="text/css">
table.t_ex2 {
	background: #;
	width: 90%;
	margin: 0 auto;
	text-align: right
}

.t_ex2, .t_ex2 tr, .t_ex2 td{
	border: 1px solid gray;
}
.t_ex2 td, .t_ex2 th {
	
	padding: 10px
}

.t_ex2 th {
	background: #FFE8E0;
	color:;
	text-align: center
}

table.t_ex2 .c1 {
	text-align: center
}

table.t_ex2 .c2 {
	text-align: left
}
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
								title="withGoe" alt="Grill Website Template"></a>

						</div>
					</div>

					<div class="col-md-7">
						<div class="main-menu">
							<ul>

								<li><a href="${contextPath}/carpool/list?category=dan"><font
										size=3>단기카풀</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=jang"><font
										size=3>장기카풀</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=goschool"><font
										size=3>고 스쿨</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=taxi"><font
										size=3>택시카풀</font></a></li>
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
				<div class="col-md-3">
					<fieldset>
						<legend> </legend>
						<form action="./example2.php" method="GET">
							<p>
								카풀 : <select name="type">
									<option value="short">단기카풀</option>
									<option value="long">장기카풀</option>
									<option value="taxi">택시카풀</option>
									<option value="school">고스쿨</option>
								</select>
							<div>
								성별 : <input name="ss" id="ss" type="radio" checked="" value="1"><span>남자</span>
								<input name="ss" id="ss" type="radio" value="1"><span>여자</span>
								<input name="ss" id="ss" type="radio" value="1"><span>모두</span>
								<br> <br> 인증 여부 : <input name="sss" id="sss"
									type="checkbox" checked="" value="3"><span>휴대전화
									인증</span> <input name="sss" id="sss" type="checkbox" value="3"><span>페이스북
									인증</span><br> <br> 흡연 여부 : <input name="ss" id="ss"
									type="radio" checked="" value="2"><span>흡연 가능</span> <input
									name="ss" id="ss" type="radio" value="2"><span>흡연
									불가</span> <br>
							</div>
							</p>
							<input type="submit" value="검색하기" />
						</form>
					</fieldset>
				</div>
				<div class="col-md-9">
					<div style="float:left; margin-right: 20px">
						<c:choose>
							<c:when test="${vo.category == 'dan'}">
								<h3>단기카풀</h3>
							</c:when>
							<c:when test="${vo.category == 'jang'}">
								<h3>장기카풀</h3>
							</c:when>
						</c:choose>
					</div>
					<div>
						<c:choose>
							<c:when test="${vo.usertype == 'driver' }">타세요</c:when> 
							<c:when test="${vo.usertype == 'rider' }">태워주세요</c:when> 
							<c:otherwise>함께타요</c:otherwise>									
						</c:choose> 
					</div>
					<br>
					<div>
						<table class="table table-condensed">
							<tr>
								<th>출발지</th>
								<td>${vo.departure }</td>
								<th>도착지</th>
								<td>${vo.arrival }</td>
							</tr>
							<tr>
								<th>경유지</th>
								<td colspan="3">
									<c:if test="${vo.stop1 != null }">#${vo.stop1 }&nbsp;&nbsp;</c:if>
									<c:if test="${vo.stop2 != null }">#${vo.stop2 }&nbsp;&nbsp;</c:if>
									<c:if test="${vo.stop3 != null }">#${vo.stop3 }&nbsp;&nbsp;</c:if>
									<c:if test="${vo.stop4 != null }">#${vo.stop4 }&nbsp;&nbsp;</c:if>
									<c:if test="${vo.stop5 != null }">#${vo.stop5 }&nbsp;&nbsp;</c:if>
								</td>
							</tr>
							<tr>
								<th>출발일시</th>
								<td colspan="3">${vo.departuredate }</td>
							</tr>
							<tr>
								<th>신청수/좌석수</th>
								<td>*/${vo.seat }</td>
								<th>희망요금(1인)</th>
								<td>${vo.price }</td>
							</tr>
							<tr>
								<th>흡연여부</th>
								<td>
									<c:choose>
										<c:when test="${vo.smoking == '0' }">비흡연</c:when>
										<c:otherwise>흡연</c:otherwise>
									</c:choose>
								</td>
								<th>성별제한</th>
								<td>
									<c:choose>
										<c:when test="${vo.genderlimit == '0' }">없음</c:when>
										<c:otherwise>여성전용</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>