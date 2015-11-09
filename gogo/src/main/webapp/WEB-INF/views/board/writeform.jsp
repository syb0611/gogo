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
글쓰기

<form method="post" action="${contextPath}/board/write">	
	<input type="hidden" name="category" value="${category }">
	<input type="hidden" name="nickname" value="${memberInfo.nickname }"> 
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="15" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">	
				<input type="submit" value="등록">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>

<%@ include file="../footer.jsp" %>
</body>
</html>