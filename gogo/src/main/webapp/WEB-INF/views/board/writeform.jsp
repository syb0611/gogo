<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
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
								<li><a href="dan"><font size=3>단기카풀</font></a></li>
								<li><a href="jang"><font size=3>장기카풀</font></a></li>
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
						<h2>Community</h2>
						<span>Home / <a href="${contextPath}/board/main">커뮤니티</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="row">
					<div class="col-md-2">
						<div class="list-group">
							<a href="${contextPath}/board/list?category=greeting" class="list-group-item">가입인사</a>
							<a href="${contextPath}/board/list?category=free" class="list-group-item">자유게시판</a>
							<a href="${contextPath}/board/list?category=review" class="list-group-item">카풀이용후기</a>
						</div>		
					</div>		
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-offset-1 col-md-10 col-sm-12">
								<div class="category">
									<c:choose>
										<c:when test="${category == 'greeting' }"><h4>가입인사</h4></c:when>
										<c:when test="${category == 'free' }"><h4>자유게시판</h4></c:when>
										<c:otherwise><h4>카풀이용후기</h4></c:otherwise>
									</c:choose>
								</div>
								<form method="post" action="${contextPath}/board/write">	
									<input type="hidden" name="category" value="${category }">
									<input type="hidden" name="nickname" value="${memberInfo.nickname }"> 
									<table class="table table-condensed">
										<tr>
											<th>제목</th>
											<td><input type="text" class="form-control input-sm" name="title"></td>
										</tr>
										<tr>
											<th>내용</th>
											<td><textarea class="form-control input-sm" rows="15" name="content"></textarea></td>
										</tr>
										<tr>
											<td colspan="2">	
												<input type="submit" class="btn btn-primary btn-xs" value="등록">
											</td>
										</tr>
									</table>
								</form>
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