<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="no-js">

<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">


<style type="text/css">
/* GNB Common */
body,p,h1,h2,h3,h4,h5,h6,menu,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}
img,fieldset{border:0}
menu,ul,ol{list-style:none}
em,address{font-style:normal}
a{text-decoration:none}
a:hover,a:active,a:focus{text-decoration:underline}
button{cursor:pointer}
button.disabled{cursor:default}
.blind{display:block;overflow:hidden;*position:absolute;top:0;left:0;width:0;height:0;border:0;background:none;font-size:0;line-height:0}
#gnb{float:right;right:3px} 


#heading {
/* 	background-image: url(images/community.png); */
	background-color: gray;
	height: 140px;
}

.content{
	margin: 30px;
}

.categoryTitle{
	float: left;
}


</style>

<meta name="decorator" content="NEW_USER_MYINFO">
<script type="text/javascript" src="https://nid.naver.com/inc/common/js/ko/passwdAjax.js?20140718"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/common/js/rsaAll.js"></script>
<script type="text/javascript" src="https://nid.naver.com/inc/user/js/soundCaptcha.js?20140313"></script>
<script type="text/javascript"></script>

<script>
function pwck(){
	if(document.getElementById("mypw").value != document.getElementById("nowpw").value){
		alert("현재 비밀번호가 일치하지 않습니다.");
		document.getElementById("nowpw").focus();
		return;
	}else{
		var newPwE = document.getElementById("newpw");
		var confPwE = document.getElementById("confpw");
		if(newPwE.value.trim() == ""){
			alert("새 비밀번호를 입력하세요");
			newPwE.focus();
			return;
		}
		if(confPwE.value.trim() == ""){
			alert("새 비밀번호를 확인하세요.");
			confPwE.focus();
			return;
		}
		if(newPwE.value != confPwE.value){
			alert("새 비밀번호가 일치하지 않습니다.");
			confPwE.focus();
			return;
		}
		else{
			alert("비밀번호가 변경되었습니다.");
			document.pwchangeform.submit();
		}
	}
}
</script>

</head>
<body>
	<header>
		<%@ include file="../header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="${contextPath}/home"><img src="../images/pool2.jpeg" title="Grill Template" alt="Grill Website Template"></a>
						</div>
					</div>
					<div class="col-md-7">
						<div class="main-menu">
							<ul>
								<li><a href="${contextPath}/carpool/list?category=dan"><font
										size=3>단기카풀</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=jang"><font
										size=3>장기카풀</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=goschool"><font
										size=3>고 스쿨</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=taxi"><font
										size=3>택시카풀</font></a></li>
								<li><a href="${contextPath}/board/main"><font size=3>커뮤니티</font></a></li>
								<li><a href="customer"><font size=3>고객센터</font></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>


	<div id="heading">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-content">
						<h2>MYPAGE</h2>
						<span>Mypage / <a href="${contextPath}/mypage/password">비밀번호변경</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2">
						<div class="list-group">
							<a href="${contextPath}/mypage/profile" class="list-group-item">기본정보</a>
							<a href="${contextPath}/mypage/password" class="list-group-item">비밀번호변경</a>
							<a href="${contextPath}/mypage/booking" class="list-group-item">예약내역</a>
							<a href="${contextPath}/mypage/reglist" class="list-group-item">내글관리</a>
							<a href="${contextPath}/mypage/bookmark" class="list-group-item">즐겨찾기</a>
							<a href="${contextPath}/mypage/withdraw" class="list-group-item">회원탈퇴</a>
						</div>		
					</div>		
					<div class="col-md-10">
						<div class="row">
							<div class="col-md-6 col-md-offset-3">
								<div class="spc_header">
									<p class="contxt"><a href="https://help.naver.com/support/contents/contents.nhn?serviceNo=532&categoryNo=2154" target="_blank" class="link">안전한 비밀번호로 내정보를 보호</a>하세요!</p>
									<br>
								</div>
								
								<input type="hidden" id="mypw" value="${memberInfo.pw }">
								
								<form method="post" action="/withgo/member/pwChange" id="pwchangeform" name="pwchangeform">
									<input type="hidden" name="mno" value="${memberInfo.mno }">
									<fieldset>
										<legend>비밀번호 변경</legend>
											<table style="width:100%; margin-top: 20px">
												<tr>
													<td><label id="lb_now_pw" for="nowpw">현재 비밀번호</label></td>
												</tr>
												<tr>
													<td><input type="password" name="nowpw" id="nowpw" class="form-control"></td>
												</tr>
												<tr>
													<td><label id="lb_new_pw" for="newpw">새 비밀번호</label></td>
												</tr>
												<tr>
													<td><input type="password" id="newpw" name="newpw" class="form-control"></td>
												</tr>
												<tr>
													<td><label id="lb_conf_pw" for="confpw">새 비밀번호 확인</label></td>
												</tr>
												<tr>
													<td><input type="password" id="confpw" class="form-control"></td>
												</tr>
												<tr>
													<td style="padding-top: 10px; text-align: right">
														<button type="button" class="btn btn-default" onclick="pwck()">확인</button>
													</td>
												</tr>
											</table>
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>			
				</div>		
			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>

</body>
</html>