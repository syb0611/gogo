<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="utf-8">
<title>About - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<style>

#heading {
	background-image: url(/withgo/resources/images/로그인.png);
	height: 150px;
}

</style>
<script>
function findIdCk(){
	var iform = document.idform;	
	
	var nickname = iform.nickname;
	if(nickname.value.trim() == ""){
		alert("닉네임을 입력하세요.")
		nickname.focus();
		return;
	}
	
	var phone = iform.phone;
	if(phone.value.trim() == ""){
		alert("핸드폰을 입력하세요.");
		phone.focus();
		return;
	}
	
	var pw = iform.pw;
	if(pw.value.trim() == ""){
		alert("비밀번호를 입력하세요.");
		pw.focus();
		return;
	}

	iform.submit();
}

function findPwCk(){
	var pform = document.pwform;
	
	var email = pform.email;
	var phone = pform.phone;
	
	if(email.value.trim() == ""){
		alert("아이디를 입력하세요.")
		email.focus();
		return;
	}
	
	if(phone.value.trim() == ""){
		alert("비밀번호를 입력하세요.");
		phone.focus();
		return;
	}
	
	pform.submit();
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
		<div class="col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
		<input type="hidden" value="${res }" id="res">
			<div style="margin-top:20px"></div>
			<div class="row">
				<div class="col-md-11 col-md-offset-1">
					<h3>아이디/비밀번호 찾기</h3>
				</div>
			</div>
			<div style="margin-top:20px"></div>
			<div class="row">
				<div class="col-md-5 col-md-offset-1">	
					<form action="/withgo/member/findId" method="post" name="idform">
						<table width="100%">
							<tr>
								<td colspan="2">- 아이디(이메일) 찾기 -</td>
							</tr>
							<tr>
								<td>닉네임</td>
								<td><input type="text" name="nickname" placeholder="닉네임" class="form-control"></td>
							</tr>
							<tr>
								<td>핸드폰</td>
								<td><input type="text" name="phone" placeholder="핸드폰" class="form-control"></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="pw" placeholder="비밀번호" class="form-control"></td>
							</tr>
							<c:if test="${res == 'idF' }">
							<tr>
								<td colspan="2">입력하신 정보가 일치하지 않습니다.</td>
							</tr>
							</c:if>
							<tr>
								<td colspan="2" height="60px">
									<input type="button" class="form-control" onclick="findIdCk()" value="아이디 찾기">
								</td>
							</tr>
						</table>
					</form>
				</div>
				
				<div class="col-md-5 col-md-offset-1">
					<form action="/withgo/member/findPw" method="post" name="pwform">
						<table width="100%">
							<tr>
								<td colspan="2">- 비밀번호 찾기 -</td>
							</tr>
							<tr>
								<td>아이디</td>
								<td><input type="text" name="email" placeholder="아이디" class="form-control"></td>
							</tr>
							<tr>
								<td>핸드폰</td>
								<td><input type="text" name="phone" placeholder="핸드폰" class="form-control"></td>
							</tr>
							<c:if test="${res == 'pwF' }">
							<tr>
								<td colspan="2">입력하신 정보가 일치하지 않습니다.</td>
							</tr>
							</c:if>
							<tr>
								<td colspan="2" height="60px">
									<input type="button" class="form-control" onclick="findPwCk()" value="비밀번호 찾기">
								</td>
							</tr>
							
						</table>
					</form>
				</div>
			</div>
	
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>

