 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/supersized.css">
<link rel="stylesheet" href="assets/css/style.css">
<title>欢迎来到精品课程网站！</title>

<script type="text/javascript">
	function a(){
            jQuery.ajax({
                type: "get",
                url: "/ExcellentCourse/UsersServlet",
                data: {
                	'method': "login",
                	'uid':jQuery('#uid').val(),
                	'psd':jQuery('#psd').val(),

                },
                async: false,
                success: function(data) {
                	if(data == "true"){
                		window.location.href="ChapterServlet?method=getall";
                	}
                	else{
                		alert("用户名或密码错误");
                		window.location.href="login.jsp";
                	}
                }
            });
       }
</script>
</head>
<body>
	<div class="page-container">
		<h1>登录(Login)</h1>
        	<input id="uid" type="text" name="uid" class="username" placeholder="请输入您的用户名！">
            <input id="psd" type="password" name="psd" class="password" placeholder="请输入您的用户密码！">
            <!--<input type="Captcha" class="Captcha" name="Captcha" placeholder="请输入验证码！">-->
            <button type="submit" class="submit_button" onclick="a()">登录</button>
            <div class="error"><span>+</span></div>
        <div class="connect">
        	<p>快捷</p>
            <p>
            	<a class="facebook" href=""></a>
                <a class="twitter" href=""></a>
            </p>
        </div>
    </div>
	<!-- Javascript -->
	<script src="assets/js/jquery-1.8.2.min.js" ></script>
	<script src="assets/js/supersized.3.2.7.min.js" ></script>
	<script src="assets/js/supersized-init.js" ></script>
	<script src="assets/js/scripts.js" ></script>
</body>
</html>