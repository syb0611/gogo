<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<!-- 

/////////////////////////////////////////장 기 카 풀////////////////////////////////////////////////////

-->
	<style>
	@import url (http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	body{
	font-family : '맑은 고딕';
	}
		
		#heading {
		  background-image: url(images/slide1.jpg);
		  height: 140px;
		}
	
	</style>


    <head>
        <meta charset="utf-8">
        <title>long carpool</title>
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
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

            <header>
                <%@ include file="header.jsp" %>
                <div id="main-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="logo">
                                    <a href="${contextPath}/home"><img src="images/pool2.jpeg" title="Grill Template" alt="Grill Website Template" ></a>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="main-menu">
                                    <ul>
                                        <li><a href="dan"><font size = 3>단기카풀</font></a></li>
                                        
                                        <li><a href="jang"><font size = 3>장기카풀</font></a></li>
                                        
                                        <li><a href="goschool"><font size = 3>고 스쿨</font></a></li>
                                        
                                        <li><a href="taxi"><font size = 3>택시카풀</font></a></li>
                                        
                                        <li><a href="community"><font size = 3>커뮤니티</font></a></li>
                                        
                                        <li><a href="customer"><font size = 3>고객센터</font></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="search-box">  
                                    <form name="search_form" method="get" class="search_form">
                                        <input id="search" type="text" />
                                        <input type="submit" id="search-button" />
                                    </form>
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
                                <h2>Long-term carpool</h2>
                                <span>Home / <a href="jang.html">장기카풀</a></span>
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
                        <h3>목록</h3>
                            <p>줄줄줄~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</p>	
                           
                        </div>
                    </div>
                    
                    <div class="space50"></div>
                    
               
                </div>
            </div>


           <!-- 
            <div id="our-team">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-section">
                                <h2>Our Team</h2>
                                <img src="images/under-heading.png" alt="" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="authors">
                            <div class="col-md-3 col-sm-6">
                                <div class="team-thumb">
                                    <div class="author">
                                        <img src="images/author1.jpg" alt="Tracy - templatemo">
                                    </div>
                                    <div class="overlay">
                                        <div class="author-caption">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="author-details">
                                     <h2>Tracy</h2>
                                     <span>Designer</span>
                                 </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="team-thumb">
                                    <div class="author">
                                        <img src="images/author2.jpg" alt="Mary - templatemo">
                                    </div>
                                    <div class="overlay">
                                        <div class="author-caption">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="author-details">
                                     <h2>Mary</h2>
                                     <span>Developer</span>
                                 </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="team-thumb">
                                    <div class="author">
                                        <img src="images/author3.jpg" alt="Julia - templatemo">
                                    </div>
                                    <div class="overlay">
                                        <div class="author-caption">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="author-details">
                                     <h2>Julia</h2>
                                     <span>Director</span>
                                 </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="team-thumb">
                                    <div class="author">
                                        <img src="images/author4.jpg" alt="Linda - templatemo">
                                    </div>
                                    <div class="overlay">
                                        <div class="author-caption">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                            </ul>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="author-details">
                                     <h2>Linda</h2>
                                     <span>Manager</span>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
 			-->




			<!-- 
            <div id="testimonails">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-section">
                                <h2>Testimonials and Awards</h2>
                                <img src="images/under-heading.png" alt="" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="testimonails-slider">
                              <ul class="slides">
                                <li>
                                    <div class="testimonails-content">
                                        <p>Nam nec risus feugiat dui ultrices dignissim. Morbi ex purus, commodo a tristique eu, mollis a nisi. Pellentesque in enim sit amet tellus ornare fringilla eget eu arcu. Nam ultricies dolor et mi tempor, non pulvinar felis sollicitudin.</p>
                                        <h6>Jennifer - <a href="#">Chief Designer</a></h6>
                                    </div>
                                </li>
                                <li>
                                    <div class="testimonails-content">
                                        <p>Fusce fermentum libero fringilla odio pharetra malesuada. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam ultrices lectus quis consequat fringilla. Mauris non ex et purus sollicitudin.</p>
                                        <h6>Laureen - <a href="#">Marketing Executive</a></h6>
                                    </div> 
                                </li>
                                <li>
                                    <div class="testimonails-content">
                                        <p>Sed egestas tincidunt mollis. Suspendisse rhoncus vitae enim et faucibus. Ut dignissim nec arcu nec hendrerit sed arcu odio, sagittis vel diam in, malesuada malesuada risus. Aenean a sem leo. Nam ultricies dolor et mi tempor, non pulvinar felis sollicitudin.</p>
                                        <h6>Tanya - <a href="#">Creative Director</a></h6>
                                    </div>
                                </li>
                              </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			-->


            <%@ include file="footer.jsp" %>

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>