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
<title>Blog - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">



<style>
#heading {
	background-image: url(/withgo/resources/images/톱니.png);
	 background-size : contain;
	height:150px;
	/* background-repeat :no-repeat; */
 	max-width : 100%;
/* 	position: fixed; 
    top: -50%; 
    left: -50%;
    width: 200%;        
    height: 200%; 
	 */
}


/* #slide { */
/* 	width: 100%; */
/* 	height:150px; */
/* } */

</style>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

	<header>
		<%@ include file="header.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="${contextPath}/home"><img src="images/roro.png" width="100px" height="50px"
								title="Grill Template" alt="withGo"></a>
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
<!-- 	<img src="/withgo/resources/images/slide2.jpg" id="slide"> -->
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-content">
						<h2 style="color:white; text-shadow:3px 3px 3px #c3cdce;">service center</h2>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="timeline-post">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<fieldset>
						<legend> </legend>

						<form action="./example2.php" method="GET" role="form">



							<div class="btn-group">
								<p></p>
								<p></p>
								<p></p>
								<p>조건</p>
								<button type="button" class="btn btn-default">모두</button>
								<button type="button" class="btn btn-default">타세요</button>
								<button type="button" class="btn btn-default">탈래요</button>
							</div>



							<div class="btn-group">
								<p></p>
								<p>성별</p>
								<button type="button" class="btn btn-default">모두</button>
								<button type="button" class="btn btn-default">남자</button>
								<button type="button" class="btn btn-default">여자</button>
							</div>


							<div class="btn-group">
								<p></p>
								<p>흡연</p>
								<button type="button" class="btn btn-default">모두</button>
								<button type="button" class="btn btn-default">가능</button>
								<button type="button" class="btn btn-default">불가</button>
							</div>
							<div class="btn-group">
								<p></p>
								<p>인증</p>
								<button type="button" class="btn btn-default">모두</button>
								<button type="button" class="btn btn-default">facebook</button>
								<button type="button" class="btn btn-default">휴대폰</button>
							</div>





						</form>
					</fieldset>
				</div>

				<div class="col-md-9">
					


				</div>

			</div>



		</div>

	</div>

	<div class="space50"></div>

	<!--
            <div id="product-post">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-section">
                                <h2>Single Blog Post</h2>
                                <img src="images/under-heading.png" alt="" />
                            </div>
                        </div>
                    </div>
                    <div id="single-blog" class="page-section first-section">
                        <div class="container">
                            <div class="row">
                                <div class="product-item col-md-12">
                                    <div class="row">
                                        <div class="col-md-8">  
                                                <div class="image">
                                                    <div class="image-post">
                                                        <img src="images/single-post.jpg" alt="">
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <div class="product-title">
                                                        <h3>ANOTHER MORNING BREAKFAST</h3>
                                                        <span class="subtitle">4 comments</span>
                                                    </div>
                                                    <p>Single blog post page is here for you. You can use this grill <a href="#">template</a> for any purpose. You do not need to give a credit to templatemo website for any reason. Praesent nec euismod ipsum, eget sodales enim. Duis in rhoncus lorem. Duis fermentum sem et libero viverra, in cursus velit dapibus. Donec dui ante, dapibus ut odio eget, vulputate blandit ante. Integer ullamcorper, augue id malesuada convallis, mauris risus cursus elit, eget scelerisque ipsum massa ac nisi. Donec venenatis vel arcu at pharetra. <a href="#">Aenean</a> a mauris augue. In egestas nisi turpis, et venenatis sapien ultrices eget. Nunc mattis nunc quis erat pretium tristique.<br><br>
                                                    Mauris suscipit metus ullamcorper enim fringilla sagittis. Duis dui leo, mattis ac rhoncus eget, interdum a ipsum. Duis rutrum, justo et egestas feugiat, dui velit egestas velit, feugiat efficitur ante mauris eu ipsum. Aliquam quis sem vitae mi fringilla ornare eu quis orci. Fusce tellus sem, gravida a nunc eget, vehicula <a href="#">commodo</a> sapien.</p>
                                                </div>
                                                <div class="divide-line">
                                                <img src="images/div-line.png" alt="" />
                                                </div>
                                                <div class="comments-title">
                                                    <div class="comment-section">
                                                        <h4>4 comments</h4>
                                                    </div>
                                                </div>
                                                <div class="all-comments">
                                                    <div class="view-comments">
                                                        <div class="comments">
                                                            <div class="author-thumb">
                                                                <img src="images/author-comment1.jpg" alt="">
                                                            </div>
                                                            <div class="comment-body">
                                                                <h6>Cindy Venna</h6>
                                                                <span class="date">11 Sep 2084 - 12:25 PM</span>
                                                                <a href="#" class="hidden-xs">Reply</a>
                                                                <p>Nulla ac elementum nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam erat volutpat. Donec rhoncus quam sit amet sodales finibus. Donec pellentesque non massa eu maximus. In non tellus id sem tempor gravida.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="replyed-form">
                                                        <div class="comments replyed">
                                                            <div class="author-thumb">
                                                                <img src="images/author-comment2.jpg" alt="">
                                                            </div>
                                                            <div class="comment-body">
                                                                <h6>George Tanya</h6>
                                                                <span class="date">12 Sep 2084 - 8:48 AM</span>
                                                                <a href="#" class="hidden-xs">Reply</a>
                                                                <p>In pulvinar venenatis odio. Sed in ex sit amet ipsum posuere mollis. Nam nec risus feugiat dui ultrices dignissim. Morbi ex purus, commodo a tristique eu, mollis a nisi. Pellentesque in enim sit amet tellus ornare fringilla eget eu arcu.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="view-comments">
                                                        <div class="comments">
                                                            <div class="author-thumb">
                                                                <img src="images/author-comment3.jpg" alt="">
                                                            </div>
                                                            <div class="comment-body">
                                                                <h6>Brooker Aung</h6>
                                                                <span class="date">12 Sep 2084 - 10:40 AM</span>
                                                                <a href="#" class="hidden-xs">Reply</a>
                                                                <p>Duis rutrum, libero eu blandit gravida, massa orci cursus nisi, vehicula facilisis purus neque dignissim urna. Etiam molestie elementum elit at tempus. Suspendisse quis consectetur nisi, vitae consequat sem. In et quam id libero venenatis venenatis. Morbi vitae justo vulputate, auctor augue eu, pulvinar augue.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="view-comments">
                                                        <div class="comments">
                                                            <div class="author-thumb">
                                                                <img src="images/author-comment4.jpg" alt="">
                                                            </div>
                                                            <div class="comment-body">
                                                                <h6>Crystal Mya</h6>
                                                                <span class="date">14 Sep 2084 - 05:16 PM</span>
                                                                <a href="#" class="hidden-xs">Reply</a>
                                                                <p>Suspendisse vitae maximus nisl, non finibus ante. Suspendisse neque nisl, luctus ullamcorper erat a, fermentum mollis nibh. Aliquam vulputate augue vel metus suscipit euismod. Quisque id purus massa. Sed condimentum facilisis eros, ultrices tincidunt libero facilisis eget. Integer eget cursus velit.</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="divide-line">
                                                <img src="images/div-line.png" alt="" />
                                                </div>
                                            <div class="leave-comment">
                                                <div class="leave-one">
                                                    <h4>Leave a comment</h4>
                                                </div>
                                            </div>
                                            <div class="leave-form">
                                                <form action="#" method="post" class="leave-comment">
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
                                                            <textarea name="text" placeholder="Comment"></textarea>
                                                        </div>   
                                                    </div>                              
                                                    <div class="send">
                                                        <button type="submit">Send</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-md-offset-1">
                                            <div class="side-bar">
                                                <div class="news-letters">
                                                    <h4>Archives</h4>
                                                    <div class="archives-list">
                                                        <ul>
                                                            <li><a href="#"><i class="fa fa-angle-right"></i>July (12)</a></li>
                                                            <li><a href="#"><i class="fa fa-angle-right"></i>August (18)</a></li>
                                                            <li><a href="#"><i class="fa fa-angle-right"></i>September (72)</a></li>
                                                            <li><a href="#"><i class="fa fa-angle-right"></i>October (63)</a></li>
                                                            <li><a href="#"><i class="fa fa-angle-right"></i>November (48))</a></li>
                                                            <li><a href="#"><i class="fa fa-angle-right"></i>December (24)</a></li>
                                                        </ul>
                                                    </div>        
                                                </div>
                                                <div class="recent-post">
                                                    <h4>Recent Posts</h4>
                                                    <div class="posts">
                                                        <div class="recent-post">
                                                            <div class="recent-post-thumb">
                                                                <img src="images/recent-post1.jpg" alt="">
                                                            </div>
                                                            <div class="recent-post-info">
                                                                <h6><a href="#">Vestibulum molestie odio sit amet</a></h6>
                                                                <span>24 Sep 2084</span>
                                                            </div>
                                                        </div>
                                                        <div class="recent-post">
                                                            <div class="recent-post-thumb">
                                                                <img src="images/recent-post2.jpg" alt="">
                                                            </div>
                                                            <div class="recent-post-info">
                                                                <h6><a href="#">Vivamus mattis quam eget urna tincidunt</a></h6>
                                                                <span>22 Sep 2084</span>
                                                            </div>
                                                        </div> 
                                                        <div class="recent-post">
                                                            <div class="recent-post-thumb">
                                                                <img src="images/recent-post3.jpg" alt="">
                                                            </div>
                                                            <div class="recent-post-info">
                                                                <h6><a href="#">Curabitur in nunc eget neque posuere</a></h6>
                                                                <span>21 Sep 2084</span>
                                                            </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                                <div class="advertisement">
                                                    <h4>Flickr news</h4>
                                                    <div class="flickr-images">
                                                        <div class="row">
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image1.jpg" alt="">
                                                            </div>
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image2.jpg" alt="">
                                                            </div>
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image3.jpg" alt="">
                                                            </div>
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image4.jpg" alt="">
                                                            </div>
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image1.jpg" alt="">
                                                            </div>
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image2.jpg" alt="">
                                                            </div>
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image3.jpg" alt="">
                                                            </div>
                                                            <div class="col-md-4 col-sm-2 col-xs-3">
                                                                <img src="images/flickr-image4.jpg" alt="">
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
                    </div>     
                </div>
            </div>
 			-->





	<%@ include file="footer.jsp"%>

</body>
</html>