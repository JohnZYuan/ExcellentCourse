<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="entity.Chapter,java.util.List"%>
    
<%
	List<Chapter> chapters = (List<Chapter>)request.getAttribute("getChapter");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<body>
	<!--<h1>,您好！欢迎登陆留言板。我是杨曙宁~</h1>-->
	<div class="banner">
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
										<li class="menu__item menu__item--current"><a class="menu__link">主页</a></li>
										<li class="menu__item"><a href="ChapterServlet?method=getalltocourse" class="menu__link">课程</a></li> 
										<li class="menu__item"><a href="plan.jsp" class="menu__link">计划</a></li>
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
				<div class="flexslider-info animated wow zoomIn" data-wow-delay=".5s">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<div class="banner-info">
										<h4>学和会之间你只差一次实战</h4>
										<p>精品课程<span>学生的梦工厂</span></p>
									</div>
								</li>
								<li>
									<div class="banner-info">
										<h4>大胆说出来</h4>
										<p>精品课程<span>定制你的专属编程</span></p>
									</div>
								</li>
								<li>
									<div class="banner-info">
										<h4>了解更多</h4>
										<p>你的指尖<span>有改变世界的力量</span></p>
									</div>
								</li>
							</ul>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
<!-- banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<h3 id="containerf" class="animated wow zoomIn" data-wow-delay=".5s">欢迎来到&nbsp;&nbsp;&nbsp;&nbsp;精品课程<span>实用操作系统教程</span></h3>
			<div class="banner-bottom-grids">
				<div class="banner-bottom-grid">
					<div class="col-md-4 banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
						<img src="images/1.jpg" alt=" " class="img-responsive" />
						<div class="banner-bottom-grid-left-pos">
							<div class="banner-bottom-grid-left-pos1">
								<h4>我们在做什么？<span>做更多实用的课程</span>做更好体验的产品</h4>
							</div>
						</div>
					</div>
					<div class="col-md-8 banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
						<h4>为什么做精品课程---实用操作系统教程网站？</h4>
						<p>WWWhiteIII的小组成员希望南京大学金陵学院所有热爱学习的同学能更加便捷地获取学习资源，充分利用课余时间学习或预习实用操作系统的相关知识。多年以后，圈子里一批技术牛说：我在精品课程学习过，这就够了。</p>
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
						  <div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingOne">
							  <h4 class="panel-title asd">
								<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
								  <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span><i class="glyphicon glyphicon-menu-up" aria-hidden="true"></i><label class="horse1">精心制作的视频课程</label>
								</a>
							  </h4>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							  <div class="panel-body panel_text">
								<div class="scrollbar" id="style-2">
									所有课程均为WWWhiteIII团队在精心设计和充分准备后推出，是依托互联网的新型教育形式，
									这里有才华卓越，人品优秀，学识渊博的老师们，相信在老师的管理下一定能完美地做好
									在线课堂的点点滴滴，对于学习相当紧张的同学而言，线上课堂无疑是最佳选择，再搭配
									灵活可选的现场教学，课后的线上指导，我们坚信，这里将成为同学们繁重课业下的一个温馨优雅的花园！
								</div>
							  </div>
							</div>
						  </div>
						  <div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingTwo">
							  <h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
								  <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span><i class="glyphicon glyphicon-menu-up" aria-hidden="true"></i><label class="horse2">丰富优渥的学习手记</label>
								</a>
							  </h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							   <div class="panel-body panel_text">
							  		想记录学习、工作心得，分享优秀的技术经验？来创建文章吧！
							   </div>
							</div>
						  </div>
						  <div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headingThree">
							  <h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								  <span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span><i class="glyphicon glyphicon-menu-up" aria-hidden="true"></i><label class="horse3">循序渐进的学习计划</label>
								</a>
							  </h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							   <div class="panel-body panel_text">
							      	循序渐近的学习计划，专治各种学习编程迷茫症。有目标有路径,一切尽在掌握中。
							   </div>
							</div>
						  </div>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- services -->
	<div class="services">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s"><span>实用操作系统教程</span></h3>
			<div class="services-grids">
				<div class="col-md-3 services-grid animated wow slideInLeft" data-wow-delay=".5s">
					<div class="services-grid1">
						<div class="item item-type-zoom">
							<a class="item-hover" href="single.html">
								<div class="item-info">
									<div class="headline">
										主讲人：戴瑾
										<div class="line"></div>
										<div class="date">2016-5-12</div>			
									</div>
								</div>
								<div class="mask"></div>
							</a>
							<div class="item-img"><img src="images/2.jpg" alt=" " class="img-responsive" /></div>
						</div>	
					</div>
					<h4><a href="single.html"><%=chapters.get(0).getName()%></a></h4>
					<p>学习和动手安装Linux发行版本Ubuntu 8.0.4，掌握操作系统的系统配置，了解建立操作系统应用环境的过程</p>
					<div class="more m1">
						<a href="single.html" class="hvr-sweep-to-top">了解详情...</a>
					</div>
				</div>
				<div class="col-md-3 services-grid animated wow slideInLeft" data-wow-delay=".6s">
					<div class="services-grid1">
						<div class="item item-type-zoom">
							<a class="item-hover" href="single.html">
								<div class="item-info">
									<div class="headline">
										主讲人：叶长青
										<div class="line"></div>
										<div class="date">2016-4-2</div>			
									</div>
								</div>
								<div class="mask"></div>
							</a>
							<div class="item-img"><img src="images/3.jpg" alt=" " class="img-responsive" /></div>
						</div>	
					</div>
					<h4><a href="single.html"><%=chapters.get(1).getName()%></a></h4>
					<p>理解信号和管道的概念及实现进程间通信的原理，掌握信号通信机制，学会通过信号实现进程间的通信</p>
					<div class="more m1">
						<a href="single.html" class="hvr-sweep-to-top">了解详情...</a>
					</div>
				</div>
				<div class="col-md-3 services-grid animated wow slideInLeft" data-wow-delay=".7s">
					<div class="services-grid1">
						<div class="item item-type-zoom">
							<a class="item-hover" href="single.html">
								<div class="item-info">
									<div class="headline">
										主讲人：戴瑾
										<div class="line"></div>
										<div class="date">2016-4-25</div>			
									</div>
								</div>
								<div class="mask"></div>
							</a>
							<div class="item-img"><img src="images/4.jpg" alt=" " class="img-responsive" /></div>
						</div>	
					</div>
					<h4><a href="single.html"><%=chapters.get(2).getName()%></a></h4>
					<p>理解System V的进程间通信机制，掌握和使用共享主存实现进程间的通信，掌握和使用消息队列实现进程间的通信</p>
					<div class="more m1">
						<a href="single.html" class="hvr-sweep-to-top">了解详情...</a>
					</div>
				</div>
				<div class="col-md-3 services-grid animated wow slideInLeft" data-wow-delay=".8s">
					<div class="services-grid1">
						<div class="item item-type-zoom">
							<a class="item-hover" href="single.html">
								<div class="item-info">
									<div class="headline">
										主讲人：叶保留
										<div class="line"></div>
										<div class="date">2016-5-14</div>			
									</div>
								</div>
								<div class="mask"></div>
							</a>
							<div class="item-img"><img src="images/5.jpg" alt=" " class="img-responsive" /></div>
						</div>	
					</div>
					<h4><a href="single.html"><%=chapters.get(3).getName()%></a></h4>
					<p>了解Shell在操作系统中的作用，理解I/O重定向和管道，学会编写简单的Shell脚本程序和运行Shell命令文件</p>
					<div class="more m1">
						<a href="single.html" class="hvr-sweep-to-top">了解详情...</a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //services -->
<!-- latest-posts -->
	<div class="latest-posts">
		<div class="container">
			<h3 id="us" class="animated wow zoomIn" data-wow-delay=".5s">WWWhiteIII团队<span>关于我们</span></h3>
			<div class="latest-posts-grids" id="aboutus">
				<div class="col-md-4 latest-posts-grid animated wow slideInLeft" data-wow-delay=".5s">
					<div class="latest-posts-grid-left">
						<ul class="post-date">
							<li>22 <span style="font-size:16px;">杨曙宁</span></li>
						</ul>
						<ul class="post-date1">
							<li><a href="single.html"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i></a></li>
						</ul>
						<ul class="post-date2">
							<li><a href="single.html"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="latest-posts-grid-right">
						<a href="single.html"><img src="images/6.jpg" alt=" " class="img-responsive" /></a>
						<h4><a href="single.html">Web前端开发</a></h4>
						<ul>	
							<li>1994-08-29 <i>|</i></li>
							<li><a href="single.html">中国-江苏-徐州</a></li>
						</ul>
						<p>“专注做好IT技能教育的精品课程，符合互联网发展潮流接地气儿的精品课程。我们免费，我们只教有用的，我们专心做教育。”</p>
						<div class="more">
							<a href="single.html" class="hvr-sweep-to-top">了解更多...</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 latest-posts-grid animated wow slideInLeft" data-wow-delay=".6s">
					<div class="latest-posts-grid-left">
						<ul class="post-date">
							<li>22 <span style="font-size:16px;">袁振</span></li>
						</ul>
						<ul class="post-date1">
							<li><a href="single.html"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i></a></li>
						</ul>
						<ul class="post-date2">
							<li><a href="single.html"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="latest-posts-grid-right">
						<a href="single.html"><img src="images/7.jpg" alt=" " class="img-responsive" /></a>
						<h4><a href="single.html">后台开发</a></h4>
						<ul>	
							<li>1994-08-29 <i>|</i></li>
							<li><a href="single.html">中国-山东-济南</a></li>
						</ul>
						<p>“专注做好IT技能教育的精品课程，符合互联网发展潮流接地气儿的精品课程。我们免费，我们只教有用的，我们专心做教育。”</p>
						<div class="more">
							<a href="single.html" class="hvr-sweep-to-top">了解更多...</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 latest-posts-grid animated wow slideInLeft" data-wow-delay=".7s">
					<div class="latest-posts-grid-left">
						<ul class="post-date">
							<li>22 <span style="font-size:16px;">刘进先</span></li>
						</ul>
						<ul class="post-date1">
							<li><a href="single.html"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i></a></li>
						</ul>
						<ul class="post-date2">
							<li><a href="single.html"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="latest-posts-grid-right">
						<a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
						<h4><a href="single.html">Web前端开发</a></h4>
						<ul>	
							<li>1994-08-29 <i>|</i></li>
							<li><a href="single.html">中国-江苏-徐州</a></li>
						</ul>
						<p>“专注做好IT技能教育的精品课程，符合互联网发展潮流接地气儿的精品课程。我们免费，我们只教有用的，我们专心做教育。”</p>
						<div class="more">
							<a href="single.html" class="hvr-sweep-to-top">了解更多...</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 latest-posts-grid animated wow slideInLeft" data-wow-delay=".7s" style="padding-top:30px;">
					<div class="latest-posts-grid-left">
						<ul class="post-date">
							<li>22 <span style="font-size:16px;">刘仲宇</span></li>
						</ul>
						<ul class="post-date1">
							<li><a href="single.html"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i></a></li>
						</ul>
						<ul class="post-date2">
							<li><a href="single.html"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="latest-posts-grid-right">
						<a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
						<h4><a href="single.html">项目整体架构</a></h4>
						<ul>	
							<li>1994-08-29 <i>|</i></li>
							<li><a href="single.html">中国-江苏-徐州</a></li>
						</ul>
						<p>“专注做好IT技能教育的精品课程，符合互联网发展潮流接地气儿的精品课程。我们免费，我们只教有用的，我们专心做教育。”</p>
						<div class="more">
							<a href="single.html" class="hvr-sweep-to-top">了解更多...</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 latest-posts-grid animated wow slideInLeft" data-wow-delay=".7s" style="padding-top:30px;">
					<div class="latest-posts-grid-left">
						<ul class="post-date">
							<li>22 <span style="font-size:16px;">彭驰</span></li>
						</ul>
						<ul class="post-date1">
							<li><a href="single.html"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i></a></li>
						</ul>
						<ul class="post-date2">
							<li><a href="single.html"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="latest-posts-grid-right">
						<a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
						<h4><a href="single.html">网页设计与美工</a></h4>
						<ul>	
							<li>1994-08-29 <i>|</i></li>
							<li><a href="single.html">中国-江苏-徐州</a></li>
						</ul>
						<p>“专注做好IT技能教育的精品课程，符合互联网发展潮流接地气儿的精品课程。我们免费，我们只教有用的，我们专心做教育。”</p>
						<div class="more">
							<a href="single.html" class="hvr-sweep-to-top">了解更多...</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-md-4 latest-posts-grid animated wow slideInLeft" data-wow-delay=".7s" style="padding-top:30px;">
					<div class="latest-posts-grid-left">
						<ul class="post-date">
							<li>22 <span style="font-size:16px;">谭婷婷</span></li>
						</ul>
						<ul class="post-date1">
							<li><a href="single.html"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i></a></li>
						</ul>
						<ul class="post-date2">
							<li><a href="single.html"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<div class="latest-posts-grid-right">
						<a href="single.html"><img src="images/8.jpg" alt=" " class="img-responsive" /></a>
						<h4><a href="single.html">文档书写</a></h4>
						<ul>	
							<li>1994-08-29 <i>|</i></li>
							<li><a href="single.html">中国-江苏-徐州</a></li>
						</ul>
						<p>“专注做好IT技能教育的精品课程，符合互联网发展潮流接地气儿的精品课程。我们免费，我们只教有用的，我们专心做教育。”</p>
						<div class="more">
							<a href="single.html" class="hvr-sweep-to-top">了解更多...</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //latest-posts -->
<!-- latest-posts-bottom -->
	<div class="latest-posts-bottom">
		<div class="container">
			<div class="col-md-7 latest-posts-bottom-grid-left">
				<h3 class="animated wow slideInLeft" data-wow-delay=".5s">意见<span>反馈</span></h3>
				<h4 class="animated wow slideInUp" data-wow-delay=".5s">您的每一个意见都是我们最宝贵的财富！</h4>
				<div class="latest-posts-bottom-grid-left1">
					<form class="animated wow slideInUp" data-wow-delay=".8s">
						<input type="text" value="姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '姓名';}" required="">
						<input type="email" value="电子邮箱" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电子邮箱';}" required="">
						<input type="text" value="电话号码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '电话号码';}" required="">
					</form>
					<select id="country" onchange="change_country(this.value)" class="frm-field required sect">
						<option value="null">意见类型[请选择]</option>
						<option value="null">改善意见</option> 
						<option value="null">功能需求</option>					
						<option value="null">其他</option>								
					</select>
				</div>
				<div class="latest-posts-bottom-grid-left2">
					<form class="animated wow slideInUp" data-wow-delay=".8s">
						<textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '快来给我们提意见吧...';}" required="">快来给我们提意见吧...</textarea>
						<input type="submit" value="提交">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 latest-posts-bottom-grid-right">
				<ul>
					<li class="animated wow slideInRight" data-wow-delay=".5s"><a href="single.html">视频有声音无图像？<span>1.</span></a></li>
					<li class="animated wow slideInRight" data-wow-delay=".6s"><a href="single.html">无法播放或播放时发生异常跳转？<span>2.</span></a></li>
					<li class="animated wow slideInRight" data-wow-delay=".7s"><a href="single.html">其他常见问题<span>3.</span></a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //latest-posts-bottom -->
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