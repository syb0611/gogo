<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/withgo/resources/css/bootstrap.css">
<link rel="stylesheet" href="/withgo/resources/css/font-awesome.css">
<link rel="stylesheet" href="/withgo/resources/css/templatemo_style.css">
<link rel="stylesheet" href="/withgo/resources/css/templatemo_misc.css">
<link rel="stylesheet" href="/withgo/resources/css/flexslider.css">
<link rel="stylesheet"
	href="/withgo/resources/css/testimonails-slider.css">

<script src="/withgo/resources/js/vendor/jquery-1.11.0.min.js"></script>
<script src="/withgo/resources/js/vendor/jquery.gmap3.min.js"></script>
<script src="/withgo/resources/js/plugins.js"></script>
<script src="/withgo/resources/js/main.js"></script>



<div id="top-header">
	<div class="container">
		<div class="row">
			<div class="home-account">

				<c:set var="contextPath" value="${pageContext.request.contextPath}" />
				<a href="${contextPath}/home" class="head">홈</a>&nbsp;&nbsp;&nbsp;

				<c:choose>
					<c:when test="${memberInfo == null }">
						<a href="${contextPath}/member/loginform" class="head">로그인</a>&nbsp;&nbsp;&nbsp;
                     <a href="${contextPath}/member/joinform"
							class="head">회원가입</a>
					</c:when>
					<c:otherwise>
						<u>${memberInfo.nickname }</u>님&nbsp;
                     <a href="${contextPath}/mypage/profile"
							class="head">마이페이지</a>&nbsp;&nbsp;
                     <a href="${contextPath}/message/mymsg" class="head">쪽지함</a>&nbsp;&nbsp;
                     <a href="${contextPath}/member/logout" class="head">로그아웃</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>




