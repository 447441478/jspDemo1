<%@page import="cn.hncu.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="safety.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>经典的jsp页面</title>
	</head>
	<body>
		jsp: Java Server Page,可以把java代码片段嵌入到页面中。<br/>
		在服务器根目录下的work目录下一直找，
		可以找到work\***\jspDemo\org\apache\jsp\jsps目录下的demo1_jsp.java文件。<br/>
		观察该文件可以发现，demo1_jsp类是继承org.apache.jasper.runtime.HttpJspBase, 
		而HttpJspBase是继承HttpServlet的，所以追根揭底jsp还是servlet。<br/>
		既然它是servlet那么它一定有service方法，继续在demo1_jsp.java中找，并没有找到service方法，
		但是可以发现有一个 _jspService 方法，参数：javax.servlet.http.HttpServletRequest和javax.servlet.http.HttpServletResponse。<br>
		这不跟HttpServlet中的doGet/doPost方法一样么，底层还是进行Socket。接着往下看，可以发现原来jsp的9个内置对象其实就是_jspService方法中的变量名。<br/>
		而jsp中的所有内容其实都是_jspService方法中的语句。但是有一个例外：<%! %>标签中的语句是与_jspService方法并级的，也就是类成员变量/方法。<br/>
		<span style="color:#f00">jsp就是HttpServlet的升级版,只是简化了前端页面和java代码混合起来时书写方便。</span>
		<hr/>
		<br/>
		<%
			int sum = 0;
			for( int i = 1; i <=100; i++ ){
				sum += i;
			}
		%>
		1+2+...+99+100 = <%=sum %>
		
		<hr />
		<form action="" method="post">
			姓名：<input type="text" name="name" />
			年龄：<input type="text" name="age" />
			<input type="submit" value="提交" />
		</form>
		<%
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			String strAge = request.getParameter("age");
			User user = new User();
			user.setName(name);
			int age = 0;
			try {
				age = Integer.valueOf( strAge );
			} catch( Exception e) {
				//System.out.println(e);
			}
			user.setAge( age );
			if( name != null ){
				out.println(user);
			}
		%>
		<hr />
		<br/>
		<%
			for( int i = 1; i < 9; i++ ){
		%>	
				<img src="<%=request.getContextPath()%>/imgs/<%=i%>.jpg">
		<%	
			}
		%>
		
	</body>
</html>