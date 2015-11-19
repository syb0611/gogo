<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<style>
#heading {
/* 	background-image: url(images/community.png); */
	background-color: gray;
	height: 140px;
}

.content{
	margin: 30px;
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
							<a href="${contextPath}/home"><img src="../images/pool2.jpeg" title="Grill Template" alt="Grill Website Template"></a>
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
						<h2>MESSAGE</h2>
						<span>Home / 쪽지함 </span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">	
				<h2>쪽지함</h2><br>
				<table class="table table-condensed">
					<tr>
						<td colspan="5"><h4>[받은쪽지]</h4></td>
					</tr>
					<tr>
						<th>번호</th>
						<th>보낸사람</th>
						<th>제목</th>
						<th>보낸날짜</th>
						<th>수신확인</th>
					</tr>
					<c:choose>
						<c:when test="${receiveMsgList == '[]' }">
							<tr>
								<td colspan="5" align="center">-</td>
							</tr>
						</c:when>
						<c:otherwise>
						<c:forEach items="${receiveMsgList}" var="receiveMsg">
							<tr>
								<td>${receiveMsg.msgno }</td>
								<td>${receiveMsg.fromname }</td>
								<td><a href="${contextPath}/message/read?type=receive&msgno=${receiveMsg.msgno}">${receiveMsg.title }</a></td>
								<td>${receiveMsg.wdate }</td>
								<c:choose>
									<c:when test="${receiveMsg.checked == '0'}">
										<td>안읽음</td>
									</c:when>
									<c:otherwise>
										<td>읽음</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
						</c:otherwise>
					</c:choose>
				</table>
				
				<table class="table table-condensed">
					<tr>
						<td colspan="2"><h4>[보낸쪽지]</h4></td>
					</tr>
					<tr>
						<th>번호</th>
						<th>받는사람</th>
						<th>제목</th>
						<th>보낸날짜</th>
						<th>수신확인</th>
					</tr>
					<c:choose>
						<c:when test="${sendMsgList == '[]' }">
							<tr>
								<td colspan="5" align="center">-</td>
							</tr>
						</c:when>
						<c:otherwise>
						<c:forEach items="${sendMsgList}" var="sendMsg">
							<tr>
								<td>${sendMsg.msgno }</td>
								<td>${sendMsg.toname }</td>
								<td><a href="${contextPath}/message/read?type=send&msgno=${sendMsg.msgno}">${sendMsg.title }</a></td>
								<td>${sendMsg.wdate }</td>
								<c:choose>
									<c:when test="${sendMsg.checked == '0'}">
										<td>안읽음</td>
									</c:when>
									<c:otherwise>
										<td>읽음</td>
									</c:otherwise>
								</c:choose>
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

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

</body>
</html>