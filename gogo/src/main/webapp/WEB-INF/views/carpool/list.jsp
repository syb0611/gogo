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

<c:choose>
	<c:when test="${category == 'dan'}">
		<h4>단기카풀</h4>
	</c:when>
	<c:when test="${category == 'jang'}">
		<h4>장기카풀</h4>
	</c:when>
</c:choose>

<table border="1" width="700px">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>출발지</th>
		<th>도착지</th>
		<th>유형</th>
		<th>예약좌석/보유좌석</th>
		<th>작성일</th>
	</tr>
	<c:choose>
		<c:when test="${list == '[]' }">
			<td colspan="7">등록된 글이 없습니다.</td>
		</c:when>
		<c:otherwise>
		<c:forEach items="${list }" var="vo">
		<tr>
			<td>${vo.carno}</td>
			<td>${vo.name }</td>
			<td>${vo.departure}</td>
			<td>${vo.arrival}</td>
			<td>
				<c:choose>
					<c:when test="${vo.usertype == 'driver' }">타세요</c:when>
					<c:otherwise>태워주세요</c:otherwise>
				</c:choose>
			</td>
			<td>*/${vo.seat}</td>
			<td>${vo.wdate }</td>
		</tr>
		</c:forEach>
		</c:otherwise>
	</c:choose>
	
</table>


<c:if test="${memberInfo != null }">
	<input type="button" value="글쓰기" onclick="location.href='${contextPath}/carpool/${category}/writeform'">
</c:if>

<%@ include file="../footer.jsp" %>
</body>
</html>