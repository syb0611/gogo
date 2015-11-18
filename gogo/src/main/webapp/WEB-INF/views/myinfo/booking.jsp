<%@page import="com.gogo.withgo.vo.BookInfoVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo_style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/templatemo_misc.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/testimonails-slider.css">

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

table{
	width: 100%;
}

.listTable{
	width: 100%;
}

.listTd:hover{
	background-color: #EAEAEA;
	cursor: pointer;
}

.listTable table tr td{
	padding: 5px;
}

</style>

<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script>
function cancelClick(){
	if(confirm("예약요청을 취소하시겠습니까?") == true){
		alert("요청이 취소되었습니다.");
		return true;
	}else{
		return false;
	}
}
</script>
<script>
var xhr;
var no;

function iconClick(carno){
	no = carno;
	var icon = document.getElementById("icon"+no);

	var imgUp = "http://localhost:8080${pageContext.request.contextPath}/images/up.png";
	var imgDown = "http://localhost:8080${pageContext.request.contextPath}/images/down.png";
	
	if(icon.src == imgDown){
		icon.src = imgUp;
		getRequest();
	}else{
		icon.src = imgDown;
		deleteRequestTd();
	}

}

function deleteRequestTd(){
	var reqlist = document.getElementById("reqlist"+no);
	reqlist.parentNode.removeChild(reqlist);
}

function getRequest(){
	xhr = new XMLHttpRequest();
	var url = "${pageContext.request.contextPath}/booking/getRequests";
	xhr.open("POST", url, true);
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	xhr.onreadystatechange = createRequestTd;
	xhr.send("carno="+no);
}

function createRequestTd(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			var flag = xhr.responseText;
			var trId = document.getElementById("tr"+no);		
			
	 		var tr = document.createElement("tr");
 	 		var td = document.createElement("td");

 	 		tr.id = "reqlist"+no;
	 		td.innerHTML = flag;
 	 		tr.appendChild(td);
 	 		trId.appendChild(tr);
		}
	}
}

function acc(cno, reqmem){
	//location.href = "${pageContext.request.contextPath}/booking/accept?carno="+cno+"&reqmem="+reqmem;
}

function rej(){
	alert("abc");
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
							<a href="${contextPath}/home"><img src="${contextPath}/images/pool2.jpeg" title="Grill Template" alt="Grill Website Template"></a>
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
						<span>Mypage / <a href="${contextPath}/mypage/booking">예약내역</a></span>
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
								
								<c:choose>
									<c:when test="${type == '1'}">
										<button class="btn btn-default" onclick="location.href='${contextPath}/mypage/booking?type=1'" style="background: gray; color:white">받은 예약 <span class="badge">${requestCnt }</span></button>
										<button class="btn btn-default" onclick="location.href='${contextPath}/mypage/booking?type=2'">한 예약</button>	
										<div>
											<table class="table table-condensed">
												<c:choose>
													<c:when test="${booklist == '[]' }">
														<tr>
															<td colspan="4">예약 신청한 글이 없습니다.</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${booklist }" var="vo1">
														<tr>
															<td>
																<table class="listTable" id="tr${vo1.carno }">	
																	<tr>
																		<td style="width:90%" class="listTd">
																			<table onclick="location.href='${contextPath}/carpool/read?category=${category}&no=${vo1.carno }'">
																				<tr>
																					<td width="15%" align="center">
																						<div><img src="${contextPath}/images/blankimage.png" width="80px"></div>
																						<div style="margin-top: 5px">${vo1.name }</div>
																					</td>
																					<td>
																						<div style="padding: 10px">${vo1.departuredate } 출발</div>
																						<div style="padding: 10px">${vo1.departure } <img src="${contextPath}/images/a.png" width="15px"> ${vo1.arrival }</div>
																						<div style="padding: 10px">경유지</div>
																					</td>
																					<td width="25%" style="text-align: right; padding-right: 15px">
																						<div>
																							<c:choose>
																								<c:when test="${category == 'dan' }"><img src="${contextPath}/images/dan.png"></c:when> 
																								<c:when test="${category == 'jang' }"><img src="${contextPath}/images/jang.png"></c:when>
																								<c:otherwise><img src="${contextPath}/images/taxiimgpng"></c:otherwise>
																							</c:choose>
																							<c:choose>
												 												<c:when test="${vo1.usertype == 'driver' }">타세요</c:when> 
																								<c:when test="${vo1.usertype == 'rider' }">태워주세요</c:when> 
																								<c:otherwise>함께타요</c:otherwise>									
																							</c:choose> 
																						</div>
																						<div><font size="5"><fmt:formatNumber value="${vo1.price }" type="number"/>원</font></div>
																						<div>
																							<font size="4">
																							<c:choose>
																								<c:when test="${vo1.bookedseat == vo1.seat }"><font color="red">마감</font></c:when>
																								<c:otherwise>${vo1.bookedseat}/${vo1.seat }</c:otherwise>
																							</c:choose>
																							</font>
																						</div>
																					</td>
																				</tr>
																			</table>
																		</td>
																		<td style="text-align: center; border-left: 1px dotted #C3C3C3">
																		
																			예약요청<br>${vo1.requestseat }건<br>
																			<div style="margin-top: 10px;">
																				<img src="${contextPath}/images/down.png" id="icon${vo1.carno}" width="30px" style="cursor: pointer;" onclick="iconClick(${vo1.carno})">
																			</div>
																		</td>
																	</tr>
																</table>
															</td>
															
														</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>		
											</table>
										</div>					
									</c:when>
									<c:otherwise>
										<button class="btn btn-default" onclick="location.href='${contextPath}/mypage/booking?type=1'">받은 예약 <span class="badge">${requestCnt }</span></button>
										<button class="btn btn-default" onclick="location.href='${contextPath}/mypage/booking?type=2'" style="background: gray; color:white">한 예약</button>	
										<div>
											<table class="table table-condensed">
												<c:choose>
													<c:when test="${booklist == '[]' }">
														<tr>
															<td colspan="4">받은 예약이 없습니다.</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${booklist }" var="vo">
														<tr>
															<td>
																<table class="listTable">	
																	<tr>
																		<td style="width:90%" class="listTd">
																			<table onclick="location.href='${contextPath}/carpool/read?category=${category}&no=${vo.carno }'">
																				<tr>
																					<td align="center" width="15%">
																						<div><img src="${contextPath}/images/blankimage.png" width="80px"></div>
																						<div style="margin-top: 5px">${vo.name }</div>
																					</td>
																					<td>
																						<div style="padding: 10px">${vo.departuredate } 출발</div>
																						<div style="padding: 10px">${vo.departure } <img src="${contextPath}/images/a.png" width="15px"> ${vo.arrival }</div>
																						<div style="padding: 10px">경유지</div>
																					</td>
																					<td width="25%" style="text-align: right; padding-right: 15px">
																						<div>
																							<c:choose>
																								<c:when test="${category == 'dan' }"><img src="${contextPath}/images/dan.png"></c:when> 
																								<c:when test="${category == 'jang' }"><img src="${contextPath}/images/jang.png"></c:when>
																								<c:otherwise><img src="${contextPath}/images/taxiimgpng"></c:otherwise>
																							</c:choose>
																							<c:choose>
												 												<c:when test="${vo.usertype == 'driver' }">타세요</c:when> 
																								<c:when test="${vo.usertype == 'rider' }">태워주세요</c:when> 
																								<c:otherwise>함께타요</c:otherwise>									
																							</c:choose> 
																						</div>
																						<div><font size="5"><fmt:formatNumber value="${vo.price }" type="number"/>원</font></div>
																						<div>
																							<font size="4">
																							<c:choose>
																								<c:when test="${vo.bookedseat == vo.seat }"><font color="red">마감</font></c:when>
																								<c:otherwise>${vo.bookedseat}/${vo.seat }</c:otherwise>
																							</c:choose>
																							</font>
																						</div>
																					</td>
																				</tr>
																			</table>
																		</td>
																		<td style="text-align: center; border-left: 1px dotted #C3C3C3">
																			<c:choose>
																				<c:when test="${vo.status == 0 }">
																					<div style="margin-bottom: 5px;">요청중</div>
																					<form name="cancelform" method="post" action="${contextPath}/booking/cancel" onsubmit="return cancelClick()">
																						<input type="hidden" id="reqmem" name="reqmem" value="${memberInfo.mno }">
																						<input type="hidden" id="carno" name="carno" value="${vo.carno }">
																						<input type="hidden" id="type" name="type" value="${type }">
																						<input type="submit" id="cancelbtn" class="btn btn-primary btn-xs" value="취소">
																					</form>
																				</c:when>
																				<c:when test="${vo.status == -1 }">거절</c:when>
																				<c:otherwise>수락</c:otherwise>
																			</c:choose>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>		
											</table>
										</div>
									
									</c:otherwise>
								</c:choose>

								
								
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