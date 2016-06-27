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
<title>欢迎来到精品课程网站！</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); }
</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!--<link href='http://fonts.useso.com/css?family=Nixie+One' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>  -->
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>new WOW().init();</script>
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
		
       if (true) {
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
	});
</script>



<style>
	html,body,a,p,h1,h2,h3,h4,h5,ul,li,textarea,form,input,#country{font-family:'微软雅黑'}
	#logo a span{padding-top:10px;}
	.banner-info span{padding-top:15px;}
	.banner-info p{padding-top:10px;}
	#us span{padding-top:10px;}
	#last span{padding-top:15px;}
	#container_f span{padding-top:10px;}
	#pp{text-indent:2em;}
</style>
<!-- start-smoth-scrolling -->
</head>
<body >
<%
	String adb=(String)request.getAttribute("adb");
	System.out.println(adb);
	String adb1="ss";
%>
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
										<li class="menu__item menu__item--current"><a class="menu__link">课程</a></li> 
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
				<div class="banner1-info animated wow zoomIn" data-wow-delay=".5s">
					<h3>多年以后，圈子里一批技术牛说：我大学曾经在精品课程网站学习过，这就够了。</h3>
				</div>
			</div>
		</div>
	</div>
<!-- banner -->
<!-- about -->
	<div class="about">
		<div class="container">
			<h3 id="container_f" lass="animated wow zoomIn" data-wow-delay=".5s">实用操作系统教程 <span>视频锦集</span></h3>
			<div class="about-grids">
				<div class="col-xs-3 tab-grid-left animated wow slideInLeft" data-wow-delay=".5s"> <!-- required for floating -->
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#Tab1" data-toggle="tab"><%=chapters.get(0).getName() %></a></li>
						<li><a href="#Tab2" data-toggle="tab"><%=chapters.get(1).getName() %></a></li>
						<li><a href="#Tab3" data-toggle="tab"><%=chapters.get(2).getName() %></a></li>
						<li><a href="#Tab4" data-toggle="tab"><%=chapters.get(3).getName() %></a></li>
					</ul>
				</div>
				<div class="col-xs-9 tab-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<!-- Tab panes -->
					<div class="tab-content tab-content-sub">
						<div class="tab-pane active" id="Tab1">
							<div class="text">
								<div class="col-md-4 text-left">
									<img src="images/1.jpg" alt=" " class="img-responsive" />
								</div>
								<div class="col-md-8 text-right">
									<h4><a href="videotest.jsp"><%=chapters.get(0).getName() %></a></h4>
									<p>实验内容主要包括：1、模拟实现动态分区存储管理；2、模拟实现请求分页虚存页面替换算法；</p>
									<ul>
										<li>了解存储管理的基本目的和功能</li>
										<li>理解实存管理的原理和实现技术</li>
										<li>理解虚存管理的原理和实现技术</li>
										<li>通过编程模拟实现请求分页式虚存管理和替换算法</li>
									</ul>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="tab-pane" id="Tab2">
							<div class="text">
								<div class="col-md-8 text-right">
									<h4><%=chapters.get(1).getName() %></h4>
									<p>实验内容主要包括：1、统计进程时间；2、通过alarm()实现sleep()函数功能；3、基于单定时器实现任意数目的逻辑定时器；</p>
									<ul>
										<li>了解Linux时钟和定时器机制</li>
										<li>了解Linux中与时间相关的函数</li>
										<li>掌握如何使用Linux定时器</li>
									</ul>
								</div>
								<div class="col-md-4 text-left">
									<img src="images/15.jpg" alt=" " class="img-responsive" />
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="tab-pane" id="Tab3">
							<div class="text">
								<div class="col-md-4 text-left">
									<img src="images/16.jpg" alt=" " class="img-responsive" />
								</div>
								<div class="col-md-8 text-right">
									<h4><%=chapters.get(2).getName() %></h4>
									<p>实验内容主要包括：1、UDP通信；2、基于TCP的客户/服务器程序；</p>
									<ul>
										<li>加深对网络编程原理的理解</li>
										<li>深入了解客户/服务器网络编程的执行流程</li>
										<li>学会使用套接字建立客户/服务器程序</li>
									</ul>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //about -->
<!-- about-bottom1 -->
	<div class="about-bottom1">
		<div class="container">
			<div class="col-md-7 about-bottom1-left animated wow slideInLeft" data-wow-delay=".5s">
				<h3>实用操作系统教程</h3>
				<p id="pp">操作系统是计算机的核心和灵魂，是计算机系统必不可少的组成部分，也是计算机专业教学的重要内容。
				该课程概念众多、内容抽象、灵活性与综合性强，不但需要讲授操作系统的概念和原理，还需要加强操作系
				统实验，上机进行编程实践，这样才能让学生更好地掌握操作系统的精髓，真正做到深刻理解和融会贯通。</p>
				<div class="about-bottom1-left-grids">
					<div class="about-bottom1-left-grid">
						<div class="about-bottom1-right-grid">
							<img src="images/6.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="about-bottom1-left-grid">
						<div class="about-bottom1-right-grid">
							<img src="images/7.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="about-bottom1-left-grid">
						<div class="about-bottom1-right-grid">
							<img src="images/8.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-5 about-bottom1-right">
				<h3>课程视频反馈</h3>
				<div class='bar_group'>
					<div class='bar_group__bar thin' label='页面替换算法' show_values='true' tooltip='true' value='600'></div>
					<div class='bar_group__bar thin' label='时钟与定时器' show_values='true' tooltip='true' value='598'></div>
					<div class='bar_group__bar thin' label='网络通信编程' show_values='true' tooltip='true' value='642'></div>
				</div>
				<a href=""><lable>查看其他评价</lable></a>
				<script src="js/bars.js"></script>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- about-bottom1 -->
<!-- about-bottom -->
	<div class="about-bottom">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s"><span>相关讲师</span></h3>
			<div class="about-bottom-grids">
				<div class="col-md-3 about-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">
					<div class="about-bottom-grid1">
						<img src="images/2.png" alt=" " class="img-responsive" />
						<h4>戴瑾</h4>
						<p>南京大学金陵学院信工院副教授 前华中科技大学常务副校长</p>
						<ul class="social">
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
						</ul>
 					</div>
				</div>
				<div class="col-md-3 about-bottom-grid animated wow slideInLeft" data-wow-delay=".6s">
					<div class="about-bottom-grid1">
						<img src="images/3.png" alt=" " class="img-responsive" />
						<h4>叶长青</h4>
						<p>南京大学金陵学院信工院副教授 前华中科技大学常务副校长</p>
						<ul class="social">
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
						</ul>
 					</div>
				</div>
				<div class="col-md-3 about-bottom-grid animated wow slideInLeft" data-wow-delay=".7s">
					<div class="about-bottom-grid1">
						<img src="images/4.png" alt=" " class="img-responsive" />
						<h4>叶保留</h4>
						<p>南京大学金陵学院信工院副教授 前华中科技大学常务副校长</p>
						<ul class="social">
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
						</ul>
 					</div>
				</div>
				<div class="col-md-3 about-bottom-grid animated wow slideInLeft" data-wow-delay=".8s">
					<div class="about-bottom-grid1">
						<img src="images/5.png" alt=" " class="img-responsive" />
						<h4>任凯</h4>
						<p>南京大学金陵学院信工院副教授 前华中科技大学常务副校长</p>
						<ul class="social">
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
						</ul>
 					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //about-bottom -->
<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">导师经验<span>Experience</span></h3>
			<div class="testimonials-grids">
				<div class="col-md-6 testimonials-grid animated wow slideInLeft" data-wow-delay=".5s">
					<div class="testimonials-grid1">
						<img src="images/3.png" alt=" " class="img-responsive" />
						<p>叶长青</p>
					</div>
					<div class="testimonials-grid2">
						<p>“&nbsp;学生应该通过实验加深理解和更好地掌握操作系统的基本概念、原理技术和方法，巩固所学知识，
						激发实验兴趣，掌握实验要领，培养对操作系统课程所学知识融会贯通和综合运用的能力。”</p>
					</div>
				</div>
				<div class="col-md-6 testimonials-grid animated wow slideInRight" data-wow-delay=".5s">
					<div class="testimonials-grid1">
						<img src="images/4.png" alt=" " class="img-responsive" />
						<p>叶保留</p>
					</div>
					<div class="testimonials-grid2">
						<p>“&nbsp;学生应该通过实验提高自己剖析和设计操作系统的能力，加强分析问题、解决问题能力的培养，加强
						创新意识与探索精神、科学作风与综合素质的培养，深入了解和熟练掌握一种操作系统的组成。”</p>
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