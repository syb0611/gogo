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
 	background-image: url(/withgo/resources/images/톱니.png);
	
	height: 150px;
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
							<a href="${contextPath}/home"><img src="../images/roro.png" width="100px" height="50px"title="Grill Template" alt="go home"></a>
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
						<h2 style="color:#ec7600; text-align:center; font-weight: 800; text-shadow:1px 1px 1px #ffc58a;">s e r v i c e</h2>
								<span style="color:gray;">' 고객센터 ' 는 보다 나은 서비스를 제공하기 위한 카테고리 입니다 . </span>
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
										<c:when test="${category == 'notice' }"><img src="/withgo/resources/images/공지사항.png"  width="131px" height="38px"></c:when>
										<c:when test="${category == 'qna' }"><img src="/withgo/resources/images/자주묻는1.png"  width="131px" height="38px"></c:when>
										<c:otherwise><img src="/withgo/resources/images/건의게시판.png"  width="131px" height="38px"></c:otherwise>
									</c:choose>
								</div>
								<form method="post" action="${contextPath}/customer/write">	
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


</body>
</html>