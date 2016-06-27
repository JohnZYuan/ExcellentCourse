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
<link rel="stylesheet" href="css/swipebox.css">
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
<script type="text/javascript">
	function aa(){
		jQuery.ajax({
            type: "get",
            url: "/ExcellentCourse/ChapterServlet",
            data: {
                'method': "test",
            },
            async: false,
            success: function(data) {
            }
        });
	}
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
	#container-f span{padding-top:5px;}
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
										<li class="menu__item"><a href="plan.jsp" class="menu__link">计划</a></li>
										<li class="menu__item menu__item--current"><a href="gallery.jsp" class="menu__link">手记</a></li> 
										<li class="menu__item"><a href="contact.jsp" class="menu__link">联系我们</a></li>
										<li class="menu__item"><a href="mine.jsp" class="menu__link"></a></li>
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
					<h3>想记录学习、工作心得，或是分享优秀的技术和经验？快来创建文章吧。</h3>
				</div>
			</div>
		</div>
	</div>
<!-- banner -->
<!-- single -->
	<div class="single">
		<div class="container">
			<div class="col-md-8 single-left">
				<div class="single-left1">
					<img src="images/22.jpg" alt=" " class="img-responsive animated wow slideInUp" data-wow-delay=".5s" />
					<h3 class="animated wow slideInLeft" data-wow-delay=".5s">综合实验：一个小型远程访问FTP服务系统</h3>
					<ul class="animated wow slideInUp" data-wow-delay=".5s">
						<li><span class="glyphicon glyphicon-user" aria-hidden="true"></span><a href="#">杨曙宁</a></li>
						<li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="#">FTP服务器</a></li>
						<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="#">联系作者</a></li>
					</ul>
					<p class="animated wow slideInUp" data-wow-delay=".5s" style="text-indent:2em">客户/服务器计算模型是一种基于局域网或广域网的分布式系统，
					提供数据和服务的计算机称为服务器，向服务器提出数据请求和服务请求的计算机成为客户，这样的模型就是客户/服务器计算模型。
					该模型的思想是：把操作系统看作是一组协议进程，用户称作客户，协作进程为服务器，客户和服务器通常运行相同的网络操作系统，
					一台计算机可运行一个客户进程，运行多个客户进程，也可多个服务器进程或是两者的结合。<p>
				</div>
				<div class="single-left2">
					<div class="col-md-6 single-left2-left animated wow slideInLeft" data-wow-delay=".5s">
						<ul>
							<li><a href="#">客户/服务器计算模型</a></li>
							<li><a href="#">中间件</a></li>
							<li><a href="#">FTP技术简介</a></li>
							<li><a href="#">综合实验功能设计</a></li>
							<li><a href="#">综合实验解决方案</a></li>
							<li><a href="#">服务器端接受客户请求的套接字结构</a></li>
						</ul>
					</div>
					<div class="col-md-6 single-left2-left animated wow slideInLeft" data-wow-delay=".6s">
						<ul>
							<li><a href="#">客户端发送套接字连接请求的核心代码</a></li>
							<li><a href="#">与线程处理相关的核心函数</a></li>
							<li><a href="#">接受客户请求与实现客户会话的线程</a></li>
							<li><a href="#">文件管理</a></li>
							<li><a href="#">套接字通信</a></li>
							<li><a href="#">综合实验程序框架</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="admin animated wow slideInUp" data-wow-delay=".5s">
					<p>通过这个实验我们可以加深对进程、线程、进程互斥、同步、通信、文件系统及网络编程等概念的理解，
					能综合运用所学知识并用来分析和验证有关理论问题和解决实际问题。此外，还有利于我们理解基于客户/
					服务器计算模型，掌握支持并发用户访问的分布式软件系统的设计方法及核心技术。</p>
					<a href="#"><i>by 杨曙宁</i></a>
				</div>
				<div class="comments">
					<h3 class="animated wow slideInUp" data-wow-delay=".5s">最近评价</h3>
					<div class="comments-grids">
						<div class="comments-grid animated wow slideInUp" data-wow-delay=".5s">
							<div class="comments-grid-left">
								<img src="images/3.png" alt=" " class="img-responsive" />
							</div>
							<div class="comments-grid-right">
								<h4><a href="#">邵金金</a></h4>
								<ul>
									<li>2016 / 5 / 12<i>|</i></li>
									<li><a href="#">回复</a></li>
								</ul>
								<p>杨曙宁的笔记真的太好了，给予了我许多的帮助，正好最近我们班也在做这个FTP
								实验，非常感谢！！可是我有一个地方不太明白，就是客户/服务器计算模型究竟是什么？</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="comments-grid animated wow slideInUp" data-wow-delay=".6s">
							<div class="comments-grid-left">
								<img src="images/4.png" alt=" " class="img-responsive" />
							</div>
							<div class="comments-grid-right">
								<h4><a href="#">张洪迪</a></h4>
								<ul>
									<li>2016 / 5 / 1<i>|</i></li>
									<li><a href="#">回复</a></li>
								</ul>
								<p>我发现我之前理解错误了，操作系统本身没有线程，只有进程。在程序中，我需要分时间片来执行我的任务，
								就叫做线程。不同程序，通过操作系统分配时间片来执行，就叫做进程。操作系统的进程，是由操作系统根据不
								同的策略来进行时间片的分配，一般不用去管。</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="comments-grid animated wow slideInUp" data-wow-delay=".7s">
							<div class="comments-grid-left">
								<img src="images/3.png" alt=" " class="img-responsive" />
							</div>
							<div class="comments-grid-right">
								<h4><a href="#">邹昕</a></h4>
								<ul>
									<li>2016 / 4 / 29<i>|</i></li>
									<li><a href="#">回复</a></li>
								</ul>
								<p>用户及线程的调度算法和调度过程全部由用户自行选择和确定，与操作系统内核无关。对JVM的调度器和调度没有了解~
								看来，搂主对操作线程挺熟悉。据个例子先？</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="comments-grid animated wow slideInUp" data-wow-delay=".8s">
							<div class="comments-grid-left">
								<img src="images/5.png" alt=" " class="img-responsive" />
							</div>
							<div class="comments-grid-right">
								<h4><a href="#">张亚飞</a></h4>
								<ul>
									<li>2016 / 4 / 20<i>|</i></li>
									<li><a href="#">回复</a></li>
								</ul>
								<p>就上面的多对一模式，线程由JVM进行调度；而一对一模式，线程调度全部由操作系统完成；多对多模式则是需要
								JVM和操作系统共同完成。</p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<div class="leave-coment-form">
					<h3 class="animated wow slideInUp" data-wow-delay=".5s">发表评论</h3>
					<form class="animated wow slideInUp" data-wow-delay=".5s">
						<input type="text" value="姓名 " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}" required="">
						<input type="email" value="电子邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电子邮箱';}" required="">
						<textarea type="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '你的评论...';}" required="">你的评论...</textarea>
						<input type="submit" value="提交评论" >
					</form>
				</div>
			</div>
			<div class="col-md-4 event-right">
				<div class="event-right1">
				<div class="search1 animated wow slideInUp" data-wow-delay=".5s">
					<form>
						<input type="submit" value="创建我的手记">
					</form>
				</div>
				<div class="categories animated wow slideInUp" data-wow-delay=".5s">
					<h3>目录</h3>
					<ul>
						<li><a href="single.html">向proc文件系统中添加可读写文件</a></li>
						<li><a href="single.html">调度算法的设计与实现</a></li>
						<li><a href="single.html">内核模块机制的实现</a></li>
						<li><a href="single.html">利用多线程实现弹球游戏</a></li>
						<li><a href="single.html">模拟实现一个Linux文件系统</a></li>
						<li><a href="single.html">模拟实现动态分区存储管理</a></li>
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
					<h3>Recent Tags</h3>
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
						<li><a href="single.html">设备驱动程序</a></li>							<li><a href="single.html">会话</a></li>
					</ul>
				</div>
				</div>
			</div>
			<div class="clearfix"> </div>
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