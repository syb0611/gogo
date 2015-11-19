<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
@import
url
(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body {
	font-family: '맑은 고딕';
}
</style>

<head>
<meta charset="utf-8">
<title>About - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">


<style>
#timeline-post{
	margin-top: 30px;
}

.listTable{
	width: 100%;
}

.listTable tr td{
	padding: 5px;
}
.listTable:hover {
	background-color: #EAEAEA;
}

#bookmarkck{
	position: absolute;
	margin-left: 93%;
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
							<li><a href="${contextPath}/carpool/list?category=dan"><font size = 3>단기카풀</font></a></li>
                    	 	<li><a href="${contextPath}/carpool/list?category=jang"><font size = 3>장기카풀</font></a></li> 
	                        <li><a href="${contextPath}/carpool/list?category=goschool"><font size = 3>고 스쿨</font></a></li>
	                        <li><a href="${contextPath}/carpool/list?category=taxi"><font size = 3>택시카풀</font></a></li>
	                        <li><a href="${contextPath}/board/main"><font size = 3>커뮤니티</font></a></li>
	                        <li><a href="${contextPath}/customer"><font size = 3>고객센터</font></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<c:choose>
		<c:when test="${category == 'dan'}">
			<div id="heading"
				style="background-image: url(../images/slide4.jpg); height: 140px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-content">
								<h2>short-term carpool</h2>
								<span>Home / <a href="${contextPath}/carpool/list?category=dan">단기카풀</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
		<c:when test="${category == 'jang'}">
			<div id="heading"
				style="background-image: url(../images/slide1.jpg); height: 140px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-content">
								<h2>Long-term carpool</h2>
								<span>Home / <a href="${contextPath}/carpool/list?category=jang">장기카풀</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
		<c:when test="${category == 'goschool'}">
			<div id="heading"
				style="background-image: url(../images/slide5.jpg); height: 140px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-content">
								<h2>goschool</h2>
								<span>Home / <a href="${contextPath}/carpool/list?category=goschool">고스쿨</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
		<c:when test="${category == 'taxi'}">
			<div id="heading"
				style="background-image: url(../images/slide3.jpg); height: 140px;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="heading-content">
								<h2>TAXI CARPOOL</h2>
								<span>Home / <a href="${contextPath}/carpool/list?category=taxi">TAXI</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:when>
	</c:choose>

	<div id="timeline-post">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
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
								<input name="auth" id="auth" type="checkbox" value="phone"><span>휴대전화</span> 
								<input name="auth" id="auth" type="checkbox" value="facebook"><span>페이스북</span><br><br> 
								흡연 여부 : 
								<input name="smoking" id="smoking" type="radio" checked="checked" value="N"><span>흡연불가</span>
								<input name="smoking" id="smoking" type="radio" value="Y"><span>흡연가능</span> 
								<br>
							</div>
							<input type="submit" value="검색하기" />
						</form>
					</fieldset>
				</div>
				
				<div class="col-md-9">
					<div>
						<%-- <div style="float: left;">
						<c:choose>
							<c:when test="${category == 'dan'}">
								<h4>단기카풀</h4>
							</c:when>
							<c:when test="${category == 'jang'}">
								<h4>장기카풀</h4>
							</c:when>
							<c:when test="${category == 'goschool'}">
								<h4>고스쿨</h4>
							</c:when>
							<c:when test="${category == 'taxi'}">
								<h4>택시</h4>
							</c:when>
						</c:choose>
						</div> --%>
						<div style="float: right;">
						<c:if test="${memberInfo != null }">
							<input type="button" class="btn btn-default" value="글 등록" onclick="location.href='${contextPath}/carpool/writeform?category=${category }'">
						</c:if>
						</div>
					</div>
					
					
					<table class="table table-condensed">
						<c:choose>
							<c:when test="${list == '[]' }">
								<td colspan="7">등록된 글이 없습니다.</td>
							</c:when>
							<c:otherwise>
							<c:forEach items="${list }" var="vo">
							<tr>
								<td>
									<input type="checkbox" id="bookmarkck">
									<table class="listTable" onclick="location.href='${contextPath}/carpool/read?category=${category}&no=${vo.carno }'">		
										<tr>
											<td width="15%" align="center">
												<div><img src="../images/blankimage.png" width="80px"></div>
												<div style="margin-top: 5px">${vo.name }</div>
											</td>
											<td width="65%" style="padding-left: 20px; line-height: 100%; vertical-align: top">
												<div style="padding: 10px">${vo.departuredate } 출발</div>
												<div style="padding: 10px">${vo.departure } <img src="../images/a.png" width="15px"> ${vo.arrival }</div>
												<div style="padding: 10px">경유지</div>
											</td>
											<td width="20%" style="text-align: right">
												<div>
													<c:choose>
														<c:when test="${category == 'dan' }"><img src="../images/dan.png"></c:when> 
														<c:when test="${category == 'jang' }"><img src="../images/jang.png"></c:when>
														<c:otherwise><img src="../images/taxiimgpng"></c:otherwise>
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
<!-- 										<tr>	 -->
<!-- 											<td width="20%"> -->
<%-- 												<c:if test="${vo.authemail == 1 }">이메일인증</c:if> --%>
<%-- 												<c:if test="${vo.authphone == 1 }">핸드폰인증</c:if> --%>
<!-- 											</td> -->
									</table>
									
								</td>
							</tr>
							</c:forEach>
							</c:otherwise>
						</c:choose>		
					</table>
				</div>
			</div>

			<div class="space50"></div>


		</div>
	</div>


	<%@ include file="../footer.jsp"%>

</body>
</html>