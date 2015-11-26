<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="utf-8">
<title>About - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<style>
@import
url
(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body {
	font-family: '맑은 고딕';
}

#heading {
	background-image: url(/withgo/resources/images/로그인.png);
	height: 150px;
}

#loginForm span {
	float: right;
}
</style>
<script>
var xhr = null;

function pwck(){
	var f = document.pwform;
	if(f.pw.value.trim() == ""){
		alert("새로운 비밀번호를 입력하세요.");
		f.pw.focus();
		return;
	}
	if(f.pw2.value.trim() == ""){
		alert("비밀번호를 확인하세요.");
		f.pw2.focus();
		return;
	}
	if(f.pw.value != f.pw2.value){
		alert("비밀번호가 일치하지 않습니다.");
		f.pw2.focus();
		return;
	}
	
	
	var email = f.email.value;
	var phone = f.phone.value;
	var pw = f.pw.value;
	
	xhr = new XMLHttpRequest();
	var url = "${pageContext.request.contextPath}/member/pwUpdate";
	xhr.open("POST", url, true);
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	xhr.onreadystatechange = pwUpdateResult;
	xhr.send("email="+email+"&phone="+phone+"&pw="+pw);
}

function pwUpdateResult(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			var flag = xhr.responseText;
			alert("비밀번호가 변경되었습니다.");
			location.href="/withgo/member/loginform";
		}
	}
}
</script>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="${contextPath}/home"><img src="../images/roro.png" width="100px" height="50px"
								title="Grill Template" alt="go home"></a>
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
								<li><a href="${contextPath}/customer"><font size=3>고객센터</font></a></li>
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
						<h2></h2>
						
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="row">
		<div class="col-sm-4 col-sm-offset-4 col-xs-10 col-xs-offset-1">
			<div style="margin-top:50px"></div>
			<h2>새로운 비밀번호 설정</h2>
			
			<form id="pwform" name="pwform" method="post" action="">
				<input type="hidden" name="email" value="${findInfo.email }">
				<input type="hidden" name="phone" value="${findInfo.phone }">
				<div class="form-group">
					<label for="newpw">새로운 비밀번호</label> 
					<input type="password" class="form-control" name="pw" placeholder="새로운 비밀번호">
				</div>
				<div class="form-group">
					<label for="newpw">새로운 비밀번호 확인</label> 
					<input type="password" class="form-control" name="pw2" placeholder="새로운 비밀번호 확인">
				</div>
				<div class="form-group">
					<input type="button" class="btn btn-primary form-control" value="비밀번호 저장" onclick="pwck()">
				</div>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>

