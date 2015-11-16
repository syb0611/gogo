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

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/templatemo_style.css">
<link rel="stylesheet" href="css/templatemo_misc.css">
<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/testimonails-slider.css">

<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script type="text/javascript"	src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=5d5accbf-7745-315f-9ccc-fedc53a0f0b1"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="js/routes.js"></script>

<style>
#heading {
	background-image: url(images/zx.jpg);
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


/*]]>*/
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

							<a href="${contextPath}/home"><img src="images/pool2.jpeg"
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
				<div class="col-md-2">
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
				<div class="col-md-10">
				
					<h2></h2>
					<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CarPool</h3>
					<h4></h4>
					
					<form method="post" action="${contextPath}/carpool/write">
						<input type="hidden" name="category" value="${category }">
						<input type="hidden" name="mno" value="${memberInfo.mno}">
						<table>
							<div class="btn-group">
								<button type="button" class="btn btn-default" style="width:200px;height:50px"> 타세요 </button>
								<button type="button" class="btn btn-default"style="width:200px;height:50px">태워주세요</button>
							</div>
						</table>
						<table class="table table-condensed" >
							<tr>
								<td>출발시간</td>
								<td>월<select name="user_birth_year">
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
								</select> 일<select name="user_birth_month">
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

								</select> 시 <select name="user_birth_day">
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

								</select> 분 <select name="user_birth_day">
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
										<option value="32">32</option>
										<option value="33">33</option>
										<option value="34">34</option>
										<option value="35">35</option>
										<option value="36">36</option>
										<option value="37">37</option>
										<option value="38">38</option>
										<option value="39">39</option>
										<option value="40">40</option>
										<option value="41">41</option>
										<option value="42">42</option>
										<option value="43">43</option>
										<option value="44">44</option>
										<option value="45">45</option>
										<option value="46">46</option>
										<option value="47">47</option>
										<option value="48">48</option>
										<option value="49">49</option>
										<option value="50">50</option>
										<option value="51">51</option>
										<option value="52">52</option>
										<option value="53">53</option>
										<option value="54">54</option>
										<option value="55">55</option>
										<option value="56">56</option>
										<option value="57">57</option>
										<option value="58">58</option>
										<option value="59">59</option>
								</select> ~ 월<select name="user_birth_year">
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
								</select> 일<select name="user_birth_month">
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

								</select> 시 <select name="user_birth_day">
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

								</select> 분 <select name="user_birth_day">
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
										<option value="32">32</option>
										<option value="33">33</option>
										<option value="34">34</option>
										<option value="35">35</option>
										<option value="36">36</option>
										<option value="37">37</option>
										<option value="38">38</option>
										<option value="39">39</option>
										<option value="40">40</option>
										<option value="41">41</option>
										<option value="42">42</option>
										<option value="43">43</option>
										<option value="44">44</option>
										<option value="45">45</option>
										<option value="46">46</option>
										<option value="47">47</option>
										<option value="48">48</option>
										<option value="49">49</option>
										<option value="50">50</option>
										<option value="51">51</option>
										<option value="52">52</option>
										<option value="53">53</option>
										<option value="54">54</option>
										<option value="55">55</option>
										<option value="56">56</option>
										<option value="57">57</option>
										<option value="58">58</option>
										<option value="59">59</option>

								</select></td>
								</tr>
								<tr>
									<td>출발지</td>
									<td><input type="text" name="departure" id="loc1"></td>
								</tr>
								<tr>
									<td>도착지</td>
									<td><input type="text" name="arrival" id="loc3"></td>
								</tr>
								<tr>
									<td>지도검색<br><input type="button" value="경로검색" id="route" /></td>
									<td><div id="map_div"></div></td>
								</tr>
								<tr>
									<td>좌석수</td>
									<td><input type="number" name="seat" value="1"></td>
								</tr>
								<tr>
									<td>금액</td>
									<td><input type="text" name="arrival"></td>
								</tr>
								<tr>
									<!-- 			<td colspan="2"> -->
									<!-- 				<input type="radio" name="usertype" value="driver" checked="checked">흡연자 -->
									<!-- 				<input type="radio" name="usertype" value="rider">비흡연자 -->
									<!-- 			</td> -->
									<td>흡연 여부</td>
									<td><input type="radio" name="usertype" value="driver"
										checked="checked">흡연자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="usertype" value="rider">비흡연자</td>
								</tr>
								<tr>
									<!-- 			<td colspan="2"> -->
									<!-- 				<input type="radio" name="usertype" value="driver" checked="checked">여자 -->
									<!-- 				<input type="radio" name="usertype" value="rider">남자 -->
									<!-- 			</td> -->
									<td>성별</td>
									<td><input type="radio" name="usertype" value="driver"
										checked="checked">여자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="usertype" value="rider">남자</td>
								</tr>

								<tr>
									<td>추가내용</td>
									<td><textarea name="memo" rows="10" cols="50"></textarea></td>
								</tr>
								<tr>
									<td colspan="2" align="right"><input type="submit" value="취소"> <input
										type="submit" value="완료"></td>
								</tr>
							</table>
							</form>
					
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>