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
	background-image: url(images/새.png); 

	height: 150px;
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

.lastTd{
	text-align: right;
}

#postBtn{
	cursor: pointer;
}

</style>
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
<script>
function postClick(){
	var nickname = document.getElementById("nickname").value;
	if(nickname == null || nickname == ""){
		alert("로그인 후 댓글등록이 가능합니다.");
		return;
	}
	
	var replytext = document.getElementById("replytext").value;
	if(replytext.trim() == ""){
		return;
	}
	
	document.replyform.submit();
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
							<a href="${contextPath}/home"><img src="../images/roro.png" width="100px" height="50px" title="Grill Template" alt="go home"></a>
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
	                        <li><a href="${contextPath}/board/customer"><font size = 3>고객센터</font></a></li>
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
										<c:when test="${vo.category == 'notice' }"><h4>공지사항</h4></c:when>
										<c:when test="${vo.category == 'qna' }"><h4>자주묻는질문</h4></c:when>
										<c:otherwise><h4>건의게시판</h4></c:otherwise>
									</c:choose>
								</div>
								<div class="hit">
									(조회수 : ${vo.hit })	
								</div>
								<form method="post" action="${contextPath}/customer/updateform">	
									<input type="hidden" name="bno" id="bno" value="${vo.bno }">
									<input type="hidden" name="category" value="${vo.category }">
									<table class="table table-condensed">
										<tr>
										<div class="row">
											<th class="col-sm-1">제목</th>
											<td class="col-sm-5">
												<input type="hidden" name="title" value="${vo.title }">
												${vo.title }
											</td>
											<th class="col-sm-1">작성자</th>
											<td class="col-sm-2">
												<input type="hidden" name="nickname" value="${vo.nickname }">
												${vo.nickname }
											</td>
											<th class="col-sm-1">작성일</th>
											<td class="col-sm-2">
												<input type="hidden" name="wdate" value="${vo.wdate }">
												${vo.wdate }
											</td>					
										</div>	
										</tr>
										<tr>
											<th style="height: 200px;">내용</th>
											<td colspan="5">
												<input type="hidden" name="content" value="${vo.content }">
												${vo.content }
											</td>
										</tr>
										<tr>
											<td colspan="6" class="lastTd">	
												<!-- 글쓴이와 글 읽는 사람이 일치할 경우에 삭제, 수정 가능 -->
												<c:if test="${vo.nickname == memberInfo.nickname }"> 
													<input type="button" class="btn btn-default btn-xs" value="삭제" onclick="location.href='${contextPath}/customer/delete/${vo.category }/${vo.bno}'">
													<input type="submit" class="btn btn-default btn-xs" value="수정">
												</c:if>
												<input type="button" class="btn btn-default btn-xs" value="목록" onclick="location.href='${contextPath}/customer/list?category=${vo.category}'">			
											</td>
										</tr>
									</table>
								</form>
								
								<form id="replyform" name="replyform" method="post" action="/withgo/customer/postReply">
									<input type="hidden" id="nickname" name="nickname" value="${memberInfo.nickname }">
									<input type="hidden" name="category" value="${vo.category }">
									<input type="hidden" name="bno" value="${vo.bno}">
									<table class="table table-condensed" id="replyTable">
										<tr>
											<td width="90%">
												<textarea class="form-control" rows="3" id="replytext" name="replytext"></textarea>
											</td>
											<td style="vertical-align: middle;">
												<img src="/withgo/resources/images/postbtn.png" id="postBtn" onclick="postClick()">
											</td>
										</tr>
										<c:if test="${replyList != '[]' }">
										<tr>
											<td colspan="2">
												<table width="100%">
												<c:forEach items="${replyList }" var="rvo">
													<tr>
														<th width="20%">${rvo.nickname }</th>
														<td>${rvo.replytext }</td>
														<td width="10%">${rvo.wdate }</td>
													</tr>
												</c:forEach>
												</table>
											</td>
										</tr>
										</c:if>
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