<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">


<style>
#heading {
 	background-image: url(/withgo/resources/images/에이.png); 

	height: 140px;
}

.content{
	margin: 30px;
}
</style>
<script type="text/javascript">
var xhr = null;
var emailflag = false;
var pwflag = false;
var nicknameflag = false;

function emailCheck(){
	var email = document.getElementById("email").value.trim();
	if(email == "") return;
	
	xhr = new XMLHttpRequest();
	
	var url = "${pageContext.request.contextPath}/member/emailCheck";
	xhr.open("POST", url, true);
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	xhr.onreadystatechange = emailResult;
	xhr.send("email="+email);
}

function emailResult(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			var flag = xhr.responseText;
			if(flag == "true"){
				document.getElementById("emailck").innerHTML = "이미 가입된 이메일입니다.";
				emailflag = false;
				document.joinform.email.focus();
			}else{
				document.getElementById("emailck").innerHTML = "사용 가능한 아이디입니다.";
				emailflag = true;
				document.joinform.pw.focus();
			}
		}
	}
}


function pwCheck(){
	var pw = document.getElementById("pw").value.trim();
	var pw2 = document.getElementById("pw2").value.trim();
	
	if(pw == "" && pw2 == "") return;
	
	if(pw != "" && pw2 != ""){
		if(pw == pw2){
			document.getElementById("pwck").innerHTML = "비밀번호가 일치합니다.";
			pwflag = true;
		}else{
			document.getElementById("pwck").innerHTML = "비밀번호가 일치하지 않습니다.";	
			pwflag = false;
			document.getElementById("pw2").value = "";
			document.getElementById("pw2").focus();
		}
	}
}

function nicknameCheck(){
	var nickname = document.getElementById("nickname").value.trim();
	if(nickname == "") return;
	
	xhr = new XMLHttpRequest();
	
	var url = "${pageContext.request.contextPath}/member/nicknameCheck";
	xhr.open("POST", url, true);
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	xhr.onreadystatechange = nicknameResult;
	xhr.send("nickname="+nickname);
}

function nicknameResult(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			var flag = xhr.responseText;
			if(flag == "true"){
				document.getElementById("nickck").innerHTML = "이미 사용중인 닉네임입니다.";
				nicknameflag = false;
				document.joinform.nickname.focus();
			}else{
				document.getElementById("nickck").innerHTML = "사용 가능한 닉네임입니다.";
				nicknameflag = true;
				document.joinform.name.focus();
			}
		}
	}
}

function formCheck(){
	var form = document.joinform;
	var email = form.email.value.trim();
	var pw = form.pw.value.trim();
	var pw2 = form.pw2.value.trim();
	var nickname = form.nickname.value.trim();
	var name = form.name.value.trim();
	
	if(email==""){ 
		alert("이메일을 입력하세요.");
		form.email.focus();
		return; 
	}
	if(pw==""){ 
		alert("비밀번호를 입력하세요."); 
		form.pw.focus();
		return; 
	}
	if(pw2==""){ 
		alert("비밀번호를 확인하세요."); 
		form.pw2.focus();
		return; 
	}
	if(nickname==""){ 
		alert("닉네임을 입력하세요."); 
		form.nickname.focus();
		return; 
	}
	if(name==""){ 
		alert("이름을 입력하세요."); 
		form.name.focus();
		return; 
	}
	
	if(email!="" && pw!="" && pw2!="" && nickname!="" && name!=""){
		if(emailflag==false){ 
			alert("중복된 이메일입니다. 다른 아이디를 입력하세요.");
			form.email.focus();
			return;
		}
		if(pwflag==false){
			alert("비밀번호가 일치하지 않습니다. 다시 입력하세요.");
			form.pw2.focus();
			return;
		}
		if(nicknameflag==false){ 
			alert("중복된 닉네임입니다. 다른 닉네임을 입력하세요.");
			form.nickname.focus();
			return;
		}
		if(emailflag==true && pwflag==true && nicknameflag==true){
			var y = form.birth_year.value;
			var m = form.birth_month.value;
			var d = form.birth_day.value;
			if(m < 10) m = "0" + m;
			if(d < 10) d = "0" + d;
			
			var birth = y+"/"+m+"/"+d;
			form.birth.value = birth;
			form.submit();
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
							<a href="${contextPath}/home"><img src="../images/roro.png" width="100px" height="50px" title="Grill Template" alt="go home"></a>
						</div>
					</div>
					<div class="col-md-7">
						<div class="main-menu">
							<ul>
							<li><a href="${contextPath}/carpool/list?category=dan"><font size = 3>단기카풀</font></a></li>
                            <li><a href="${contextPath}/carpool/list?category=jang"><font size = 3>장기카풀</font></a></li> 
                            <li><a href="${contextPath}/carpool/list?category=goschool"><font size = 3>고 스쿨</font></a></li>
                            <li><a href="${contextPath}/carpool/list?category=taxi"><font size = 3>택시카풀</font></a></li>
                            <li><a href="${contextPath}/board/main"><font size = 3>커뮤니티</font></a></li>
                            <li><a href="${contextPath}/customer"><font size = 3>고객센터</font></a></li>
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
						<h2>REGISTER</h2>
						<span>Home / 회원가입 </span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
		<div class="row">
			<div class="col-md-5 col-md-offset-4">	
				<h2>회원가입</h2>
				<form method="post" action="${contextPath}/member/join" name="joinform">
				<table class="table table-condensed">	
					<tr>
						<td class="col-sm-3">이메일</td>
						<td class="col-sm-5"> 
							<input class="form-control" type="email" name="email" id="email" required="required" onblur="emailCheck()" />
						</td>
						<td class="col-sm-4">
							<div id="emailck"></div>
						</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input class="form-control" type="password" name="pw" id="pw" required="required" onblur="pwCheck()"/></td>
						<td></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input class="form-control" type="password" name="pw2" id="pw2" required="required" onblur="pwCheck()"/></td>
						<td><div id="pwck"></div></td>
					</tr>
					<tr>
						<td>닉네임</td>
						<td><input class="form-control" type="text" name="nickname" id="nickname" required="required" onblur="nicknameCheck()"/></td>
						<td><div id="nickck"></div></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input class="form-control" type="text" name="name" required="required"/></td>
						<td></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>
							<input class="form-control" type="text" name="phone">
						</td>
						<td>(예)010-123-4567</td>
					</tr>
					<tr>
						<td>성별</td>
						<td>
							<input type="radio" name="gender" value="1" checked="checked"/>남
							<input type="radio" name="gender" value="2"/>여
						</td>
						<td></td>
					</tr>
					<tr>
						<td>생년월일</td>
						<td>	
							<input type="hidden" name="birth" id="birth">
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
						<td></td>
					</tr>
					<tr>
						<td colspan="3">
							<input type="button" class="btn btn-default" value="가입" onclick="formCheck()">
						</td>
					</tr>
				</table>
				</form>
			</div>		
		</div>		
	</div>

	<%@ include file="footer.jsp"%>

</body>
</html>