<%@page import="cn.hncu.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    User u = (User)session.getAttribute("user");
	if( u == null ){
		response.sendRedirect(request.getContextPath()+"/jsps/login.jsp");
		return;
	}
%>