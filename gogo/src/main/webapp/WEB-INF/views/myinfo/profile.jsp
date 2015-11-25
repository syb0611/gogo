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

#previewId, #filebtn{
	text-align: center;
	margin-bottom: 20px;
}
</style>
<script>
var first = 0;

function formck(){
	document.myform.submit();
}

function previewImage(targetObj, previewId){
	if(first == 0){
		document.getElementById("myImg").style.display = "none";
		first = 1;
	}
	
	var preview =  document.getElementById(previewId); //div id   
    var ua = window.navigator.userAgent;

    if (ua.indexOf("MSIE") > -1) {//ie일때

        targetObj.select();

        try {
            var src = document.selection.createRange().text; // get file full path 
            var ie_preview_error = document
                    .getElementById("ie_preview_error_" + previewId);

            if (ie_preview_error) {
                preview.removeChild(ie_preview_error); //error가 있으면 delete
            }

            var img = document.getElementById(previewId); //이미지가 뿌려질 곳 

            img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
                    + src + "', sizingMethod='scale')"; 
        } catch (e) {
            if (!document.getElementById("ie_preview_error_" + previewId)) {
                var info = document.createElement("<p>");
                info.id = "ie_preview_error_" + previewId;
                info.innerHTML = "a";
                preview.insertBefore(info, null);
            }
        }
    } else {
        var files = targetObj.files;
        for ( var i = 0; i < files.length; i++) {

            var file = files[i];

            var imageType = /image.*/; 
            if (!file.type.match(imageType))
                continue;

            var prevImg = document.getElementById("prev_" + previewId); 
            if (prevImg) {
                preview.removeChild(prevImg);
            }

            var img = document.createElement("img"); 
            img.id = "prev_" + previewId;
            img.classList.add("obj");
            img.file = file;
            img.style.width = '80px'; 
            img.style.height = '80px';
            
            preview.appendChild(img);

            if (window.FileReader) { 
                var reader = new FileReader();
                reader.onloadend = (function(aImg) {
                    return function(e) {
                        aImg.src = e.target.result;
                    };
                })(img);
                reader.readAsDataURL(file);
            } else { 
                if (!document.getElementById("sfr_preview_error_"+ previewId)) {
                    var info = document.createElement("p");
                    info.id = "sfr_preview_error_" + previewId;
                    info.innerHTML = "not supported FileReader";
                    preview.insertBefore(info, null);
                }
            }
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
												<legend>개인정보 수정</legend>
												<p class="contxt">
													<strong>회원님</strong>의 회원정보입니다.<br> 회원정보는 개인정보취급방침에 따라
													안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다. <a
														href="http://www.naver.com/rules/privacy.html"
														target="_blank"
														onclick="clickcr(this,'inf.privacy','','',event);"><br>개인정보취급방침</a>
												</p>
											
											<form id="myform" name="myform" method="post" action="/withgo/member/updateProfile" enctype="multipart/form-data">
												<input type="hidden" name="mno" value="${memberInfo.mno }">
												<fieldset>
													<table border="0" class="tbl_model">
														<caption>
															<span class="blind"></span>
														</caption>
														<colgroup>
															<col style="width: 22%">
															<col>
														</colgroup>
														 <tbody>
															<tr>
																<th scope="row">
																	<div class="thcell">
																		사용자 <span class="word_br">이름</span>
																	</div>
																</th>
																<td>
																	<div class="col-md-8">

																		<div class="tdcell">
																			<p class="contxt_tit">
																				<input type="text" name="name" value="${memberInfo.name }">
																			</p>
																			<p class="contxt_desc">개명으로 이름이 변경된 경우에 한하여 변경이
																				가능합니다.</p>
																			<p class="btn_area_btm">
																				<a href="javascript:changeName();" class="btn_model"><b
																					class="btn2">[이름변경]</b></a><br> <br> <br>
																			</p>
																		</div>
																	</div>

																	 <div class="col-md-4">
																	 	<div id="previewId">
																	 		<c:choose>
																	 			<c:when test="${memberInfo.image == null }">
																	 				<img src="/withgo/resources/images/blankimage.png" id="myImg" width="80px">
																	 			</c:when>
																	 			<c:otherwise>
																	 				<img src="/withgo/upload/${memberInfo.image }" id="myImg" width='80px'>
																	 			</c:otherwise>
																	 		</c:choose>
																	 		
																	 	</div>
																	 	<div id="filebtn">
																	 		<input type="file" name="uploadfile" id="uploadfile" size="40" onchange="previewImage(this,'previewId')">
																	 	</div>
																	 	
																		
																	</div>
																</td>
															</tr>

															<tr>
																<th scope="row">
																	<div class="thcell">차량<span class="word_br">유무</span></div>
																</th>
																<td>
																	<div class="tdcell">
																		<p class="contxt_tit"></p>
																		<p class="contxt_desc"></p>
																		<c:choose>
																			<c:when test="${memberInfo.hascar == 1 }">
																				<input name="hascar" type="radio" value="1" checked="checked"><span>있음</span> 
																				<input name="hascar" type="radio" value="0"><span>없음 </span>
																			</c:when>
																			<c:otherwise>
																				<input name="hascar" type="radio" value="1"><span>있음</span> 
																				<input name="hascar" type="radio" value="0" checked="checked"><span>없음 </span>
																			</c:otherwise>
																		</c:choose>
																		
																		<p class="btn_area_btm">
																			<a href="javascript:changeName();" class="btn_model"><b
																				class="btn2">[차량유무 변경]</b></a><br> <br> <br>
																		</p>
																	</div>
																</td>
															</tr>
															
															<tr>
																<th scope="row">
																	<div class="thcell">성별</div>
																</th>
																<td>
																	<div class="tdcell">
																		<p class="contxt_tit"></p>
																		<p class="contxt_desc"></p>
																		<c:choose>
																			<c:when test="${memberInfo.gender == 1}">
																				<input name="gender" type="radio" value="1" checked="checked"><span>남자</span> 
																				<input name="gender" type="radio" value="2"><span>여자 </span>
																			</c:when>
																			<c:otherwise>
																				<input name="gender" type="radio" value="1"><span>남자</span> 
																				<input name="gender" type="radio" value="2" checked="checked"><span>여자 </span>
																			</c:otherwise>
																		</c:choose>
																		
																		<p class="btn_area_btm">
																			<a href="javascript:changeName();" class="btn_model"><b
																				class="btn2">[성별 변경]</b></a><br> <br> <br>
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
																		<p class="contxt_tit">
																			<input type="text" name="nickname" value="${memberInfo.nickname }">
																		</p>
																		<p class="contxt_desc">위드고 서비스 이용시 사용할 닉네임입니다.</p>
																		<p class="btn_area_btm">
																			<a href="javascript:changeName();" class="btn_model"><b
																				class="btn2">[닉네임 변경]</b></a><br> <br> <br>
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
																		<p id="p_txt_phoneNo" class="contxt_tit">
																			<input type="text" name="phone"	value="${memberInfo.phone }">
																		</p>
																		<p class="contxt_desc">아이디, 비밀번호 찾기 등 본인확인이 필요한 경우
																			사용할 휴대전화입니다.</p>

																		<p id="p_phoneNo" class="btn_area_btm">
																			<a href="#"
																				onclick="display('phoneNo');return false;"
																				class="btn_model"><b class="btn2">[수정]</b></a><br>
																			<br> <br>
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
																		<textarea name="profile" rows="5" cols="30">${memberInfo.profile }</textarea>
																		<br> <br> <a href="javascript:changeName();"
																			class="btn_model"><b class="btn2">[수정]</b></a><br>
																		<br> <br>
																	</div>
																</td>
															</tr>

														</tbody>
													</table>
													<input type="button" class="btn btn-default form-control" onclick="formck()" value="확인">
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
		</div> 
		<%@ include file="../footer.jsp"%>

</body>
</html>