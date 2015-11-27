<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>main</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">


<script src="/withgo/resources/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script type="text/javascript"	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=5d5accbf-7745-315f-9ccc-fedc53a0f0b1"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="/withgo/resources/js/routes.js"></script>

<style>
#heading {
	background-image: url(/withgo/resources/images/새.png);
	height: 150px;
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

#usertype1{
	width: 200px;
	height: 50px;
	background: #E7E7E7;
}

#usertype2{
	width: 200px;
	height: 50px;
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

							<a href="${contextPath}/home"><img src="/withgo/resources/images/roro.png" width="100px" height="50px"
								title="withGoe" alt="go home"></a>

						</div>
					</div>

					<div class="col-md-7">
						<div class="main-menu">
							<ul>
								<li><a href="/withgo/carpool/list?category=dan"><font size=3>단기카풀</font></a></li>
								<li><a href="/withgo/carpool/list?category=jang"><font size=3>장기카풀</font></a></li>
								<li><a href="/withgo/carpool/list?category=goschool"><font size=3>고 스쿨</font></a></li>
								<li><a href="/withgo/carpool/list?category=taxi"><font size=3>택시카풀</font></a></li>
								<li><a href="/withgo/board/main"><font size=3>커뮤니티</font></a></li>
								<li><a href="/withgo/customer"><font size=3>고객센터</font></a></li>
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
						<h2 style="color:#ec7600; text-align:center; font-weight: 800; text-shadow:1px 1px 1px #ffc58a;">w r i t e - f o r m</h2>
								<span style="color:gray;">' 단기카풀 ' 서비스 이용을 위한 등록하기 페이지 입니다. </span>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<div>
		<div id="timeline-post">
			<div class="container">
				<div class="row">
				<div class="col-md-8 col-md-offset-2">
						<form method="post" action="${contextPath}/carpool/write" name="wform" id="wform">
							<input type="hidden" name="category" value="${category }">
							<input type="hidden" name="mno" value="${memberInfo.mno}">
							<table>
								<div style="text-align: center; font-family:NanumGothicBold;">
							
									<input type="hidden" name="usertype" id="usertype" value="driver">
									
									<button type="button" class="btn btn-default" id="usertype1" onclick="usertypeClick(1)"><img src="/withgo/resources/images/check.png" width="30px" height="30px">&nbsp;타세요</button>
									<button type="button" class="btn btn-default" id="usertype2" onclick="usertypeClick(2)"><img src="/withgo/resources/images/check.png" width="30px" height="30px">&nbsp;태워주세요</button>
								
								</div>
							</table>
							<article class="con_wrap reg_wrap">
							<table class="table table-condensed" >
								<br>
								<tr>
									<td><p class="reg_area dt">출발날짜<p></td>
									<td>	
										<input type="hidden" name="departuredate" id="departuredate">
										<select name="date_year">
											<c:set var="year" value="<%=new GregorianCalendar().get(Calendar.YEAR) %>"/>
											<c:forEach var="i" begin="${year }" end="${year+100 }" step="1">
												<option value="${i}">${i }</option>
											</c:forEach>
										</select> 년 
										<select name="date_month">
											<c:forEach var="month" begin="1" end="12" step="1">
												<option value="${month }">${month }</option>
											</c:forEach>
										</select> 월 
										<select name="date_day">
											<c:forEach var="day" begin="1" end="31" step="1">
												<option value="${day }">${day }</option>
											</c:forEach>
										</select> 일
									</td>
								</tr>
								<tr>
									<td><p class="reg_area dt">출발지</p></td>
									<td><input placeholder=" 예: 강남역" style="color:gray;" type="text" name="departure" id="loc1" size="17">&nbsp;</td>
									
								</tr>
								<tr>
									<td><p class="reg_area dt">도착지</p></td>
									<td><input placeholder=" 예: 종각역" type="text" name="arrival" id="loc3" size="17"></td>
								</tr>
								<tr>
									<td><p class="reg_area dt">경유지</p></td>
									<td>
										<input placeholder=" 예: 신분당역" type="text"  size="17" name="stop1" id="pass1">&nbsp;&nbsp;
										<input type="text"  size="17" name="stop2" id="pass2">&nbsp;&nbsp;
										<input type="text"  size="17" name="stop3" id="pass3">
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
									<div id="map_div"></div>
									<div style="text-align:right;">
									<input type="button" class="btn_comm1" value="경로검색" id="route" /></td>
									</div>
								</tr>
								<tr>
									<td><p class="reg_area dt">좌석수</p></td>
									<td>
									<input type="number" name="seat" value="1"></td>
								</tr>
								<tr>
									<td><p class="reg_area dt">금액</p></td>
									<td><input type="text" name="price" size="20"> 원</td>
								</tr>
								<tr>
								
									<td><p class="reg_area dt">흡연 여부</p></td>
									
									<td>
										<p class="reg_area dt">
											<input type="radio" name="smoking" value="1"> 흡연자  
											<input type="radio" name="smoking" value="0" checked="checked"> 비흡연자
										</p>
									</td>
										
								</tr>
								<tr>
									<td><p class="reg_area dt">성별</p></td>
									<td>
										<p class="reg_area dt">
											<input type="radio" name="genderlimit" value="0" checked="checked"> 무관 
											<input type="radio" name="genderlimit" value="2"> 여성
											<input type="radio" name="genderlimit" value="1"> 남성 
										</p>
									</td>
								</tr>
	
								<tr>
									<td><p class="reg_area dt">추가내용</p></td>
									<td><textarea placeholder=" 추가내용을 입력하세요" name="memo" rows="10" cols="50"></textarea></td>
								</tr>
								
								<tr>
									<td colspan="2" align="center">
										<input type="reset" class="btn_comm" value="취소">&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="button" class="btn_comm" value="완료" onclick="writeClick()">
									</td>
								</tr>
							</table>
							</article>
						</form>
						
					</div>
					</div>
				</div>
		</div>
		</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>