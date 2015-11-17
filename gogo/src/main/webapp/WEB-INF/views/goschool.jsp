<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<!-- 

//////////////////////고스쿨///////////////////////////

-->
    <head>
        <meta charset="utf-8">
        <title>goschool - Grill Template</title>
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
		  background-image: url(images/board.png);
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
                                <h2>goschool</h2>
                                <span>Home / <a href="goschool.html">고스쿨</a></span>
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


            <!-- <div id="goschool-post">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="product-heading">
                                <h2></h2>
                                <img src="" alt="" >
                            </div>
                        </div>
                    </div>
                     
                    <div class="row">
                        <div class="filters col-md-12 col-xs-12">
                            <ul id="filters" class="clearfix">
                                <li><span class="filter" data-filter="all">All</span></li>
                                <li><span class="filter" data-filter=".ginger">Ginger</span></li>
                                <li><span class="filter" data-filter=".pizza">Pizza</span></li>
                                <li><span class="filter" data-filter=".pasta">Pasta</span></li>
                                <li><span class="filter" data-filter=".drink">Drink</span></li>
                                <li><span class="filter" data-filter=".hamburger">Hamburger</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row" id="Container">
                        <div class="col-md-3 col-sm-6 mix portfolio-item Pizza">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product1.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product1_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Pizza</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Vege Pizza</a></h3>
                                    <span class="text-category">$16.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item ginger">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product2.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product2_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Ginger</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Ginger Tea</a></h3>
                                    <span class="text-category">$24.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item pizza">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product3.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product3_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Pizza</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Fresh Salad</a></h3>
                                    <span class="text-category">$12.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item pasta">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product4.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product4_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Pasta</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Healthy Herbal Tea</a></h3>
                                    <span class="text-category">$8.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item drink">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product5.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product5_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Drink</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Fruit Salad</a></h3>
                                    <span class="text-category">$12.50</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item hamburger">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product6.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product6_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Hamburger</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Spicy Hamburger</a></h3>
                                    <span class="text-category">$7.50</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item pizza">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product7.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product7_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Pizza</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Chocolate Cake</a></h3>
                                    <span class="text-category">$16.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item pasta">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product8.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product8_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Pasta</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Berry Taste</a></h3>
                                    <span class="text-category">$15.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item hamburger">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product3.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product3_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Hamburger</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Onion Grilled</a></h3>
                                    <span class="text-category">$16.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item drink">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product2.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product2_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Drink</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Another Ginger</a></h3>
                                    <span class="text-category">$18.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item ginger">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product1.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product1_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Ginger</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Mocha Coffee</a></h3>
                                    <span class="text-category">$16.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item pasta">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product6.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product6_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Pasta</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Dessert Time</a></h3>
                                    <span class="text-category">$16.00</span>
                                </div>
                            </div>          
                        </div>
                    </div>
                    <div class="pagination">
                        <div class="row">   
                            <div class="col-md-12">
                                <ul>
                                	<li><a href="#">Previous</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>    
                </div>
            </div> -->



			<%@ include file="footer.jsp" %>

    
        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>