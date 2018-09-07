<%@ page errorPage="errorDemo.jsp" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="safety.jsp" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>区别指令@include和jsp:included</title>
	</head>
	<body>
		
		<%@include file="head.jsp" %>
		<hr/>
		观察页面显示好像没什么区别，来看底层：
		通过demo3_jsp类可以看出：@include 是 把另一个jsp页面的内容拷贝过来，只生成一个java文件；<br/>
		而 jsp:include 则是分别生成Java文件共两个，其原理类似 HttpServlet中的请求包涵request.getRequestDispatcher(rul).include(request, response);<br/>
		因此可以区别出来:<br/>
 &nbsp; &nbsp; &nbsp;@include 另称静态包涵，当前jsp和被包涵的jsp所有变量共享 <br/>
 &nbsp; &nbsp; &nbsp;jsp:include 另称动态包涵，当前jsp和被包涵的jsp只共享  request,response和out 3个内置对象。
		<hr />
		<h1>内容</h1>
		<h1>内容</h1>
		<h1>内容</h1>
		<h1>内容</h1>
		<jsp:include page="foot.jsp"></jsp:include>
	</body>
</html>