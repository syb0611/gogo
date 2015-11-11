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

<h4>카풀글쓰기</h4>
<form method="post" action="${contextPath}/carpool/write">
 	<input type="hidden" name="category" value="${category }">
	<input type="hidden" name="mno" value="${memberInfo.mno}">
	<table border="1" width="700px">
		<tr>
			<td colspan="2">
				<input type="radio" name="usertype" value="driver" checked="checked">타세요
				<input type="radio" name="usertype" value="rider">태워주세요
			</td>
		</tr>
		<tr>
			<td>출발지</td>
			<td><input type="text" name="departure"></td>
		</tr>
		<tr>
			<td>도착지</td>
			<td><input type="text" name="arrival"></td>
		</tr>
		<tr>
			<td>좌석수</td>
			<td><input type="number" name="seat" value="1"></td>
		</tr>
		<tr>
			<td>추가내용</td>
			<td><textarea name="memo" rows="10" cols="50"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
 				<input type="submit" value="등록"> 
			</td>
		</tr>
	</table>
</form>

<%@ include file="../footer.jsp" %>
</body>
</html>