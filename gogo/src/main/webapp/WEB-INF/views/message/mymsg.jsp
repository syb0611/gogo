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

<h2>쪽지함</h2>

<!-- 삭제 / 답장 추가 -->

<h4>[받은쪽지]</h4>
<table border="1" width="700px">
	<tr>
		<th>번호</th>
		<th>보낸사람</th>
		<th>제목</th>
		<th>보낸날짜</th>
		<th>수신확인</th>
	</tr>
	<c:choose>
		<c:when test="${receiveMsgList == '[]' }">
			<tr>
				<td colspan="5" align="center">-</td>
			</tr>
		</c:when>
		<c:otherwise>
		<c:forEach items="${receiveMsgList}" var="receiveMsg">
			<tr>
				<td>${receiveMsg.msgno }</td>
				<td>${receiveMsg.fromname }</td>
				<td><a href="${contextPath}/message/read/receive/${receiveMsg.msgno}">${receiveMsg.title }</a></td>
				<td>${receiveMsg.wdate }</td>
				<c:choose>
					<c:when test="${receiveMsg.checked == '0'}">
						<td>안읽음</td>
					</c:when>
					<c:otherwise>
						<td>읽음</td>
					</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<h4>[보낸쪽지]</h4>
<table border="1" width="700px">
	<tr>
		<th>번호</th>
		<th>받는사람</th>
		<th>제목</th>
		<th>보낸날짜</th>
		<th>수신확인</th>
	</tr>
	<c:choose>
		<c:when test="${sendMsgList == '[]' }">
			<tr>
				<td colspan="5" align="center">-</td>
			</tr>
		</c:when>
		<c:otherwise>
		<c:forEach items="${sendMsgList}" var="sendMsg">
			<tr>
				<td>${sendMsg.msgno }</td>
				<td>${sendMsg.toname }</td>
				<td><a href="${contextPath}/message/read/send/${sendMsg.msgno}">${sendMsg.title }</a></td>
				<td>${sendMsg.wdate }</td>
				<c:choose>
					<c:when test="${sendMsg.checked == '0'}">
						<td>안읽음</td>
					</c:when>
					<c:otherwise>
						<td>읽음</td>
					</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>
		</c:otherwise>
	</c:choose>
</table>
<%@ include file="../footer.jsp" %>
</body>
</html>