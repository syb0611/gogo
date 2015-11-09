<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@ include file="../header.jsp" %>

<a href="${contextPath}/board/list/greeting">가입인사</a>
<a href="${contextPath}/board/list/free">자유게시판</a>
<a href="${contextPath}/board/list/review">카풀이용후기</a>

<div class="category">
	<c:choose>
		<c:when test="${category == 'greeting' }"><h4>가입인사</h4></c:when>
		<c:when test="${category == 'free' }"><h4>자유게시판</h4></c:when>
		<c:otherwise><h4>카풀이용후기</h4></c:otherwise>
	</c:choose>
</div>	

<table border="1" width="700px">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	<c:choose>
		<c:when test="${list == '[]' }">
			<td colspan="5" align="center">등록된 글이 없습니다.</td>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list }" var="vo">
				<tr>
					<td>${vo.bno }</td>
					<td><a href="${contextPath}/board/read/${vo.bno}">${vo.title }</a></td>
					<td>${vo.nickname }</td>
					<td>${vo.wdate }</td>
					<td>${vo.hit }</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>	
</table>

<c:if test="${memberInfo != null }">
	<input type="button" value="글쓰기" onclick="location.href='${contextPath}/board/writeform/${category }'">
</c:if>

<%@ include file="../footer.jsp" %>
</body>
</html>