<%@page import="cn.hncu.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>安全认证</title>
	</head>
	<body>
		<h1>安全认证</h1>
		用户名和密码一致才可以登录<br/>
		<form action="" method="post">
			Name:<input type="text" name="name"/><br/>
			Pwd:<input type="password" name="pwd" /><br/>
			<input type="submit" value="登录" /><br/>
		</form>
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String pwd = request.getParameter("pwd");
			//只有用户名和密码一致就可以登录成功
			if( name != null && name.equals(pwd)){
				User user = new User();
				session.setAttribute("user", user);
				response.sendRedirect(request.getContextPath());
			}
		%>
	</body>
</html>