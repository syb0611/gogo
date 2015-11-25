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
						<h2>TAXI</h2>
						
							
					</div>
				</div>
			</div>
		</div>
	</div>



	<div id="timeline-post">
		<div class="container">
			<div class="row">
			<div class="col-md-8 col-md-offset-2">
					<form method="post" action="${contextPath}/carpool/write">
						<input type="hidden" name="category" value="${category }">
						<input type="hidden" name="mno" value="${memberInfo.mno}">
						<center>
						<table>
						
							<div class="btn-group">
								<button type="button" class="btn btn-default" style="width:200px;height:50px">타세요</button>
								<button type="button" class="btn btn-default"style="width:200px;height:50px">태워주세요</button>
							</div>
							<br><br><br>
						</table>
						</center>
						<article class="con_wrap reg_wrap">
						<table class="table table-condensed" >
							<tr>
								<td><p class="reg_area dt">희망기간<p></td>
								<td><select name="user_birth_year">
										<option value="1" selected>1</option>
										<option value="2" selected>2</option>
										<option value="3" selected>3</option>
										<option value="4" selected>4</option>
										<option value="5" selected>5</option>
										<option value="6" selected>6</option>
										<option value="7" selected>7</option>
										<option value="8" selected>8</option>
										<option value="9" selected>9</option>
										<option value="10" selected>10</option>
										<option value="11" selected>11</option>
										<option value="12" selected>12</option>
										
								</select> 월 <select name="user_birth_month">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>

								</select> 일   ~  <select name="user_birth_day">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>

								</select> 월 <select name="user_birth_day">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>

								</select> 일 </td>
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
									<td><input type="text" name="pass" id="loc2" size="17">&nbsp;&nbsp;<input type="text"  size="17" name="pass" id="loc2">&nbsp;&nbsp;<input type="text"  size="17" name="pass" id="loc2">&nbsp;&nbsp;<input type="text"  size="17" name="pass" id="loc2"></td>
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
									<td><input type="text" name="arrival" size="20"></td>
								</tr>
								<tr>
								
									<td><p class="reg_area dt">흡연 여부</p></td>
									
									<td><p class="reg_area dt"><input type="radio" name="usertype" value="driver"
										checked="checked"> 흡연자 <input
										type="radio" name="usertype" value="rider"> 비흡연자 </p></td>
										
								</tr>
								<tr>
									
									<td><p class="reg_area dt">성별</p></td>
									
									<td><p class="reg_area dt"><input type="radio" name="usertype2" value="gender"
										checked="checked"> 여자 <input
										type="radio" name="usertype2" value="gender"> 남자 </p></td>
								</tr>

								<tr>
									<td><p class="reg_area dt">추가내용</p></td>
									<td><textarea name="memo" rows="10" cols="50"></textarea></td>
								</tr>
								
								<tr>
									<td colspan="2" align="center"><input type="submit" class="btn_comm" value="취소">&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="submit"  class="btn_comm" value="완료"></td>
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