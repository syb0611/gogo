<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

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

.categoryTitle{
	float: left;
	margin-bottom: 10px;
}
.wBtn{
	float: right;
	padding-top: 20px;
}
</style>
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
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
							<a href="${contextPath}/home"><img src="../images/pool2.jpeg" title="Grill Template" alt="Grill Website Template"></a>
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
			<div class="col-md-12">
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
									<div class="categoryTitle">
									<c:choose>
										<c:when test="${category == 'greeting' }"><h3>가입인사</h3></c:when>
										<c:when test="${category == 'free' }"><h3>자유게시판</h3></c:when>
										<c:otherwise><h3>카풀이용후기</h3></c:otherwise>
									</c:choose>
									</div>
									<div class="wBtn">
										<c:if test="${memberInfo != null }">
											<input type="button" class="btn btn-default btn-sm" value="글쓰기" onclick="location.href='${contextPath}/board/writeform?category=${category }'">
										</c:if>	
									</div>
								</div>
								<table class="table table-condensed">
									<div class="row">
									<tr class="active">
										<th class="col-md-1">번호</th>
										<th class="col-md-6">제목</th>
										<th class="col-md-2">작성자</th>
										<th class="col-md-2">작성일</th>
										<th class="col-md-1">조회수</th>
									</tr>
									</div>
									<c:choose>
										<c:when test="${list == '[]' }">
											<td colspan="5" align="center">등록된 글이 없습니다.</td>
										</c:when>
										<c:otherwise>
											<c:set var="no" value="${pvo.topNum }" />
											<c:forEach items="${list }" var="vo">
												<tr>
													<td>${no }</td>
													<c:set var="no" value="${no-1 }" />
													<td><a href="${contextPath}/board/read?bno=${vo.bno}">${vo.title }</a></td>
													<td>${vo.nickname }</td>
													<td>${vo.wdate }</td>
													<td>${vo.hit }</td>
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
												<li><a href="${contextPath}/board/list?category=${pvo.category}&page=${pvo.firstPage-1}">&laquo;</a></li>
											</c:if>
											<c:forEach var="pageno" begin="${pvo.firstPage }" end="${pvo.lastPage }">
												<c:if test="${pageno <= pvo.totalPage }">
													<c:choose>
														<c:when test="${pageno == pvo.curPage }">
															<li class="active"><a href="#">${pageno }</a>
														</c:when>
														<c:otherwise>
															<li><a href="${contextPath}/board/list?category=${pvo.category}&page=${pageno}">${pageno }</a></li>
														</c:otherwise>
													</c:choose>
													
												</c:if>
											</c:forEach>
											<c:if test="${pvo.curBlock != pvo.lastBlock }">
												<li><a href="${contextPath}/board/list?category=${pvo.category}&page=${pvo.lastPage+1}">&raquo;</a></li>
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

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

</body>
</html>