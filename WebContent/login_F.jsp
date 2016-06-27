<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>简易留言板</title>
</head>
<body bgcolor="#E3E3E3">

	<!-- 用户在单击登录按钮后，页面提交给validate.jsp作进一步处理 -->
	<form action="validate.jsp" method="post"> 
	<table>
		<caption>用户登录</caption>
		<tr>
			<td>用户名：</td>
			<td>
				<input type="text" name="username" size="20" />
			</td>
		</tr>
		<tr>
			<td>密码：</td>
			<td>
				<input type="password" name="password" size="21" />
			</td>
		</tr>
	</table>
	<input type="submit" value="登陆" />
	<input type="reset" value="重置" />   
	</form> 
	如果没有注册单击<a href="">这里</a>注册!                                                                                                                                                                                                                                                                                      
</body>
</html>