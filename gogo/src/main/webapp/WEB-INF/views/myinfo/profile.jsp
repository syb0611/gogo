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

<style>
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

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}

table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}



fieldset {
    display: block;
    -webkit-margin-start: 2px;
    -webkit-margin-end: 2px;
    -webkit-padding-before: 0.35em;
    -webkit-padding-start: 0.75em;
    -webkit-padding-end: 0.75em;
    -webkit-padding-after: 0.625em;
    min-width: -webkit-min-content;
}

</style>
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
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
						<span>Mypage / <a href="${contextPath}/mypage/profile">기본정보</a></span>
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
												<!-- CONTENTS -->
												<div id="content"> 
										        <div class="c_header"> 
													<br><br><legend>개인정보 수정</legend>
													<p class="contxt"><strong>회원님</strong>의 회원정보입니다.<br>
													회원정보는 개인정보취급방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다. <a href="http://www.naver.com/rules/privacy.html" target="_blank" onclick="clickcr(this,'inf.privacy','','',event);"><br>개인정보취급방침</a></p>
												</div>
												<form id="fm" name="fm">
													<input type="hidden" name="token_help" id="token_help" value="AahabmOGBjcFqkP2" />
													<input type="hidden" name="isEmailYn" id="isEmailYn" value="Y" />
													<input type="hidden" name="isPhoneYn" id="isPhoneYn" value="Y" />
													<input type="hidden" name="bEmail" id="bEmail" value="rudal6121@hanmail.net" />
													<input type="hidden" name="phoneAuthYn" id="phoneAuthYn" value="N" />
													<input type="hidden" name="mobileYn" id="mobileYn" value="N" />
													
													<fieldset>
														<table border="0" class="tbl_model">
														<br>
														<br>
														<caption><span class="blind"></span></caption>
														<colgroup>
														<col style="width:22%"><col>
														</colgroup>
														<tbody>
														<tr>
															<th scope="row">
																<div class="thcell">
																     	  사용자 <span class="word_br">이름</span>
																     </div>
															</th>
															<td>
																<div class="tdcell">
																	<p class="contxt_tit">최경미</p>
																			<p class="contxt_desc">개명으로 이름이 변경된 경우에 한하여 변경이 가능합니다.</p>
																			<p class="btn_area_btm">
																				<a href="javascript:changeName();" class="btn_model"><b class="btn2">[이름변경]</b></a><br><br><br>
																			</p>
																</div>
															</td>
														</tr>
														
														<tr>
															<th scope="row">
																<div class="thcell">
																     	  차량<span class="word_br">유무</span>
																     </div>
															</th>
															<td>
																<div class="tdcell">
																	<p class="contxt_tit"></p>
																			<p class="contxt_desc"></p>
																			<input name="ss" id="ss" type="radio" checked="" value="1"><span>있음      </span>
								   											<input name="ss" id="ss" type="radio" value="1"><span>없음 </span><br><br>
																			
																			<p class="btn_area_btm">
																				<a href="javascript:changeName();" class="btn_model"><b class="btn2">[차량유무 변경]</b></a><br><br><br>
																			</p>
																</div>
															</td>
														</tr>
														
														<tr>
															<th scope="row">
																<div class="thcell">
																     	  사용자 <span class="word_br">닉네임</span>
																     </div>
															</th>
															<td>
																<div class="tdcell">
																	<p class="contxt_tit">개똥이</p>
																			<p class="contxt_desc">위드고 서비스 이용시 사용할 닉네임입니다.</p>
																			<p class="btn_area_btm">
																				<a href="javascript:changeName();" class="btn_model"><b class="btn2">[닉네임 변경]</b></a><br><br><br>
																			</p>
																</div>
															</td>
														</tr>
														
														
														<tr>
															<th scope="row">
																<div class="thcell">휴대전화</div>
															</th>
															<td>
																<div class="tdcell">
																	<p id="p_txt_phoneNo" class="contxt_tit">010-1111-5454</p>
																	<p class="contxt_desc">아이디, 비밀번호 찾기 등 본인확인이 필요한 경우 사용할 휴대전화입니다.</p>
																	<div id="d_phoneNo" style="display:none">
																		<p id="p_txt_phoneNo_changeYn" class="contxt_tit2">변경할 휴대전화</p>
																		<p class="contxt_webctrl">
																			<select id="internationalCode" name="internationalCode" class="country_drop" onchange="javascript:setInternationalCode('internationalCode','input_internationalCode', '');">
																				  	 	<option value="82">대한민국</option>
																				  	 	<option value="1">미국</option>
																				  	 	<option value="81">일본</option>
																				  	 	<option value="86">중국</option>
																			</select>	
																		    
																		</p>
																		
																	</div>
																	<p id="p_phoneNo" class="btn_area_btm">
																		<a href="#" onclick="display('phoneNo');return false;" class="btn_model"><b class="btn2">[수정]</b></a><br><br><br>
																	</p>
															</div>
														</td>
													</tr>
													
													<tr>
															<th scope="row">
																<div class="thcell">
																     	  자기 <span class="word_br">소개</span>
																     </div>
															</th>
															<td>
																<div class="tdcell">
																	
																				<textarea name="memo" rows="5" cols="30"></textarea><br><br>
																				<a href="javascript:changeName();" class="btn_model"><b class="btn2">[수정]</b></a><br><br><br>
																			</p>
																</div>
															</td>
														</tr>
														
													</tbody>
													</table>
													<button type="submit" class="btn btn-default form-control" id="changeSubmit" onclick="clickcr(this,'npw.confirm','','',event);">확인</button>
													<button type="button" class="btn btn-default form-control" onclick="cancel();clickcr(this,'npw.reload','','',event);">취소</button>
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
	</div>
	<%@ include file="../footer.jsp"%>

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

</body>
</html>