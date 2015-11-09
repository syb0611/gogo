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
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<a href="${contextPath}/home">홈</a>

<c:choose>
	<c:when test="${memberInfo == null }">
		<a href="${contextPath}/member/loginform">로그인</a>
		<a href="${contextPath}/member/joinform">회원가입</a>
	</c:when>
	<c:otherwise>
		<u>${memberInfo.nickname }</u>님&nbsp;
		<a href="#">내정보</a>&nbsp;
		<a href="${contextPath}/message/mymsg">쪽지함</a>&nbsp;
		<a href="${contextPath}/member/logout">로그아웃</a>
	</c:otherwise>
</c:choose>

<ul>
	<li><a href="${contextPath}/carpool/dan/list">단기카풀</a></li>
	<li><a href="${contextPath}/carpool/jang/list">장기카풀</a></li>
	<li><a href="#">고스쿨</a></li>
	<li><a href="#">택시카풀</a></li>
	<li><a href="${contextPath}/board/main">커뮤니티</a></li>
	<li><a href="#">고객센터</a></li>
</ul>
<hr>
</body>
</html>