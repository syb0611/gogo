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


<script src="/withgo/resources/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script type="text/javascript"	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=5d5accbf-7745-315f-9ccc-fedc53a0f0b1"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="/withgo/resources/js/routes.js"></script>

<style>
#heading {
	background-image: url(/withgo/resources/images/zx.jpg);
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
<script>
// var xhr = null;

// function usertypeClick(type){
// 	var usertype = document.getElementById("usertype");
// 	var type1 = document.getElementById("usertype1");
// 	var type2 = document.getElementById("usertype2");
	
// 	if(type == 1){  //타세요
// 		usertype.value = 'driver';
// 		type1.style.background = '#E7E7E7';
// 		type2.style.background = 'white';
// 	}else{  //태워주세요
// 		usertype.value = 'rider';
// 		type2.style.background = '#E7E7E7';
// 		type1.style.background = 'white';
// 	}
// }

// function writeClick(){
// 	var form = document.wform;
	
// 	var category = form.category.value;
// 	var mno = form.mno.value;
// 	var departure = form.departure.value;
// 	var arrival = form.arrival.value;
// 	var usertype = form.usertype.value;
// 	var memo = form.memo.value;

// 	var date_year = form.date_year.value;
// 	var date_month = form.date_month.value;
// 	var date_day = form.date_day.value;
// 	if(date_month < 10) date_month = "0" + date_month;
// 	if(date_day < 10) date_day = "0" + date_day;
// 	var departuredate = date_year+"/"+date_month+"/"+date_day;
	
// 	var seat = form.seat.value;
// 	var stop1 = form.stop1.value;
// 	var stop2 = form.stop2.value;
// 	var stop3 = form.stop3.value;
// 	var stop4 = form.stop4.value;
// 	var stop5 = form.stop5.value;
// 	var price = form.price.value;
// 	var smoking = form.smoking.value;
// 	var genderlimit = form.genderlimit.value;
	
// 	var param = "category="+category+"&mno="+mno+"&departure="+departure+"&arrival="+arrival
// 				+"&usertype="+usertype+"&memo="+memo+"&departuredate="+departuredate+"&seat="+seat
// 				+"&stop1="+stop1+"&stop2="+stop2+"&stop3="+stop3+"&stop4="+stop4+"&stop5="+stop5
// 				+"&price="+price+"&smoking="+smoking+"&genderlimit="+genderlimit;
// 	//form.departuredate.value = departuredate;
// 	//alert("글 등록이 완료되었습니다.");
// 	//form.submit();
	
// 	xhr = new XMLHttpRequest();
// 	var url = "/withgo/carpool/write";
// 	xhr.open("POST", url, true);
// 	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
// 	xhr.onreadystatechange = writeResult;
// 	xhr.send(param);
// }

// function writeResult(){
// 	if(xhr.readyState == 4){
// 		if(xhr.status == 200){
// 			var carno_seq = xhr.responseText;	//carno_seq
// 			//alert(carno_seq);
// 			//saveToMongo(carno_seq);
// 		}
// 	}
// }



</script>
</head>
<body>
	<header>
		<%@ include file="../header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">

							<a href="${contextPath}/home"><img src="/withgo/resources/images/pool2.jpeg"
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
			<div class="col-md-8 col-md-offset-2">
					<form method="post" action="${contextPath}/carpool/write" name="wform" id="wform">
						<input type="hidden" name="category" value="${category }">
						<input type="hidden" name="mno" value="${memberInfo.mno}">
						<table>
							<div class="btn-group">
								<input type="hidden" name="usertype" id="usertype" value="driver">
								<button type="button" class="btn btn-default" id="usertype1" onclick="usertypeClick(1)">타세요</button>
								<button type="button" class="btn btn-default" id="usertype2" onclick="usertypeClick(2)">태워주세요</button>
							</div>
						</table>
						<article class="con_wrap reg_wrap">
						<table class="table table-condensed" >
							<tr>
								<td><p class="reg_area dt">출발날짜<p></td>
								<td>	
									<input type="hidden" name="departuredate" id="departuredate">
									<select name="date_year">
										<c:set var="year" value="<%=new GregorianCalendar().get(Calendar.YEAR) %>"/>
										<c:forEach var="i" begin="${year }" end="${year+100 }" step="1">
											<option value="${i}">${i }</option>
										</c:forEach>
									</select>년
									<select name="date_month">
										<c:forEach var="month" begin="1" end="12" step="1">
											<option value="${month }">${month }</option>
										</c:forEach>
									</select>월
									<select name="date_day">
										<c:forEach var="day" begin="1" end="31" step="1">
											<option value="${day }">${day }</option>
										</c:forEach>
									</select>일
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
									<input type="text"  size="17" name="stop1" id="pass1">&nbsp;&nbsp;
									<input type="text"  size="17" name="stop2" id="pass2">&nbsp;&nbsp;
									<input type="text"  size="17" name="stop3" id="pass3">&nbsp;&nbsp;
									<input type="text"  size="17" name="stop4" id="pass4">&nbsp;&nbsp;
									<input type="text"  size="17" name="stop5" id="pass5">
								</td>
							</tr>
							<tr>
								<td><br></td>
								<td><div id="map_div"></div><br><input type="button" class="btn_comm1" value="경로검색" id="route" /></td>
							</tr>
							<tr>
								<td><p class="reg_area dt">좌석수</p></td>
								<td>
								<input type="number" name="seat" value="1"></td>
							</tr>
							<tr>
								<td><p class="reg_area dt">금액</p></td>
								<td><input type="text" name="price" size="20"></td>
							</tr>
							<tr>
							
								<td><p class="reg_area dt">흡연 여부</p></td>
								
								<td>
									<p class="reg_area dt">
										<input type="radio" name="smoking" value="1">흡연자
										<input type="radio" name="smoking" value="0" checked="checked"> 비흡연자
									</p>
								</td>
									
							</tr>
							<tr>
								<td><p class="reg_area dt">성별</p></td>
								<td>
									<p class="reg_area dt">
										<input type="radio" name="genderlimit" value="0" checked="checked">무관
										<input type="radio" name="genderlimit" value="1">여성전용
										<input type="radio" name="genderlimit" value="2">남성전용 
									</p>
								</td>
							</tr>

							<tr>
								<td><p class="reg_area dt">추가내용</p></td>
								<td><textarea name="memo" rows="10" cols="50"></textarea></td>
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
	<%@ include file="../footer.jsp"%>
</body>
</html>