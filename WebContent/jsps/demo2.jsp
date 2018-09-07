<%@ page errorPage="errorDemo.jsp" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="safety.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>学习指令page</title>
	</head>
	<body>
		page指令可以设置是否自动刷缓存、设置缓存大小、指定当前页面出错是转发到哪个errorPage,指定当前页面是否时errorPage,是否禁用session内置对象,导入哪些包等等。<br/>
		<br/>
		<hr/>
		<br/>
		演示一下 errorPage属性
		<%-- jsp中的注释
		<% int i = 1/0; //会出现除数不能为0的异常 %>
		--%>
		<br/>	
		<hr/>
		<br/>
		<%--
			<%= %> 使用细节：
			 1. %和= 必须要连在一起，中间不能有空格
			 2. 使用 <%= %> 时必须要有输出，否则出错，如下输出
		 --%>
		<%=1 %>	
		<br/>
		<hr/>
		<br/>
		9个JSP隐藏对象(一般常用的是7个，page和exception这两个不常用)，在java脚本中可以直接使用
	</body>
</html>