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
<title>Blog - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">



<style>
#heading {
	background-image: url(/withgo/resources/images/톱니.png);
	 background-size : contain;
	height:150px;
	/* background-repeat :no-repeat; */
 	max-width : 100%;
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
	<header>
		<%@ include file="../header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="${contextPath}/home"><img src="/withgo/resources/images/roro.png" width="100px" height="50px"
								title="Grill Template" alt="withGo"></a>
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
								<li><a href="${contextPath}/customer"><font size=3>고객센터</font></a></li>
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
						<h2 style="color:white; text-shadow:3px 3px 3px #c3cdce;">service center</h2>
						
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
							<a href="${contextPath}/customer/list?category=notice" class="list-group-item">공지사항</a>
							<a href="${contextPath}/customer/list?category=qna" class="list-group-item">자주묻는질문</a>
							<a href="${contextPath}/customer/list?category=inquiry" class="list-group-item">건의게시판</a>
						</div>		
					</div>
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-offset-1 col-md-5 col-sm-12">
								<table class="table table-condensed">
									<tr>
										<td colspan="2" class="tableHeading">
											<span class="categoryTitle"><h4>공지사항</h4></span>
											<span class="more">
												<a href="${contextPath}/customer/list?category=notice">더보기...</a>
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
												<td><a href="${contextPath}/customer/read?bno=${vo.bno }">${vo.title }</a></td>
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
											<span class="categoryTitle"><h4>자주묻는질문</h4></span>
											<span class="more">
												<a href="${contextPath}/customer/list?category=qna">더보기...</a>
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
												<td><a href="${contextPath}/customer/read?bno=${vo.bno }">${vo.title }</a></td>
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
											<span class="categoryTitle"><h4>건의게시판</h4></span>
											<span class="more">
												<a href="${contextPath}/customer/list?category=inquiry">더보기...</a>
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
												<td><a href="${contextPath}/customer/read?bno=${vo.bno }">${vo.title }</a></td>
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