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
						<span>Home / 쪽지보내기 </span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">	
				<h2>쪽지보내기</h2>
				<form method="post" action="${contextPath}/message/send">	
					<input type="hidden" name="toname" value="${toname }">
					<input type="hidden" name="fromname" value="${memberInfo.nickname }">  
					<input type="hidden" name="prevUrl" value="${prevUrl }">
					<table class="table table-condensed">
						<tr>
							<th width="20%">보내는사람</th>
							<td>${memberInfo.nickname }</td>
						</tr>
						<tr>
							<th>받는사람</th>
							<td>${toname }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" class="form-control input-sm" name="title"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea class="form-control input-sm" rows="15" name="memo"></textarea></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: right">	
								<input type="submit" class="btn btn-primary" value="등록">
							</td>
						</tr>
					</table>
				</form>
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