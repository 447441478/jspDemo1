<%@page session="false" import="java.io.PrintWriter"%>
<%@ page  isErrorPage="true" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>哎呀出错了</title>
	</head>
	<body>
		<!-- 
			可以发现只有当 page指令中 isErrorPage="true"时，
			在当前jsp中的java脚本片段中才可以使用 exception 内置对象。
			同理 session="false" 时，在当前jsp中的就不可以使用 session 内置对象。
		  -->
		哎呀出错了！<br/>
		<%
			out.println( exception );
		%>
	</body>
</html>