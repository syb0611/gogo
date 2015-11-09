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
<%@ include file="../header.jsp"%>

<a href="${contextPath}/board/list/greeting">가입인사</a>
<a href="${contextPath}/board/list/free">자유게시판</a>
<a href="${contextPath}/board/list/review">카풀이용후기</a>

<h2>커뮤니티</h2>

<table border="1" width="500px;">
	<tr>
		<td colspan="2">
			<h4>가입인사</h4>
			<a href="${contextPath}/board/list/greeting">더보기...</a>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<th>작성자</th>
	</tr>
	<tr>
		<c:choose>
			<c:when test="${list1 == '[]' }">
				<td colspan="4" align="center">등록된 글이 없습니다.</td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list1 }" var="vo" begin="0" end="4">
					<tr>
						<td><a href="${contextPath}/board/read/${vo.bno }">${vo.title }</a></td>
						<td>${vo.nickname }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tr>
</table>
<br>
<table border="1" width="500px;">
	<tr>
		<td colspan="2">
			<h4>자유게시판</h4>
			<a href="${contextPath}/board/list/free">더보기...</a>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<th>작성자</th>
	</tr>
	<tr>
		<c:choose>
			<c:when test="${list2 == '[]' }">
				<td colspan="4" align="center">등록된 글이 없습니다.</td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list2 }" var="vo" begin="0" end="4">
					<tr>
						<td><a href="${contextPath}/board/read/${vo.bno }">${vo.title }</a></td>
						<td>${vo.nickname }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tr>
</table>
<br>	
<table border="1" width="500px;">
	<tr>
		<td colspan="2">
			<h4>카풀이용후기</h4>
			<a href="${contextPath}/board/list/review">더보기...</a>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<th>작성자</th>
	</tr>
	<tr>
		<c:choose>
			<c:when test="${list3 == '[]' }">
				<td colspan="4" align="center">등록된 글이 없습니다.</td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list3 }" var="vo" begin="0" end="4">
					<tr>
						<td><a href="${contextPath}/board/read/${vo.bno }">${vo.title }</a></td>
						<td>${vo.nickname }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</tr>
</table>	

<%@ include file="../footer.jsp"%>
</body>
</html>