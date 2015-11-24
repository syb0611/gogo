<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">

<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

/resources/js/vendor/jquery-1.11.0.min.js"></script>
<script src="/withgo/resources/js/vendor/jquery.gmap3.min.js"></script>
<script src="/withgo/resources/js/plugins.js"></script>
<script src="/withgo/resources/js/main.js"></script>

<style>
#heading {
 	background-image: url(/withgo/resources/images/새.png); 
	
	height: 150px;
}

.content{
	margin: 30px;
}

.categoryTitle{
	float: left;
}

</style>

<script>
function checkPW(){
	if(document.getElementById("mypw").value == document.getElementById("pwck").value){
		document.getElementById("pwform").submit();
	}else{
		alert("비밀번호가 일치하지 않습니다.");
		document.getElementById("pwck").focus();
		return;
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
							<a href="${contextPath}/home"><img src="../images/roro.png" width="100px" height="50px" title="Grill Template" alt="go home"></a>
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
						<h2 style="color:white; text-shadow:3px 3px 3px gray;">MY PAGE</h2>
						<a href="${contextPath}/mypage/withdraw">회원탈퇴</a>
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
										<div class="c_header">
											<legend>회원탈퇴</legend>
											<p class="contxt">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
										</div>
			
										<div class="section_delete">
											<p class="h_dropout">
														     	  사용하고 계신 아이디는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</p>
											<p class="dropout_dsc">
														     	탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.</p>
											<p class="h_dropout">탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</p><br>
										</div>
									</div>
								</div>
								
								<input type="hidden" id="mypw" value="${memberInfo.pw }">
								
								<div id="container">
								<div id="content">
									<div class="section_pwconfirm">
										<form id="pwform" name="pwform" action="${contextPath}/member/withdraw">
											<input type="hidden" name="email" value="${memberInfo.email }">
											<div class="spc_content">
												<fieldset>
													<legend>비밀번호 재확인 입력</legend>
													<p>안전한 탈퇴를 위해 비밀번호를 다시 한 번 입력해주세요.</p><br>
												    <p class="spc_row"><span class="txt_userid"></span></p>
													<p class="spc_row2">
														<div class="row">
															<div class="col-sm-6">
																<label id="lb_upw" for="upw">비밀번호</label>
																<input type="password" id="pwck" name="pwck" class="form-control">
															</div>
														</div>
													</p>
													<p class="btn_area_btm">
														<button type="button" class="btn btn-default" onclick="checkPW()">확인</button>
													</p>
												</fieldset>
											</div>
										</form>
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

</body>
</html>