<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>jsp技术演示</title>
	</head>
	<body>
		<h1>jsp语法、技术演示</h1>
		<a href="jsps/demo1.jsp">hello Jsp</a><br/><br/>
		
		<a href="jsps/demo2.jsp">学习指令page</a><br/><br/>
		
		<a href="jsps/demo3.jsp">区别指令@include和jsp:included</a><br/><br/>
		
		<a href="jsps/login.jsp">采用指令@include制作安全登录认证，在每个需要进行安全认证的jsp中加入 &lt;%@ include file="safety.jsp" %>  </a><br/><br/>
	</body>
</html>