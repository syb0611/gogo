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

<h4>쪽지보내기</h4>
<form method="post" action="${contextPath}/message/send">	
	<input type="hidden" name="toname" value="${toname }">
	<input type="hidden" name="fromname" value="${memberInfo.nickname }">  
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="15" name="memo"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">	
				<input type="submit" value="보내기">
			</td>
		</tr>
	</table>
</form>


<%@ include file="../footer.jsp" %>
</body>
</html>