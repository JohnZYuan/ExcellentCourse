<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎来到精品课程网站！</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!--<link href='http://fonts.useso.com/css?family=Nixie+One' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>-->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
<!-- start-smoth-scrolling -->
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
<!-- start-smoth-scrolling -->
<style>
	html,body,a,p,h1,h2,h3,h4,h5,ul,li,textarea,form,input,#country{font-family:'微软雅黑'}
	#logo a span{padding-top:10px;}
	.banner-info span{padding-top:15px;}
	.banner-info p{padding-top:10px;}
	#us span{padding-top:10px;}
	#last span{padding-top:15px;}
	#container_f span{padding-top:10px;}
	#pp{text-indent:2em;}
	#welcome span{padding-top:5px;}
	#posts-grid-right-first p{font-size:10px;color:rgb(158, 158, 158);}
	#posts-grid-right-first a{color:#555555;}
	#posts-grid-right-second p{font-size:10px;color:rgb(158, 158, 158);}
	#posts-grid-right-second a{color:#555555;}
	#posts-grid-right-third p{font-size:10px;color:rgb(158, 158, 158);}
	#posts-grid-right-third a{color:#555555;}
</style>
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
										<li class="menu__item"><a href="ChapterServlet?method=getall" class="menu__link">主页</a></li>
										<li class="menu__item"><a href="ChapterServlet?method=getalltocourse" class="menu__link">课程</a></li> 
										<li class="menu__item menu__item--current"><a href="plan.jsp" class="menu__link">计划</a></li>
										<li class="menu__item"><a href="gallery.jsp" class="menu__link">手记</a></li> 
										<li class="menu__item"><a href="contact.jsp" class="menu__link">联系我们</a></li>
										<li class="menu__item"><a href="mine.jsp" class="menu__link"><%=session.getAttribute("username") %></a></li>
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
					<h3>设计阶段人生，并非立刻放弃眼前的工作，适度而具体的发展规划，才是你追逐的梦。</h3>
				</div>
			</div>
		</div>
	</div>
<!-- banner -->
<!-- events -->
	<div class="events">
		<div class="container">
			<h3 id="welcome" class="animated wow zoomIn" data-wow-delay=".5s">欢迎来到&nbsp;&nbsp;&nbsp;&nbsp;精品课程<span>计划 & 梦想</span></h3>
			<div class="events-grids">
				<div class="col-md-8 event-left">
					<div class="event-left1">
						<div class="col-xs-6 event-left1-left animated wow slideInLeft" data-wow-delay=".5s">
							<a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
							<div class="event-left1-left-pos">
								<ul>
									<li><a href="#"><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>5个阶段</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>200人喜欢</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>戴瑾</a></li>
								</ul>
							</div>
						</div>
						<div class="col-xs-6 event-left1-right animated wow slideInRight" data-wow-delay=".5s">
							<h4> 2 0 1 6 / 5 / 1 2 </h4>
							<h5><a href="single.html">戴瑾：科学的计划可以事半功倍</a></h5>
							<p>有计划的学习可以使我们加深理解和更好地掌握操作系统的基本概念、原理、技术和方法，培养对操作系统课程所学知识的综合运用能力。</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="event-left1">
						<div class="col-xs-6 event-left1-right event-left1-right-dummy animated wow slideInLeft" data-wow-delay=".5s">
							<h4> 2 0 1 6 / 5 / 5 </h4>
							<h5><a href="single.html">叶长青：做事没计划,盲人骑害马</a></h5>
							<p>计划性预习对提高实验课程的教学质量十分重要，可以使得学生的能力更上一个台阶，而且能进一步掌握Linux操作系统的系统结构、设计和实现的基本思路。</p>
						</div>
						<div class="col-xs-6 event-left1-left animated wow slideInRight" data-wow-delay=".5s">
							<a href="single.html"><img src="images/2.jpg" alt=" " class="img-responsive" /></a>
							<div class="event-left1-left-pos">
								<ul>
									<li><a href="#"><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>4个阶段</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>197人喜欢</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>叶长青</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="event-left1">
						<div class="col-xs-6 event-left1-left animated wow slideInLeft" data-wow-delay=".5s">
							<a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
							<div class="event-left1-left-pos">
								<ul>
									<li><a href="#"><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>6个阶段</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>210人喜欢</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>叶保留</a></li>
								</ul>
							</div>
						</div>
						<div class="col-xs-6 event-left1-right animated wow slideInRight" data-wow-delay=".5s">
							<h4> 2 0 1 6 / 4 / 2 3 </h4>
							<h5><a href="single.html">叶保留：凡事豫则立，不豫则废</a></h5>
							<p>通过科学计划学习能够让学生切身体验操作系统的设计原理与实现技术，锻炼和提高学生的实际应用能力和水平，有助于学生完成更多的实验内容。</p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="event-left1">
						<div class="col-xs-6 event-left1-right event-left1-right-dummy animated wow slideInLeft" data-wow-delay=".5s">
							<h4> 2 0 1 6 / 4 / 1 7 </h4>
							<h5><a href="single.html">任凯：计划的制定比计划本身更为重要</a></h5>
							<p>学生的计划性学习有利于学生进一步发挥主观能动性和创新能力，加强分析问题、解决问题能力的培养，从而达到把握操作系统整体的目的。</p>
						</div>
						<div class="col-xs-6 event-left1-left animated wow slideInRight" data-wow-delay=".5s">
							<a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
							<div class="event-left1-left-pos">
								<ul>
									<li><a href="#"><span class="glyphicon glyphicon-tags" aria-hidden="true"></span>5个阶段</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>190人喜欢</a></li>
									<li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>任凯</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<nav class="paging1 animated wow slideInUp" data-wow-delay=".5s">
					  <ul class="pagination paging">
						<li>
						  <a href="#" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
						  </a>
						</li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li>
						  <a href="#" aria-label="Next">
							<span aria-hidden="true">&raquo;</span>
						  </a>
						</li>
					  </ul>
					</nav>
				</div>
				<div class="col-md-4 event-right">
					<div class="event-right1">
					<div class="search1 animated wow slideInUp" data-wow-delay=".5s">
						<form>
							<input type="text" value="搜索其他视频..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '搜索其他视频...';}" required="">
							<input type="submit" value="搜索">
						</form>
					</div>
					<div class="categories animated wow slideInUp" data-wow-delay=".5s">
						<h3>目录</h3>
						<ul>
							<li><a href="single.html">戴瑾：科学的计划可以事半功倍</a></li>
							<li><a href="single.html">叶长青：做事没计划,盲人骑害马</a></li>
							<li><a href="single.html">叶保留：凡事豫则立，不豫则废</a></li>
							<li><a href="single.html">任凯：计划的制定比计划本身更为重要</a></li>
							<li><a href="single.html">唐巍：有计划地克服所有的困难</a></li>
							<li><a href="single.html">孔钦：审慎的人做事总是按步就班</a></li>
						</ul>
					</div>
					<div class="posts animated wow slideInUp" data-wow-delay=".5s">
						<h3>推荐视频</h3>
						<div class="posts-grids">
							<div class="posts-grid">
								<div class="posts-grid-left">
									<a href="single.html"><img src="images/10.jpg" alt=" " class="img-responsive" /></a>
								</div>
								<div class="posts-grid-right" id="posts-grid-right-first">
									<h4><a href="single.html">虚拟文件系统</a></h4>
									<p>1、理解虚拟文件系统的概念和原理</p>
									<p>2、理解虚拟文件系统对象及其数据结构</p>
									<p>3、通过编程实现一个虚拟文件系统</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="posts-grid">
								<div class="posts-grid-left">
									<a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
								</div>
								<div class="posts-grid-right" id="posts-grid-right-second">
									<h4><a href="single.html">事件驱动编程</a></h4>
									<p>1、了解curses库和curses库函数</p>
									<p>2、学会异步事件驱动编程</p>
									<p>3、编写一个视频动画游戏</p>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="posts-grid">
								<div class="posts-grid-left">
									<a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
								</div>
								<div class="posts-grid-right" id="posts-grid-right-third">
									<h4><a href="single.html">内核模块</a></h4>
									<p>1、了解内核模块的概念和特点</p>
									<p>2、学会如何编写一个内核模块</p>
									<p>3、掌握内核模块的实现机制</p>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
					<div class="tags tags1 animated wow slideInUp" data-wow-delay=".5s">
						<h3>关键词</h3>
						<ul>
							<li><a href="single.html">进程</a></li>
							<li><a href="single.html">通信</a></li>
							<li><a href="single.html">Sell程序</a></li>
							<li><a href="single.html">文件系统</a></li>
							<li><a href="single.html">存储管理</a></li>
							<li><a href="single.html">定时器</a></li>
							<li><a href="single.html">套接字</a></li>
							<li><a href="single.html">curses库</a></li>
							<li><a href="single.html">内核</a></li>
							<li><a href="single.html">中断</a></li>
							<li><a href="single.html">同步机制</a></li>
							<li><a href="single.html">进程调度</a></li>
							<li><a href="single.html">设备驱动程序</a></li>
							<li><a href="single.html">会话</a></li>
						</ul>
					</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
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