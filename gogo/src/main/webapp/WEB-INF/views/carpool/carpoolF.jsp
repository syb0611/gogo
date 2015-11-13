<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<!-- 

Grill Template 

http://www.templatemo.com/free-website-templates/417-grill

-->
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
        #formDiv{
			margin-top: 200px;
		}
		
		#searchForm{
			width: 80%;
			margin: 0 auto;
		}
		
		#searchForm input{
			margin: 3px;
		}
        </style>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

            <header>
                <%@ include file="../header.jsp" %>
                 <div id="main-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="logo">
                                
                                    <a href="${contextPath}/home"><img src="images/pool2.jpeg" title="withGoe" alt="Grill Website Template" ></a>
                               
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
                                        <li><a href="customer"><font size = 3>고객센터</font></a></li>
                                    </ul>
                                </div>
                                
                            </div>

                        </div>
                    </div>
                </div>
                 <div id="timeline-post">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2">
                        	<fieldset> 
							<legend> 
							 
				 			</legend> 
				 			<form action="./example2.php" method="GET"> 
				 				<p> 
				 					카풀 : 
				 					<select name="type"> 
				 						<option value="short">단기카풀</option> 
				 						<option value="long">장기카풀</option> 
				 						<option value="taxi">택시카풀</option> 
				 						<option value="school">고스쿨</option> 
									</select> 
				 				 
				 				
				 				<div>
								         성별 :
								    <input name="ss" id="ss" type="radio" checked="" value="1"><span>남자</span>
								    <input name="ss" id="ss" type="radio" value="1"><span>여자</span>
								    <input name="ss" id="ss" type="radio" value="1"><span>모두</span> <br>
								    <br>
				                                            인증 여부 :				 
								    <input name="sss" id="sss" type="checkbox" checked="" value="3"><span>휴대전화 인증</span>
								    <input name="sss" id="sss" type="checkbox" value="3"><span>페이스북 인증</span><br>
								    <br>
								         흡연 여부 :
								    <input name="ss" id="ss" type="radio" checked="" value="2"><span>흡연 가능</span>
								    <input name="ss" id="ss" type="radio" value="2"><span>흡연 불가</span> <br>
				 
								    
							</div>
							</p>
				 				<input type="submit" value="검색하기"/> 
				 			</form> 
				 		</fieldset>  
                        </div>
                        <div class="col-md-10">
                        <h3>카풀글쓰기</h3>
                        
                        
<form method="post" action="${contextPath}/carpool/write">
 	<input type="hidden" name="category" value="${category }">
	<input type="hidden" name="mno" value="${memberInfo.mno}">
	<table border="1" width="700px">
	<style type="text/css">
/*<![CDATA[*/
table.t_ex2 {background:#; width:90%; margin:0 auto; text-align:right}
.t_ex2 td, .t_ex2 th {border:1px solid #070C03;padding:10px}
.t_ex2 th {background:#FFE8E0; color:; text-align:center}
table.t_ex2 .c1 {text-align:center}
table.t_ex2 .c2 {text-align:left}
/*]]>*/
</style>




<fieldset>
	<article class="con_wrap reg_wrap">
		<div class="box_reg">
			<div class="reg_inner">
						<dl>
							<dt>
								<div>유형</div>
							</dt><!--
							--><dd class="box_type_wrap">
								<div class="type_inner">
									<input type="radio" name="tikle_type" value="1" required="required" class="hidden inp_lab_bg" id="getIn">
									<label for="getIn" class="bg_lab bg_get_in">타세요</label>
								</div><!--
								--><div class="type_inner">
									<input type="radio" name="tikle_type" value="2" required="required" class="hidden inp_lab_bg" id="getRide">
									<label for="getRide" class="bg_lab bg_get_ride">태워주세요</label>
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<div>목적</div>
							</dt><!--
							--><dd>
								<div class="ddOutOfVision" id="selCarRegPur_msddHolder" style="height: 0px; overflow: hidden; position: absolute;"><select name="tikle_purpose" title="카풀 목적 선택" required="required" id="selCarRegPur" tabindex="-1">
									<option value="2">출퇴근</option>
																</select></div><div class="dd ddcommon borderRadius" id="selCarRegPur_msdd" tabindex="0" style="width: 124px;"><div class="ddTitle borderRadiusTp"><span class="divider"></span><span class="ddArrow arrowoff"></span><span class="ddTitleText " id="selCarRegPur_title"><span class="ddlabel">출퇴근</span><span class="description" style="display: none;"></span></span></div><input id="selCarRegPur_titleText" type="text" autocomplete="off" class="text shadow borderRadius" style="display: none;"><div class="ddChild ddchild_ border shadow" id="selCarRegPur_child" style="z-index: 9999; position: absolute; visibility: visible; display: none; height: 31px;"><ul><li class="enabled _msddli_ selected"><span class="ddlabel">출퇴근</span><div class="clear"></div></li></ul></div></div>
							</dd>
						</dl>
						<dl>
							<dt>
								<div>
									<label for="inpStart">출발지</label>
								</div>
							</dt><!--
							--><dd>
								<div class="inp_wrap inp_place_wrap">
									<input type="text" name="addr_start" value="" title="동(읍, 면, 리) 건물 입력" size="20" maxlength="" required="required" autocomplete="off" placeholder="위치 입력 후 아래주소 중 하나를 선택해 주세요." class="inp_txt_comm inp_start j_addr_google" id="inpStart">
									<input type="hidden" name="addr_start_lat" value="" class="hideClass j_addr_lat">
									<input type="hidden" name="addr_start_lng" value="" class="hideClass j_addr_lng">
									<input type="hidden" name="addr_start_temp" value="" class="hideClass j_addr_temp">
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<div>
									<label for="inpArrival">도착지</label>
								</div>
							</dt><!--
							--><dd>
								<div class="inp_wrap inp_place_wrap">
									<input type="text" name="addr_end" value="" title="동(읍, 면, 리) 건물 입력" size="20" maxlength="" required="required" autocomplete="off" placeholder="위치 입력 후 아래주소 중 하나를 선택해 주세요." class="inp_txt_comm inp_arrival j_addr_google" id="inpArrival">
									<input type="hidden" name="addr_end_lat" value="" class="hideClass j_addr_lat">
									<input type="hidden" name="addr_end_lng" value="" class="hideClass j_addr_lng">
									<input type="hidden" name="addr_end_temp" value="" class="hideClass j_addr_temp">
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<div>
									<label>경유지</label>
								</div>
							</dt><!--
							--><dd class="temp_wrap">
								<!-- 경유지 loop -->
								<div class="box_via" data-add="1">
									<div class="inp_wrap inp_place_wrap">
										<input type="text" name="addr_add_1" value="" title="경유지 입력" size="20" maxlength="20" autocomplete="off" placeholder="경유지 입력" class="inp_txt_comm j_addr_google">
										<input type="hidden" name="addr_add_lat_1" value="" class="hideClass j_addr_lat">
										<input type="hidden" name="addr_add_lng_1" value="" class="hideClass j_addr_lng">
										<input type="hidden" name="addr_add_temp_1" value="" class="hideClass j_addr_temp">
									</div>
								</div>

								<div class="item_control hideClass" style="right: -97px;">
									<button type="button" title="경유지 항목 한개 추가" class="inp_btn_comm btn_add_via j_btn_add_via"></button><!--
									--><button type="button" title="경유지 항목 한개 빼기" class="inp_btn_comm btn_remove_via j_btn_remove_via"></button>
								</div>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</article>
</fieldset>
</table>
</form>
</div>
</div>
</div>
</div>
</header>



<%@ include file="../footer.jsp" %>

</body>
</html>