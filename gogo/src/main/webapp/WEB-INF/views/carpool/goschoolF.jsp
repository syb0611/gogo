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
#timeline-post{
	margin-top: 30px;
}
/*]]>*/
</style>
<script>
var xhr;

function checkChange(){
	xhr= new XMLHttpRequest();
   	xhr.onreadystatechange=callback;
   var id=document.getElementById("sel1").value;
   xhr.open("get","${pageContext.request.contextPath}/school/list?type="+id,true);
   xhr.send(null);
}

function callback(){
	if(xhr.readyState==4){
      if(xhr.status==200){
    	  var result = xhr.responseText;
    	  document.getElementById("sel2").innerHTML = result;
        // document.getElementById("view").innerHTML=
      }else if(xhr.status==404){
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
		<%@ include file="/WEB-INF/views/header.jsp"%>
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
						<h2>GOSCHOOL CARPOOL</h2>
						
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
	
	 

	<%-- <div id="timeline-post">
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
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<h3>GoSchool</h3>
		
							<form method="post" action="${contextPath}/carpool/write">
								<input type="hidden" name="category" value="${category }">
								<input type="hidden" name="mno" value="${memberInfo.mno}">
									<table class="table table-condensed" > --%>
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
								</select> 
											</select></td>
										</tr>
										<tr>
											<td colspan ="5">
												출발지 <input type="text"  id="loc1">
												<input type="button" class="btn_comm1" value="경로검색" id="route" />
												도착지
												<span>
													<select name="sel1" id="sel1" onchange="checkChange()">
														<option value="">선택</option>
														<option value="seoul">서울특별시</option>
														<option value="rhkd">6대광역시</option>
														<option value="kyung">경기도</option>
														<option value="kang">강원도</option>
														<option value="chung">충청도</option>
														<option value="jeon">전라도</option>
														<option value="kyusang">경상도</option>
														<option value="jeju">제주도</option>
														
													</select>
												</span>
												<span>
													<select name="sel2" id="loc3">
														<option value="seoul"></option>
													</select>
												</span>
											</td>
										</tr>
										<tr>
											<td colspan ="6">경유지
											<input type="text" id="pass1">
											<input type="text" id="pass2">
											<input type="text" id="pass3">
											</td>
										</tr>
										<tr>
											<td colspan ="5"><div id="map_div"></div></td>
										</tr>
										<tr>
											<td>좌석수</td>
											<td colspan ="4"><input type="number" name="seat" value="1"></td>
										</tr>
										<tr>
											<td>금액</td>
											<td colspan ="4"><input type="text" name="arrival"></td>
										</tr>
										<tr>
											<!-- 			<td colspan="2"> -->
											<!-- 				<input type="radio" name="usertype" value="driver" checked="checked">흡연자 -->
											<!-- 				<input type="radio" name="usertype" value="rider">비흡연자 -->
											<!-- 			</td> -->
											<td>흡연 여부</td>
											<td colspan ="4"><input type="radio" name="usertype" value="driver"
												checked="checked">흡연자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
												type="radio" name="usertype" value="rider">비흡연자</td>
										</tr>
										<tr>
											<!-- 			<td colspan="2"> -->
											<!-- 				<input type="radio" name="usertype" value="driver" checked="checked">여자 -->
											<!-- 				<input type="radio" name="usertype" value="rider">남자 -->
											<!-- 			</td> -->
											<td>성별</td>
											<td colspan ="4"><input type="radio" name="usertype" value="driver"
												checked="checked">여자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
												type="radio" name="usertype" value="rider">남자</td>
										</tr>
		
										<tr>
											<td>추가내용</td>
											<td colspan ="4"><textarea name="memo" rows="10" cols="20"></textarea></td>
										</tr>
										<tr>
									<td colspan="2" align="center"><input type="submit" class="btn_comm" value="취소">&nbsp;&nbsp;&nbsp;&nbsp;<input
										type="submit"  class="btn_comm" value="완료"></td>
								</tr>
									</table>
									</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>