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

<a href="${contextPath}/board/list/greeting">가입인사</a>
<a href="${contextPath}/board/list/free">자유게시판</a>
<a href="${contextPath}/board/list/review">카풀이용후기</a>

<div class="category">
	<c:choose>
		<c:when test="${vo.category == 'greeting' }"><h4>가입인사</h4></c:when>
		<c:when test="${vo.category == 'free' }"><h4>자유게시판</h4></c:when>
		<c:otherwise><h4>카풀이용후기</h4></c:otherwise>
	</c:choose>
</div>	
글수정

<form method="post" action="${contextPath}/board/update">	
	<input type="hidden" name="bno" value="${vo.bno }">
	<table>
		<tr>
			<th>제목</th>
			<td>
				<input type="text" name="title" value="${vo.title }">
			</td>
			<th>작성자</th>
			<td>${vo.nickname }</td>
			<th>작성일</th>
			<td>${vo.wdate }</td>					
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="5">
				<textarea name="content" rows="15">${vo.content }</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="6">	
				<!-- 글쓴이와 글 읽는 사람이 일치할 경우에 삭제, 수정 가능 -->
				<c:if test="${vo.nickname == memberInfo.nickname }">
					<input type="button" value="삭제" onclick="location.href='${contextPath}/board/delete/${vo.category }/${vo.bno}'">
					<input type="submit" value="수정">
				</c:if>
				<input type="button" value="목록" onclick="location.href='${contextPath}/board/list/${vo.category}'">
			</td>
		</tr>
</table>
</form>
<%@ include file="../footer.jsp" %>
</body>
</html>