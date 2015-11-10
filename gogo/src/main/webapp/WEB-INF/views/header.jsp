<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<head>
        <meta charset="utf-8">
        <title>main</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/templatemo_style.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/flexslider.css">
        <link rel="stylesheet" href="css/testimonails-slider.css">

        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
        
     
        <style>
            #top-header{
            	height: 70px;
            }
        </style>
    
</head>

<body>

<div id="top-header">
   <div class="container">
      <div class="row">
         <div class="col-md-7">
            <div class="home-account">
         
               <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
               <a href="${contextPath}/home">홈</a>
               
               <c:choose>
                  <c:when test="${memberInfo == null }">
                     <a href="${contextPath}/member/loginform">로그인</a>
                     <a href="${contextPath}/member/joinform">회원가입</a>
                  </c:when>
                  <c:otherwise>
                     <u>${memberInfo.nickname }</u>님&nbsp;
                     <a href="${contextPath}/member/myInfo">내정보</a>
                     <a href="${contextPath}/message/mymsg">쪽지함</a>
                     <a href="${contextPath}/member/logout">로그아웃</a>
                  </c:otherwise>
               </c:choose>
               
               <!-- 
               <ul>
                  <li><a href="${contextPath}/carpool/dan/list">단기카풀</a></li>
                  <li><a href="${contextPath}/carpool/jang/list">장기카풀</a></li>
                  <li><a href="#">고스쿨</a></li>
                  <li><a href="#">택시카풀</a></li>
                  <li><a href="${contextPath}/board/main">커뮤니티</a></li>
                  <li><a href="#">고객센터</a></li>
               </ul>
               -->
              
               
                      <script src="js/vendor/jquery-1.11.0.min.js"></script>
                       <script src="js/vendor/jquery.gmap3.min.js"></script>
                       <script src="js/plugins.js"></script>
                       <script src="js/main.js"></script>
                 
            </div>
         </div>
      </div>           
   </div>
</div>


        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>           


</body>
</html>