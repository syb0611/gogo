<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#tdTop{
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<body>
<%@ include file="header.jsp"%>

<table align="center">
	<tr>
		<td colspan="2" id="tdTop">회원가입</td>		
	</tr>
	<tr>
		<td>이메일</td>
		<td>
			<input type="text" name="email" />
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pw" /></td>
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="pw2" /></td>
	</tr>
	<tr>
		<td>닉네임</td>
		<td><input type="text" name="nickname" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" /></td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>
			<input type="text" name="phone">
		</td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
			<input type="radio" name="gender" value="1"/>남자
			<input type="radio" name="gender" value="2"/>여자
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>	
			<select name="birth_year">
				<c:set var="year" value="<%=new GregorianCalendar().get(Calendar.YEAR) %>"/>
				<c:forEach var="i" begin="0" end="${year-1900 }" step="1">
					<option value="${year-i }">${year-i }</option>
				</c:forEach>
			</select>년
			<select name="birth_month">
				<c:forEach var="month" begin="1" end="12" step="1">
					<option value="${month }">${month }</option>
				</c:forEach>
			</select>월
			<select name="birth_day">
				<c:forEach var="day" begin="1" end="31" step="1">
					<option value="${day }">${day }</option>
				</c:forEach>
			</select>일
		</td>
	</tr>
	<tr>
		<td>연락처</td> 
		<td><input type="text" name="phone" /></td>
	</tr>
	<tr>
		<td>차량여부</td> 
		<td>
			<input type="radio" name="hascar" />있음
			<input type="radio" name="hascar" />없음
		</td>
 	</tr> 
	<tr>
		<td>자기소개</td>
		<td><textarea name="profile"></textarea></td>
	</tr>
</table>


<!-- 			<td>전화번호</td> -->
<!-- 			<td><input type="text" name="user_phone number" /></td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td>차량소유여부</td> -->
<!-- 			<td><input type="radio" name="user_car" />예&nbsp;&nbsp;&nbsp;&nbsp;<input -->
<!-- 				type="radio" name="user_car" />아니오</td> -->

<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td>주소</td> -->
<!-- 			<td><input type="text" name="user_address" /></td> -->
<!-- 		</tr> -->
<!-- 		<!-- <tr> -->
<!-- 			<td>직업</td> -->
<!-- 			<td><select name="user_job"> -->
<!-- 					<option value="student">학생</option> -->
<!-- 					<option value="teacher">교사</option> -->
<!-- 					<option value="developer">개발자</option> -->
<!-- 					<option value="publisher">퍼블리셔</option> -->
<!-- 					<option value="driver">운전사</option> -->
<!-- 					<option value="architecture">건축가</option> -->
<!-- 					<option value="actor">배우</option> -->
<!-- 			</select></td> -->
<!-- 		</tr> --> -->
<!-- 		<tr> -->
<!-- 			<td>자기소개</td> -->
<!-- 			<td><textarea name="comment" cols="50" rows="5"></textarea></td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<td>이미지사진</td> -->
<!-- 			<td><input type=file size=40></td> -->
<!-- 		</tr> -->


<!-- 		<tr> -->

<!-- 			<td colspan="2" align="center"><td><input type="submit" class="btn btn-primary form-control" -->
<!-- 				value="회원가입" onclick="location.href='loginForm'"></td> -->
			
			
			
			
<!-- 		</tr> -->
<!-- 	</table> -->
	
<%@ include file="footer.jsp"%></
			body>
</html>