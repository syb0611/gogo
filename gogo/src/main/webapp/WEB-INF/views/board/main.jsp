<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	background-image: url(../images/slide2.jpg);
	height: 140px;
}

.content{
	margin: 30px;
}

.categoryTitle{
	float: left;
}

.more{
	position: relative;
	float: right;
	font-size: 11px;
	top: 20px;
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
							<div class="col-md-offset-1 col-md-5 col-sm-12">
								<table class="table table-condensed">
									<tr>
										<td colspan="2" class="tableHeading">
											<span class="categoryTitle"><h4>가입인사</h4></span>
											<span class="more">
												<a href="${contextPath}/board/list?category=greeting">더보기...</a>
											</span>
										</td>
									</tr>
									<tr>
										<th>제목</th>
										<th class="col-md-3 col-xs-2">작성자</th>
									</tr>
									<tr>
									<c:choose>
										<c:when test="${list1 == '[]' }">
											<td colspan="4" align="center">등록된 글이 없습니다.</td>
										</c:when>
										<c:otherwise>
										<c:forEach items="${list1 }" var="vo" begin="0" end="4">
											<tr>
												<td><a href="${contextPath}/board/read?bno=${vo.bno }">${vo.title }</a></td>
												<td>${vo.nickname }</td>
											</tr>
										</c:forEach>
									</c:otherwise>
									</c:choose>
									</tr>
								</table>
								<br>
								<table class="table table-condensed">
									<tr>
										<td colspan="2" class="tableHeading">
											<span class="categoryTitle"><h4>자유게시판</h4></span>
											<span class="more">
												<a href="${contextPath}/board/list?category=free">더보기...</a>
											</span>
										</td>
									</tr>
									<tr>
										<th>제목</th>
										<th class="col-md-3 col-xs-2">작성자</th>
									</tr>
									<tr>
									<c:choose>
										<c:when test="${list2 == '[]' }">
											<td colspan="4" align="center">등록된 글이 없습니다.</td>
										</c:when>
										<c:otherwise>
										<c:forEach items="${list2 }" var="vo" begin="0" end="4">
											<tr>
												<td><a href="${contextPath}/board/read?bno=${vo.bno }">${vo.title }</a></td>
												<td>${vo.nickname }</td>
											</tr>
										</c:forEach>
									</c:otherwise>
									</c:choose>
									</tr>
								</table>
								<br>				
							</div>
							
							<div class="col-md-offset-1 col-md-5 col-sm-12">
								<table class="table table-condensed">
									<tr>
										<td colspan="2" class="tableHeading">
											<span class="categoryTitle"><h4>카풀이용후기</h4></span>
											<span class="more">
												<a href="${contextPath}/board/list?category=review">더보기...</a>
											</span>
										</td>
									</tr>
									<tr>
										<th>제목</th>
										<th class="col-md-3 col-xs-2">작성자</th>
									</tr>
									<tr>
									<c:choose>
										<c:when test="${list3 == '[]' }">
											<td colspan="4" align="center">등록된 글이 없습니다.</td>
										</c:when>
										<c:otherwise>
										<c:forEach items="${list3 }" var="vo" begin="0" end="4">
											<tr>
												<td><a href="${contextPath}/board/read?bno=${vo.bno }">${vo.title }</a></td>
												<td>${vo.nickname }</td>
											</tr>
										</c:forEach>
									</c:otherwise>
									</c:choose>
									</tr>
								</table>
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