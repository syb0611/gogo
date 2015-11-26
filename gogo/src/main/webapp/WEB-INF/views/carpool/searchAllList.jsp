

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

#usertype1{
	color: white;
 	background: #995051; 	
}
#usertype2, #usertype3{
	color: white;
	background: #425051;
/* 	font-weight: bold; */
}

#pic{
	border-radius: 10px;
}
</style>
<script>
var xhr;
var imgOn = "http://localhost:8080/withgo/resources/images/on.png";
var imgOff = "http://localhost:8080/withgo/resources/images/off.png";


function typeClick(n){
	var usertype = document.getElementById("usertype");
	var type1 = document.getElementById("usertype1");
	var type2 = document.getElementById("usertype2");
	var type3 = document.getElementById("usertype3");

	if(n == 1) { // 전체
		usertype.value = 'all';
		type1.style.background = '#995051';
		type2.style.background = '#425051';
		type3.style.background = '#425051';
	} else if(n == 2){ // 타세요
		usertype.value = 'driver';
		type1.style.background = '#425051';
		type2.style.background = '#995051';
		type3.style.background = '#425051';
	}else{
		usertype.value = 'rider';
		type1.style.background = '#425051';
		type2.style.background = '#425051';
		type3.style.background = '#995051';
	}

}

function checkform(){
	var form = document.f;
	var de = form.departure.value.trim();
	var arr = form.arrival.value.trim();
	
	if(de == "" || arr == "") return;
	
	form.submit();
}


function selOption(){
	var sel = document.getElementById("color");
	var plabel = document.getElementById("plabel");
	
	plabel.innerHTML = sel.options[sel.value].innerHTML;
	sel.options[sel.value].setAttribute("selected", "selected");
}

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
					<div style="height:40px;"></div>
					<div style="width:240px; height:330px; border:2px solid #C6C6C6;  border-radius: 7px; ">
						<div  style="width:200px; height:320px;  margin-left:20px;">
							<fieldset>	
								<form action="/withgo/carpool/search" method="post" name="f">
									<div class="btn-group" style="margin-bottom: 10px">
										<input type="hidden" name="category" value="${category }">
										<input type="hidden" name="usertype" id="usertype" value="all"><br>
										<button type="button" class="btn btn-default" id="usertype1" onclick="typeClick(1)">전체</button>
										<button type="button" class="btn btn-default" id="usertype2" onclick="typeClick(2)">타세요</button>
										<button type="button" class="btn btn-default" id="usertype3" onclick="typeClick(3)">탈래요</button>
									</div>
									<div>
									<table>
										<tr>
											<td><p class="reg_area dt"></p><input type="text" class="form-control" placeholder="출발지" name="departure" /></td>
										</tr>
										<tr>
											<td><p class="reg_area dt"></p><input type="text" class="form-control" placeholder="도착지" name="arrival"/></td>
										</tr>
										<tr>
											<td style="height:50px" >
												
												<div id="select_box">
												<label for="color" id="plabel">금액</label>
												<select name="pricerange" id="color" onchange="selOption()">
													<option value="0">금액</option>
													<option value="1">0~3000원</option>
													<option value="2">3000~5000원</option>
													<option value="3">5000~8000원</option>
													<option value="4">8000원이상</option>
												</select>
												</div>
											</td>
										</tr>
										
										<tr>
											<td class="pt" style="height:30px; font-weight: 700;">
												성별 : 
												<input class="pt" name="genderlimit" id="genderlimit" type="radio" checked="checked" value="0" ><span>전체   </span>
												<input class="pt" name="genderlimit" id="genderlimit" type="radio" value="2"><span>여자  </span>
												<input class="pt" name="genderlimit" id="genderlimit" type="radio" value="1"><span>남자</span> 
											</td>
										</tr>
										<tr>
											<td class="pt" style="height:30px; font-weight: 700;">
												흡연 : 
												<input class="pt" name="smoking" id="smoking" type="radio" value="0" checked="checked"><span>불가</span>
												<input class="pt" name="smoking" id="smoking" type="radio" value="1"><span>가능</span><br><br>
											</td>
										</tr>
										
										<tr>
											<td align="center"><img style="cursor:pointer;" src="/withgo/resources/images/검색1.png"  width="131px" height="37px" onclick="checkform()"></td>
										</tr>
									</table>
									</div>
								</form>
							</fieldset>
						</div>
					</div>
				</div>
				
				<div class="col-md-9">	
					<div style="height:40px;">
						출발 <b>${pvo.departure }</b> - 도착 <b>${pvo.arrival }</b> 검색결과 
					</div>
					
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
															<img src="/withgo/resources/images/blankimage.png" width="80px" id="pic">
														</c:when>
														<c:otherwise>
															<img src="/withgo/upload/${vo.image }" width="80px" id="pic">
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
														<c:when test="${vo.category == 'dan' }"><img src="/withgo/resources/images/dan.png"></c:when> 
														<c:when test="${vo.category == 'jang' }"><img src="/withgo/resources/images/jang.png"></c:when>
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
									<li><a href="/withgo/carpool/searchAll?departure=${pvo.departure }&arrival=${pvo.arrival }&page=${pvo.firstPage-1}">&laquo;</a></li>
								</c:if>
								<c:forEach var="pageno" begin="${pvo.firstPage }" end="${pvo.lastPage }">
									<c:if test="${pageno <= pvo.totalPage }">
										<c:choose>
											<c:when test="${pageno == pvo.curPage }">
												<li class="active"><a href="#">${pageno }</a>
											</c:when>
											<c:otherwise>
												<li><a href="/withgo/carpool/searchAll?departure=${pvo.departure }&arrival=${pvo.arrival }&page=${pageno}">${pageno }</a></li>
											</c:otherwise>
										</c:choose>
										
									</c:if>
								</c:forEach>
								<c:if test="${pvo.curBlock != pvo.lastBlock }">
									<li><a href="/withgo/carpool/searchAll?departure=${pvo.departure }&arrival=${pvo.arrival }&page=${pvo.lastPage+1}">&raquo;</a></li>
								</c:if>
							</ul>
							</c:if>
						</span>
						
					</div>	
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../footer.jsp"%>

</body>
</html>
