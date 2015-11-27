<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<style>
#heading {
 	background-image: url(/withgo/resources/images/새.png); 
	
	height: 140px;
}

.content{
	margin: 30px;
}

.categoryTitle{
	float: left;
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
.bookmarkck{
	position: absolute;
	margin-left: 93%;
	cursor: pointer;
}

#pic{
	border-radius: 10px;
}
</style>
<script>
var xhr;
var imgOn = "http://localhost:8080/withgo/resources/images/on.png";
var imgOff = "http://localhost:8080/withgo/resources/images/off.png";

function bookmarkClick(carno){
	var mno = document.getElementById("mno").value;
	if(mno == null || mno == ""){
		alert("로그인 후 즐겨찾기 이용이 가능합니다.");
		return;
	}
	
	var bookmark = document.getElementById("bookmark"+carno);
	if(bookmark.src == imgOff){
		bookmark.src = imgOn;
		addBookMark(carno, mno);
	}else if(bookmark.src == imgOn){
		bookmark.src = imgOff;
		delBookMark(carno, mno);
	}
}

function addBookMark(carno, mno){
	
	xhr = new XMLHttpRequest();
	var url = "${pageContext.request.contextPath}/mypage/addBookMark";
	xhr.open("POST", url, true);
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	xhr.onreadystatechange = addBookMarkResult;
	xhr.send("carno="+carno+"&mno="+mno);
}

function addBookMarkResult(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			alert("add");
			var flag = xhr.responseText;
		}
	}
}

function delBookMark(carno, mno){
	xhr = new XMLHttpRequest();
	var url = "${pageContext.request.contextPath}/mypage/delBookMark";
	xhr.open("POST", url, true);
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	xhr.onreadystatechange = delBookMarkResult;
	xhr.send("carno="+carno+"&mno="+mno);
}

function delBookMarkResult(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			alert("del");
			var flag = xhr.responseText;
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
							<a href="${contextPath}/home"><img src="../images/roro.png" width="100px" height="50px" title="Grill Template" alt="Go home"></a>
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
								<table class="table table-condensed">
									<c:choose>
										<c:when test="${bmList == '[]' }">
											<tr>
												<td colspan="2">즐겨찾기 글이 없습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
										<c:forEach items="${bmList }" var="vo">
											<tr>
												<td>
													<input type="hidden" id="mno" value="${memberInfo.mno }">
													<c:choose>
														<c:when test="${vo.bookmark == 0 }">
															<img src="/withgo/resources/images/off.png" class="bookmarkck" id="bookmark${vo.carno }" onclick="bookmarkClick(${vo.carno})">
														</c:when>
														<c:otherwise>
															<img src="/withgo/resources/images/on.png" class="bookmarkck" id="bookmark${vo.carno }" onclick="bookmarkClick(${vo.carno})">
														</c:otherwise>
													</c:choose>
													<table class="listTable" onclick="location.href='${contextPath}/carpool/read?category=${category}&no=${vo.carno }'">		
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
																		<c:when test="${vo.category == 'dan' }"><img src="/withgo/resources/images/dan.png"></c:when> 
																		<c:when test="${vo.category == 'jang' }"><img src="/withgo/resources/images/jang.png"></c:when>
																		<c:when test="${vo.category == 'goschool' }"><img src="/withgo/resources/images/goschool.png"></c:when>
																		<c:otherwise><img src="/withgo/resources/images/taxiimg.png"></c:otherwise>
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
												<li><a href="/withgo/mypage/bookmark?page=${pvo.firstPage-1}">&laquo;</a></li>
											</c:if>
											<c:forEach var="pageno" begin="${pvo.firstPage }" end="${pvo.lastPage }">
												<c:if test="${pageno <= pvo.totalPage }">
													<c:choose>
														<c:when test="${pageno == pvo.curPage }">
															<li class="active"><a href="#">${pageno }</a>
														</c:when>
														<c:otherwise>
															<li><a href="/withgo/mypage/bookmark?page=${pageno}">${pageno }</a></li>
														</c:otherwise>
													</c:choose>
													
												</c:if>
											</c:forEach>
											<c:if test="${pvo.curBlock != pvo.lastBlock }">
												<li><a href="/withgo/mypage/bookmark?page=${pvo.lastPage+1}">&raquo;</a></li>
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