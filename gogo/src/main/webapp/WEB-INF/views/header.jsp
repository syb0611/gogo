<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                     <a href="${contextPath}/mypage/profile">마이페이지</a>
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
              
               
                      <script src="${contextPath}/resources/js/vendor/jquery-1.11.0.min.js"></script>
                       <script src="${contextPath}/resources/js/vendor/jquery.gmap3.min.js"></script>
                       <script src="${contextPath}/resources/js/plugins.js"></script>
                       <script src="${contextPath}/resources/js/main.js"></script>
                 
            </div>
         </div>
      </div>           
   </div>
</div>


        <script src="${contextPath}/resources/js/vendor/jquery-1.11.0.min.js"></script>
        <script src="${contextPath}/resources/js/vendor/jquery.gmap3.min.js"></script>
        <script src="${contextPath}/resources/js/plugins.js"></script>
        <script src="${contextPath}/resources/js/main.js"></script>           


