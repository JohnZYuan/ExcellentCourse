<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<script type="application/x-javascript"> 
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); }
</script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>new WOW().init();</script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script defer src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
	$(window).load(function(){
		$('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
				$('body').removeClass('loading');
			}
		});
	});
</script>
<!--<link href='http://fonts.useso.com/css?family=Nixie+One' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<style>
	html,body,a,p,h1,h2,h3,h4,h5,ul,li,textarea,form,input,#country{
		font-family:'微软雅黑'
	}
	#logo a span{padding-top:10px;}
	.banner-info span{padding-top:15px;}
	.banner-info p{padding-top:10px;}
	#us span{padding-top:10px;}
	#last span{padding-top:15px;}
	#containerf span{padding-top:5px;}
</style>
<title>欢迎来到精品课程网站！</title>
</head>
<body>
	<!-- banner -->
	<div class="banner1">
		<div class="container">
			<div class="banner-main">
				<div class="banner-main1">
					<div class="logo animated wow slideInLeft" data-wow-delay=".5s">
						<h1 id="logo"><a href="index.jsp">精品课程<span>实用操作系统教程</span></a></h1>
					</div>
					<div class="search animated wow slideInLeft" data-wow-delay=".7s">
						<form>
							<input type="text" value="请输入关键词..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入关键词...';}" required="">
							<input type="submit" value=" " style="height:41px;">
							<div class="clearfix"> </div>
						</form>
					</div>
					<div class="header-right">
						<div class="shy-menu">
							<a class="shy-menu-hamburger">
								<span class="layer top"></span>
								<span class="layer mid"></span>
								<span class="layer btm"></span>
							</a>
							<div class="shy-menu-panel">
								<nav class="menu menu--horatio">
									<ul class="menu__list">
										<li class="menu__item"><a href="index.jsp" class="menu__link">主页</a></li>
										<li class="menu__item"><a href="course.jsp" class="menu__link">课程</a></li> 
										<li class="menu__item"><a href="plan.jsp" class="menu__link">计划</a></li>
										<li class="menu__item"><a href="gallery.jsp" class="menu__link">手记</a></li> 
										<li class="menu__item"><a href="contact.jsp" class="menu__link">联系我们</a></li>
										<li class="menu__item menu__item--current"><a href="mine.jsp" class="menu__link"><%=session.getAttribute("username")%></a></li>
									</ul>
								</nav>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="menu open">
						  <a class="hamburger">
							<span class="layer top"></span>
							<span class="layer mid"></span>
							<span class="layer btm"></span>
						  </a>
						</div>
						<script>
							$(function() {
								
								initDropDowns($("div.shy-menu"));

							});

							function initDropDowns(allMenus) {

								allMenus.children(".shy-menu-hamburger").on("click", function() {
									
									var thisTrigger = jQuery(this),
										thisMenu = thisTrigger.parent(),
										thisPanel = thisTrigger.next();

									if (thisMenu.hasClass("is-open")) {

										thisMenu.removeClass("is-open");

									} else {			
										
										allMenus.removeClass("is-open");	
										thisMenu.addClass("is-open");
										thisPanel.on("click", function(e) {
											e.stopPropagation();
										});
									}
									
									return false;
								});
							}
						</script>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="banner1-info animated wow zoomIn" data-wow-delay=".5s">
					<h3>学习这件事不在于有没有人教你，最重要的是在于你自己有没有觉悟和信心。</h3>
				</div>
			</div>
		</div>
	</div>
<!-- banner -->
	<br />
	<div>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;
   	<param name="allowScriptAccess" value="always" />
   	<embed pluginspage="http://www.macromedia.com/go/getflashplayer" src="http://video.sina.com.cn/share/video/247477903.swf" type="application/x-shockwave-flash" name="ssss" allowFullScreen="true" allowScriptAccess="always" width="700" height="400" />
   </div>
   <br />
   <div class="grid_3 grid_5 animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
					<div class="alert alert-success" role="alert">
						<a href="http://localhost:8888/ExcellentCourse/servlet/ListFileServlet"><strong>1、下载相关PPT</strong></a>
					</div>
					<div class="alert alert-success" role="alert">
						<strong>2、上传作业</strong>（作业格式：学号-姓名-日期 . txt）<br /><br />
						<!--<form action="doUpload2.jsp" method="post" enctype="multipart/form-data">
							<input type="file" name="upfile" size="50"><br />
							<input type="submit" value="提交">
						</form>-->
						<form action="${pageContext.request.contextPath}/servlet/UploadHandleServlet" enctype="multipart/form-data" method="post">
			        上传用户：<input type="text" name="username"><br /><br />
			        上传文件：<input type="file" name="file1"><br />
		        <input type="submit" value="提交">
    		</form>
					</div>
	</div>
   <!-- //testimonials -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".5s">
				<h2 id="last"><a href="index.html">精品课程<span>实用操作系统教程</span></a></h2>
				<p>WWWhiteIII的小组成员希望南京大学金陵学院所有热爱学习的同学能更加便捷的获取学习资源，
				充分利用课余时间学习或预习实用操作系统的相关知识。多年以后，圈子里一批技术牛说：我在精品
				课程学习过，这就够了。</p>
				<ul class="social">
					<li>分享至:</li>
					<li><a class="social-linkedin" href="#">
						<i></i>
						<div class="tooltip"><span>Facebook</span></div>
						</a></li>
					<li><a class="social-twitter" href="#">
						<i></i>
						<div class="tooltip"><span>Twitter</span></div>
						</a></li>
					<li><a class="social-google" href="#">
						<i></i>
						<div class="tooltip"><span>Google+</span></div>
						</a></li>
					<li><a class="social-facebook" href="#">
						<i></i>
						<div class="tooltip"><span>Pinterest</span></div>
						</a></li>
					<li><a class="social-instagram" href="#">
						<i></i>
						<div class="tooltip"><span>Instagram</span></div>
						</a></li>
				</ul>
				<div class="newsletter">
					<form>
						<input type="email" value="电子邮箱..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电子邮箱...';}" required="">
						<input type="submit" value="分享" style="height:41px;">
					</form>
				</div>
			</div>
			<div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".6s">
				<h3>更多课程</h3>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/11.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/12.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="footer-grid-left">
					<a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-4 footer-grid animated wow slideInLeft" data-wow-delay=".7s">
				<h3>联系信息</h3>
				<ul class="footer-address">
					<li><span class="glyphicon glyphicon-home" aria-hidden="true"></span>南京大学金陵学院计算机与工程学院13软件工程</li>
					<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="mailto:info@example.com">499274384@qq.com</a></li>
					<li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>15651978702</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="footer-copy">
		<div class="container">
			<p class="animated wow slideInLeft" data-wow-delay=".5s">Copyright &copy; 2017.Website name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">13软件工程第一小组</a></p>
		</div>
	</div>
<!-- //footer -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>