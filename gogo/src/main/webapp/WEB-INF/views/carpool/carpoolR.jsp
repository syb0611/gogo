<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	margin-top: 50px;
}
</style>
<script>
var xhr;

function checkBooking(){
	var reqmem = document.getElementById("reqmem").value;  //예약신청자
	var resmem = document.getElementById("resmem").value;  //글작성자

	if(reqmem == null || reqmem == ""){
		alert("로그인하세요.");
		return;
	}else if(reqmem == resmem){
		alert("이 글의 작성자는 예약할 수 없습니다.");
		return;
	}
	else{
		if(confirm("예약신청하시겠습니까?") == true){
			goBooking();
		}else{
			return;	
		}
	}
}

function goBooking(){
	var carno = document.getElementById("carno").value;
	var reqmem = document.getElementById("reqmem").value;
	var resmem = document.getElementById("resmem").value;
	var seatnum = document.getElementById("seatnum").value;

	xhr = new XMLHttpRequest();
	var url = "${pageContext.request.contextPath}/booking/bookRequest";
	xhr.open("POST", url, true);
	xhr.onreadystatechange = bookResult;
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	xhr.send("carno="+carno+"&reqmem="+reqmem+"&resmem="+resmem+"&seatnum="+seatnum);
}

function bookResult(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			var result = xhr.responseText;
			
 			if(result == "alreadyBooked"){
 				alert("이미 예약된 글입니다.");
 				return;
 			}else if(result == "noMoreSeat"){
 				alert("예약 좌석이 마감되었습니다.");
 				return;
 			}else if(result == "over"){
 				alert("좌석이 부족합니다.");
 				return;
 			}else if(result == "success"){
 				alert("예약신청되었습니다. 수락을 기다리세요.");
 				return;
 			}
		}
	}
}
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
					<div style="width:100%; height:250px; border:1px solid #C6C6C6">
						<table style="width:80%; margin: 0 auto; margin-top: 20px;">
							<tr>
								<td rowspan="2" style="padding-right: 5px"><img src="../images/blankimage.png" width="80px;"></td>
								<td>${vo.name }</td>
							</tr>
							<tr>
								<td>인증</td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>
									<input type="hidden" name="reqmem" id="reqmem" value="${memberInfo.mno }">
									<input type="hidden" id="resmem" value="${vo.mno }">
									<input type="hidden" name="carno" id="carno" value="${vo.carno }">
									<select class="form-control input-sm" name="seatnum" id="seatnum">
										<c:forEach begin="1" end="${vo.seat }" var="num">
											<option value="${num }">${num }명</option>
										</c:forEach>
									</select>
								</td>
								<td style="text-align: right"><input type="button" class="btn btn-primary btn-sm" value="예약신청" onclick="checkBooking()"></td>	
							</tr>
							<tr>
								<td colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td colspan="2">
									<form method="post" action="${contextPath}/message/form">
										<input type="hidden" name="toname" value="${vo.nickname }">
										<input type="hidden" name="prevUrl" value="/carpool/read?category=${vo.category}&no=${vo.carno }">
										<input type="submit" class="btn btn-warning form-control" value="쪽지보내기">			
									</form>				
								</td>
							</tr>
						</table>
						
					</div>
				</div>
				<div class="col-md-9">
					<div class="col-md-11 col-md-offset-1">
						<div style="float:left; margin-right: 20px; margin-bottom: 20px;">
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
									<th width="20%">출발지</th>
									<td width="30%">${vo.departure }</td>
									<th width="20%">도착지</th>
									<td width="30%">${vo.arrival }</td>
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
									<td>${vo.bookedseat}/${vo.seat }</td>
									<th>희망요금(1인)</th>
									<td><fmt:formatNumber value="${vo.price }" type="number"/>원</td>
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
								<tr>
									<td colspan="4">
										<div style="height:300px">지도</div>
									</td>
								</tr>
								<tr>
									<th>추가내용</th>
									<td colspan="3">
										<textarea rows="15" cols="40" readonly="readonly" style="border:1px solid #D8D8D8">${vo.memo }</textarea>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>