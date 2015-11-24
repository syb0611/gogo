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

.hit{
	float: right;
	margin-top: 15px;
}

.category{
	float: left;
}

table tr:last-child{
	text-align: right;
}

table tr th:last-child{
	height: 200px;
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
						<h2>SERVICE CENTER</h2>
						<span>Home / <a href="${contextPath}/customer">고객센터</a></span>
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
							<div class="col-md-offset-1 col-md-10 col-sm-12">
								<div class="category">
									<c:choose>
										<c:when test="${pvo.category == 'notice' }"><h3>공지사항</h3></c:when>
										<c:when test="${pvo.category == 'qna' }"><h3>자주묻는질문</h3></c:when>
										<c:otherwise><h3>건의게시판</h3></c:otherwise>
									</c:choose>
								</div>
								<form method="post" action="${contextPath}/customer/update">	
									<input type="hidden" name="bno" value="${vo.bno }">
									<table class="table table-condensed">
										<tr>
										<div class="row">
											<th class="col-sm-1">제목</th>
											<td class="col-sm-5">
												<input type="text" class="form-control input-sm" name="title" value="${vo.title }">
											</td>
											<th class="col-sm-1">작성자</th>
											<td class="col-sm-2">${vo.nickname }</td>
											<th class="col-sm-1">작성일</th>
											<td class="col-sm-2">${vo.wdate }</td>					
										</div>	
										</tr>
										<tr>
											<th style="min-height: 200px;">내용</th>
											<td colspan="5">
												<textarea name="content" class="form-control input-sm" rows="15">${vo.content }</textarea>
											</td>
										</tr>
										<tr>
											<td colspan="6">	
												<!-- 글쓴이와 글 읽는 사람이 일치할 경우에 삭제, 수정 가능 -->
												<c:if test="${vo.nickname == memberInfo.nickname }">
													<input type="button" class="btn btn-default btn-xs" value="삭제" onclick="${contextPath}/customer/delete/${vo.category }/${vo.bno}'">
													<input type="submit" class="btn btn-default btn-xs" value="수정">
												</c:if>
												<input type="button" class="btn btn-default btn-xs" value="목록" onclick="${contextPath}/customer/list?category=${vo.category}'">
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


</body>
</html>