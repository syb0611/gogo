<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<h4>쪽지</h4>

<table border="1" width="700px">
	<tr>
		<td>보낸사람</td>
		<td>${vo.fromname }</td>
		<td>${vo.wdate }</td>
	</tr>
	<tr>
		<td>받은사람</td>
		<td colspan="2">${vo.toname }</td>
	</tr>
	<tr>
		<td>제목</td>
		<td colspan="2">${vo.title }</td>
	</tr>
	<tr>
		<td>내용</td>
		<td colspan="2">${vo.memo }</td>
	</tr>
	<tr>
		<td colspan="3">
			<input type="button" value="삭제" onclick="location.href='${contextPath}/message/delete/${vo.msgno}'">
			<input type="button" value="답장">
		</td>
	</tr>
</table>

<%@ include file="../footer.jsp" %>
</body>
</html>