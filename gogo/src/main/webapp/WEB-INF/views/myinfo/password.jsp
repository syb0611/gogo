<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- 

Grill Template 

http://www.templatemo.com/free-website-templates/417-grill

-->
<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/font-awesome.css">
<link rel="stylesheet" href="../css/templatemo_style.css">
<link rel="stylesheet" href="../css/templatemo_misc.css">
<link rel="stylesheet" href="../css/flexslider.css">
<link rel="stylesheet" href="../css/testimonails-slider.css">


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
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js">

</script>


</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

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
								<li><a href="${contextPath}/carpool/list?category=dan"><font size=3>단기카풀</font></a></li>
								<li><a href="${contextPath}/carpool/list?category=jang"><font size=3>장기카풀</font></a></li>
								<li><a href="goschool"><font size=3>고 스쿨</font></a></li>
								<li><a href="taxi"><font size=3>택시카풀</font></a></li>
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
							<div class="col-md-offset-1 col-md-10 col-sm-12">
								<div id="container">
									<div id="content">
									<div class="row">
										<div class="col-md-6 col-md-offset-3">
										<div class="section_pwconfirm">
											<div class="spc_header">
											
												<p class="contxt"><a href="https://help.naver.com/support/contents/contents.nhn?serviceNo=532&categoryNo=2154" target="_blank" class="link">안전한 비밀번호로 내정보를 보호</a>하세요!</p>
												<br>
											</div>
												
											
											<fieldset>
											<legend>비밀번호 변경</legend>
											<p class="spc_row">
												<br>
												<table>
												<tr>
												<label id="lb_now_pw" for="now_pw">현재 비밀번호</label>
												</tr>
												
												<input type="password" name="now_pw" id="now_pw" maxlength="16" style="width:336px" title="현재 비밀번호 입력"
														onFocus="convertDiv('now_pw', 'none')"
														onBlur="convertDiv('now_pw', 'block');showCapslockForNowPw(-1);"
														onkeyup="showCapslockForNowPw(1);"
														onkeypress="capslock(event);">
											</p>
											<div id="help0_1" class="help left" style="top:9px; right:-122px">
												<span class="shadow1"></span>
												<span class="shadow2"></span>
												<span class="arrow"></span>
											</div>
											<p class="spc_row2">
												<br>
												<tr>
												<label id="lb_new_pw" for="new_pw">새 비밀번호</label><br>
												</tr>
												
												<input type="password" id="new_pw" name="new_pw" maxlength="17" style="width:260px" title="새 비밀번호 입력"
														onFocus="convertDiv('new_pw','none');checkpwd_login('new_pw','now_pw');"
														onBlur="convertDiv('new_pw','block');showhelpmsg(-1);" 
														onkeyup="checkShiftUp(event);checkpwd_login('new_pw','now_pw');"
														onkeypress="capslock(event);"
														onkeydown="checkShiftDownNoMsg(event);">
												
											</p>
											<p class="spc_row3">
												<br>
												<tr>
												<label id="lb_conf_pw" for="conf_pw">새 비밀번호 확인</label><br>
												</tr>
												
												<input type="password" id="conf_pw" maxlength="16" style="width:260px" title="새 비밀번호 확인 입력"
														onFocus="convertDiv('conf_pw','none');"
														onBlur="convertDiv('conf_pw','block');">
																					
											</p>
											
												
											<p class="btn_area_btm">
											<br>
											<br>
											<button type="submit" class="btn btn-default form-control" id="changeSubmit" onclick="clickcr(this,'npw.confirm','','',event);">확인</button>
											<button type="button" class="btn btn-default form-control" onclick="cancel();clickcr(this,'npw.reload','','',event);">취소</button>
											</p>
											
											</table>
											</fieldset>
										</div>
										</div>
									</div>	
									</div>
								</div>
							</div>
						</div>			
					</div>		
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@ include file="../footer.jsp"%>

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

</body>
</html>