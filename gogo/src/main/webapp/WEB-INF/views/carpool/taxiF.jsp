<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
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
<title>main</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<script src="/withgo/resources/js/routes.js"></script>

<style>
#heading {
	background-image: url(/withgo/resources/images/계.png);
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

.t_ex2 td, .t_ex2 th {
	border: 1px solid #070C03;
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

#timeline-post {
	margin-top: 30px;
}
#usertype1 {
	width: 200px;
	height: 50px;
	background: #E7E7E7;
}

#usertype2 {
	width: 200px;
	height: 50px;
}
/*]]>*/
</style>
<script>
var xhr;

function checkChange() {
	xhr = new XMLHttpRequest();
	xhr.onreadystatechange = callback;
	var id = document.getElementById("sel1").value;
	xhr.open("get", "${pageContext.request.contextPath}/school/list?type="
			+ id, true);
	xhr.send(null);
}

function callback() {
	if (xhr.readyState == 4) {
		if (xhr.status == 200) {
			var result = xhr.responseText;
			document.getElementById("sel2").innerHTML = result;
			// document.getElementById("view").innerHTML=
		} else if (xhr.status == 404) {
			//  document.getElementById("view").innerHTML="서버프로그램 없음";
		}
	}
}

function formcheck(){
	var form = document.wform;
	
	var category = form.category.value;
	var mno = form.mno.value;
	var usertype = form.usertype.value;
	
	var date_year = form.date_year.value;
	var date_month = form.date_month.value;
	var date_day = form.date_day.value;
	if (date_month < 10)
		date_month = "0" + date_month;
	if (date_day < 10)
		date_day = "0" + date_day;
	var departuredate = date_year + "/" + date_month + "/" + date_day;
	
	var departure = form.departure.value.trim();
	if(departure == ""){
		alert("출발지를 입력하세요.");
		form.departure.focus();
		return;
	}
	
	var arrival = form.arrival.value;
	if(arrival == "" || arrival == null){
		alert("도착지를 선택하세요.");
		form.sel2.focus();
		return;
	}
	
	var stop1 = form.stop1.value;
	var stop2 = form.stop2.value;
	var stop3 = form.stop3.value;
	var seat = form.seat.value;
	var price = form.price.value;
	price = document.getElementById("money").innerHTML;
	var smoking = form.smoking.value;
	var genderlimit = form.genderlimit.value;
	var memo = form.memo.value;
	
	var param = "category=" + category + "&mno=" + mno + "&departure="
				+ departure + "&arrival=" + arrival + "&usertype=" + usertype
				+ "&memo=" + memo + "&departuredate=" + departuredate
				+ "&seat=" + seat + "&stop1=" + stop1 + "&stop2=" + stop2
				+ "&stop3=" + stop3 + "&price=" + price + "&smoking=" + smoking + "&genderlimit="
				+ genderlimit;
	
	xhr = new XMLHttpRequest();
	var url = "/withgo/carpool/write";
	xhr.open("POST", url, true);
	xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	xhr.onreadystatechange = writeResult;
	xhr.send(param);
}
</script>
<script type="text/javascript"	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=5d5accbf-7745-315f-9ccc-fedc53a0f0b1"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="/withgo/resources/js/routes.js"></script>
</head>
<body>
	<header>
		<%@ include file="../header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">

							<a href="${contextPath}/home"><img
								src="/withgo/resources/images/roro.png" width="100px" height="50px"title="go home"
								alt="Grill Website Template"></a>

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
								<span style="color:gray;">' 택시카풀 ' 서비스 이용을 위한 등록하기 페이지 입니다. </span>
						
							
					</div>
				</div>
			</div>
		</div>
	</div>


	<div id="timeline-post">
		<div class="container">
			<div class="row">
			<div class="col-md-8 col-md-offset-2">
					<form method="post" name="wform">
						<input type="hidden" name="category" value="${category }">
						<input type="hidden" name="mno" value="${memberInfo.mno}">
						
						<table>
							<tr>
							<td>
								<div style="text-align: center; font-family: NanumGothicBold;">
									<input type="hidden" name="usertype" id="usertype" value="together">
	
									<button type="button" class="btn btn-default">
										<img src="/withgo/resources/images/check.png" width="30px" height="30px">&nbsp;함께타요
									</button>
								</div>
							</td>
							</tr>
						</table>
				
						<article class="con_wrap reg_wrap">
						<table class="table table-condensed">
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
									<td><input type="text" name="departure" id="loc1" size="17">&nbsp;</td>
									
								</tr>
								<tr>
									<td><p class="reg_area dt">도착지</p></td>
									<td><input type="text" name="arrival" id="loc3" size="17"></td>
								</tr>
								<tr>
									<td><p class="reg_area dt">경유지</p></td>
									<td>
										<input type="text" name="stop1" id="loc2" size="17">&nbsp;&nbsp;
										<input type="text"  size="17" name="stop2" id="loc2">&nbsp;&nbsp;
										<input type="text"  size="17" name="stop3" id="loc2">&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
										<div id="map_div"></div>
										<div style="text-align:right;">
											<input type="button" class="btn_comm1" value="경로검색" id="route" />
										</div>
									</td>
								</tr>
								<tr>
									<td><p class="reg_area dt">거리</p></td>
									<td><span id="meter"></span></td>	
								</tr>
								<tr>
									<td>
										<input type="hidden" name="price">
										<p class="reg_area dt">예상금액</p>
									</td>
									<td><span id="money"></span></td>
								</tr>
								<tr>
									<td><p class="reg_area dt">좌석수</p></td>
									<td>
									<input type="number" name="seat" value="1"></td>
								</tr>
								<tr>
									<td><p class="reg_area dt">흡연 여부</p></td>
									
									<td><p class="reg_area dt">
										<input type="radio" name="smoking" value="1" checked="checked"> 흡연자 
										<input type="radio" name="smoking" value="0"> 비흡연자 </p></td>
								</tr>
								<tr>
									
									<td><p class="reg_area dt">성별</p></td>
									
									<td><p class="reg_area dt">
										<input type="radio" name="genderlimit" value="0" checked="checked"> 무관 
										<input type="radio" name="genderlimit" value="2"> 여자 
										<input type="radio" name="genderlimit" value="gender"> 남자 </p>
									</td>
								</tr>

								<tr>
									<td><p class="reg_area dt">추가내용</p></td>
									<td><textarea name="memo" rows="10" cols="50"></textarea></td>
								</tr>
								
								<tr>
									<td colspan="2" align="center">
										<input type="reset" class="btn_comm" value="취소">&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="button"  class="btn_comm" value="완료" onclick="formcheck()"></td>
								</tr>
							</table>
						</article>
					</form>
					
				</div>
				</div>
			</div>
		</div>	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>