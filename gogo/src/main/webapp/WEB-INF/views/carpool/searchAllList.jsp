

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


#heading {
	background-image: url(/withgo/resources/images/ttt.png);
	 background-size : contain;
	height:150px;
	/* background-repeat :no-repeat; */
 	max-width : 100%;
	
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

.bookmarkck{
	position: absolute;
	margin-left: 93%;
	cursor: pointer;
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
							<a href="${contextPath}/home"><img src="/withgo/resources/images/roro.png" width="100px" height="50px"
								title="Grill Template" alt="go home"></a>
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


	<div id="heading" style="background-image: url(../images/새.png);">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-content">
						<h2 style="color:white;text-shadow:3px 3px 3px #c3cdce;">카풀 빠른 검색</h2>	
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="timeline-post">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<fieldset>
					<legend>  </legend>		
						<form action="./example2.php" method="GET">
						<div class="btn-group">
							<button type="button" class="btn btn-default">전체</button>
							<button type="button" class="btn btn-default">타세요</button>
							<button type="button" class="btn btn-default">탈래요</button>
						</div>	
						<div>
						<table>
							<tr>
								<td><p class="reg_area dt"></p><input type="text" placeholder="출발지" /></td>
							</tr>
							<tr>
								<td><p class="reg_area dt"></p><input type="text" placeholder="도착지" /></td>
							</tr>
							<tr>
								<td>
								금액 : 
								<select name="type">
								<option value="금액">금액</option>
									<option value="최저">0~3000원</option>
									<option value="중간">3000~5000원</option>
									<option value="최고">5000~8000원</option>
									<option value="더최고">8000원이상</option>
								</select>
								</td>
							</tr>
							<tr>
								<td>
								성별 : 
								<input name="gender" id="gender" type="radio" checked="checked" value="N"><span>모두</span>
								<input name="gender" id="gender" type="radio" value="W"><span>여자</span> 
								<input name="gender" id="gender" type="radio" value="M"><span>남자</span> 
								</td>
							</tr>
							<tr>
								<td>
								흡연 여부 : 
								<input name="smoking" id="smoking" type="radio" checked="checked" value="N"><span>흡연불가</span>
								<input name="smoking" id="smoking" type="radio" value="Y"><span>흡연가능</span> 
								</td>
							</tr>
							<tr>
								<td align="center"><input type="submit" class="btn_comm" value="검색하기"></td>
							</tr>
						</table>
						</div>		
						</form>
					</fieldset>
				</div>
				
				<div class="col-md-9">	
					출발 ${searchInput.departure } - 도착 ${searchInput.arrival } 검색결과 
					<table class="table table-condensed">
						<c:choose>
							<c:when test="${searchList == '[]' }">
							<tr>
								<td colspan="7" align="center">검색 결과가 없습니다.</td>
							</tr>
							</c:when>
							<c:otherwise>
							<c:forEach items="${searchList }" var="vo">
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
															<img src="/withgo/resources/images/blankimage.png" width="80px">
														</c:when>
														<c:otherwise>
															<img src="/withgo/resources/upload/${vo.image }" width="80px">
														</c:otherwise>
													</c:choose>
													
												</div>
												<div style="margin-top: 5px">${vo.name }</div>
											</td>
											<td width="65%" style="padding-left: 20px; line-height: 100%; vertical-align: top">
												<div style="padding: 10px">${vo.departuredate } 출발</div>
												<div style="padding: 10px">${vo.departure } <img src="../images/a.png" width="15px"> ${vo.arrival }</div>
												<div style="padding: 10px">
												경유 : ${vo.stop1 }&nbsp;&nbsp;${vo.stop2 }&nbsp;&nbsp;${vo.stop3 }
												</div>
											</td>
											<td width="20%" style="text-align: right">
												<div>
													<c:choose>
														<c:when test="${category == 'dan' }"><img src="/withgo/resources/images/dan.png"></c:when> 
														<c:when test="${category == 'jang' }"><img src="/withgo/resources/images/jang.png"></c:when>
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
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../footer.jsp"%>

</body>
</html>
