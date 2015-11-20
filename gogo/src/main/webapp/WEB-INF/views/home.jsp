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
		
		table,tr,td {border:1px solid #000000}
        </style>
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
                                        <li><a href="${contextPath}/customer"><font size = 3>고객센터</font></a></li>
                                    </ul>
                                </div>
                                
                            </div>

                        </div>
                    </div>
                </div>
            </header>
            

            <div id="slider"  style = "background-image:url('images/car6.jpg');width:100%; height:700px;">
                <form method="post" action="" id="searchForm">
							
							
							
							<div class="row">
								<div class="col-sm-4 col-sm-offset-4" id="formDiv">
								
									<h1 class="tx" >Welcome!</h1>
									<br>
									<input type="text" class="form-control" name="departure" placeholder="출발지">
									<input type="text" class="form-control" name="arrival" placeholder="도착지">
									<input type="button" class="btn btn-default form-control" value="검색">
								</div>
							</div>
				</form>
			 </div>
 
 <%@ include file="footer.jsp" %>		

</body>
</html>