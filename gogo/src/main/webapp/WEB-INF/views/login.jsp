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
		
<h2>로그인</h2>
<form method="post" action="${contextPath}/member/login">
	<label for="inputEmail">이메일 입력</label>
	<input type="email" name="email" placeholder="이메일"><br>

	<label for="inputPassword">비밀번호 입력</label>
	<input type="password" name="pw" placeholder="비밀번호"><br>

	<span>아이디/비밀번호찾기</span>
	<input type="submit" value="로그인"> 
	<input type="button" value="회원가입" onclick="location.href='${contextPath}/member/joinform'">
</form>

<%@ include file="footer.jsp" %>
</body>
</html>