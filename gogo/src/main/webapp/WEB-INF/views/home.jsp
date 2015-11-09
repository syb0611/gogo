<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>

<h2>home</h2>

<form method="post" action="">
	<table border="1">
		<tr>
			<td>출발지</td>
			<td><input type="text" name="departure"></td>
		</tr> 
		<tr>
			<td>도착지</td>
			<td><input type="text" name="arrival"></td>
		</tr> 
		<tr>
			<td colspan="2"><input type="submit" value="검색"></td>
		</tr> 
	</table>
</form>

<%@ include file="footer.jsp" %>
</body>
</html>