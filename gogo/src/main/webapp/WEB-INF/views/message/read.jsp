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
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
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
						<th class="col-sm-2">보낸사람</th>
						<td class="col-sm-8">${vo.fromname }</td>
						<td class="col-sm-2">${vo.wdate }</td>
					</tr>
					<tr>
						<th>받은사람</th>
						<td colspan="2">${vo.toname }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="2">${vo.title }</td>
					</tr>
					<tr>
						<th style="min-height: 200px">내용</th>
						<td colspan="2">${vo.memo }</td>
					</tr>
					<c:if test="${type == 'receive' }">
					<tr>
						<td colspan="3">
							<input type="button" value="삭제" onclick="location.href='${contextPath}/message/delete?msgno=${vo.msgno}'">
							<input type="button" value="답장">
						</td>
					</tr>
					</c:if>
				</table>
			</div>		
		</div>		
	</div>
	</div>

	<%@ include file="../footer.jsp"%>



</body>
</html>