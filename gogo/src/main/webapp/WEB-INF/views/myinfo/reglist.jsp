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



<style>
#heading {
background-image: url(/withgo/resources/images/새.png); 
	
	height: 150px;
}

.content{
	margin: 30px;
}

.categoryTitle{
	float: left;
}

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

#pic{
	border-radius: 10px;
}
</style>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

	<header>
		<%@ include file="../header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="${contextPath}/home"><img src="../images/roro.png" width="100px" height="50px"  title="Grill Template" alt="go home"></a>
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
						<h2 style="color:#ec7600; text-align:center; font-weight: 800; text-shadow:1px 1px 1px #ffc58a;">m y p a g e</h2>
								<span style="color:gray;">' 마이페이지 ' 는  내 정보를 확인,수정,삭제 할 수 있는 페이지 입니다.  </span>
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
								<h4>내가 쓴 카풀 글</h4>
								
								<table class="table table-condensed">
									<c:choose>
										<c:when test="${myRegList == '[]' }">
											<td colspan="7">등록된 글이 없습니다.</td>
										</c:when>
										<c:otherwise>
										<c:forEach items="${myRegList }" var="vo">
										<tr>
											<td>
												<table class="listTable" onclick="location.href='${contextPath}/carpool/read?category=${vo.category}&no=${vo.carno }'">		
													<tr>
														<td width="15%" align="center">
															<div>
																<c:choose>
																	<c:when test="${vo.image == null }">
																		<img src="/withgo/resources/images/blankimage.png" width="80px"  height="80px" id="pic">
																	</c:when>
																	<c:otherwise>
																		<img src="/withgo/upload/${vo.image }" width="80px"  height="80px" id="pic">
																	</c:otherwise>
																</c:choose>
																
															</div>
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
																	<c:when test="${vo.category == 'dan' }"><img src="../images/dan.png"></c:when> 
																	<c:when test="${vo.category == 'jang' }"><img src="../images/jang.png"></c:when>
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
												</table>
												
											</td>
										</tr>
										</c:forEach>
										</c:otherwise>
									</c:choose>		
								</table>
								
								<div>
									<span class="page">
										<c:if test="${pvo.curPage <= pvo.totalPage }">
										<ul class="pagination">
											<c:if test="${pvo.curBlock != 1 }">
												<li><a href="/withgo/mypage/reglist?page=${pvo.firstPage-1}">&laquo;</a></li>
											</c:if>
											<c:forEach var="pageno" begin="${pvo.firstPage }" end="${pvo.lastPage }">
												<c:if test="${pageno <= pvo.totalPage }">
													<c:choose>
														<c:when test="${pageno == pvo.curPage }">
															<li class="active"><a href="#">${pageno }</a>
														</c:when>
														<c:otherwise>
															<li><a href="/withgo/mypage/reglist?&page=${pageno}">${pageno }</a></li>
														</c:otherwise>
													</c:choose>
												</c:if>
											</c:forEach>
											<c:if test="${pvo.curBlock != pvo.lastBlock }">
												<li><a href="/withgo/mypage/reglist?page=${pvo.lastPage+1}">&raquo;</a></li>
											</c:if>
										</ul>
										</c:if>
									</span>
									
								</div>	
							</div>
						</div>			
					</div>		
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>