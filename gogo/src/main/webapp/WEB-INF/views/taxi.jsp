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
        <title>Contact - Grill Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/templatemo_style.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/flexslider.css">
        <link rel="stylesheet" href="css/testimonails-slider.css">
		<style>
		#heading {
		  background-image: url(images/slide1.jpg);
		  height: 140px;
		}
		</style>
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
			                            <li><a href="${contextPath}/carpool/list?category=dan"><font size = 3>단기카풀</font></a></li>
			                            <li><a href="${contextPath}/carpool/list?category=jang"><font size = 3>장기카풀</font></a></li> 
			                            <li><a href="${contextPath}/carpool/list?category=goschool"><font size = 3>고 스쿨</font></a></li>
			                            <li><a href="${contextPath}/carpool/list?category=taxi"><font size = 3>택시카풀</font></a></li>
			                            <li><a href="${contextPath}/board/main"><font size = 3>커뮤니티</font></a></li>
			                            <li><a href="${contextPath}/customer"><font size = 3>고객센터</font></a></li>
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
                                <h2>TAXI CARPOOL</h2>
                                <span>Home / <a href="taxi.html">TAXI</a></span>
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
							 빠른검색
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
            
            <!-- <div id="product-post">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-section">
                                <h2></h2>
                                <img src="" alt="" >
                            </div>
                        </div>
                    </div>
                    <div id="taxi">
                        <div class="container">
                            <div class="row">
                                <div class="product-item col-md-12">
                                    <div class="row">
                                        <div class="col-md-8">  
                                            <div class="message-form">
                                                <form action="#" method="post" class="send-message">
                                                    <div class="row">
                                                    <div class="name col-md-4">
                                                        <input type="text" name="name" id="name" placeholder="Name" />
                                                    </div>
                                                    <div class="email col-md-4">
                                                        <input type="text" name="email" id="email" placeholder="Email" />
                                                    </div>
                                                    <div class="subject col-md-4">
                                                        <input type="text" name="subject" id="subject" placeholder="Subject" />
                                                    </div>
                                                    </div>
                                                    <div class="row">        
                                                        <div class="text col-md-12">
                                                            <textarea name="text" placeholder="Message"></textarea>
                                                        </div>   
                                                    </div>                              
                                                    <div class="send">
                                                        <button type="submit">Send</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="info">
                                                <p>Duis at pharetra neque, ut condimentum, purus nisl pretium quam, in pulvinar velit massa id elit. </p>
                                                <ul>
                                                    <li><i class="fa fa-phone"></i>090-080-0760</li>
                                                    <li><i class="fa fa-globe"></i>456 New Dagon City Studio, Yankinn, Digital Estate</li>
                                                    <li><i class="fa fa-envelope"></i><a href="#">info@company.com</a></li>
                                                </ul>
                                            </div>
                                        </div>     
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-section">
                                <h2>Find Us On Map</h2>
                                <img src="images/under-heading.png" alt="" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div id="googleMap" style="height:340px;"></div>
                        </div>
                    </div>     
                </div>
            </div> -->


            <%@ include file="footer.jsp" %>

        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&amp;sensor=false">
        </script>
                
        <script>
		
		var map;
		
        function initialize()
        {
			var map_options = {
			  center: new google.maps.LatLng(16.8496189,96.1288854),
			  zoom: 15,
			  mapTypeId:google.maps.MapTypeId.ROADMAP
			  };
			var map = new google.maps.Map(document.getElementById("googleMap"), map_options);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
		google.maps.event.addDomListener(window, "resize", function() 
		{
		 	var center = map.getCenter();
		 	google.maps.event.trigger(map, "resize");
		 	map.setCenter(center); 
		});
        </script>

    </body>
</html>